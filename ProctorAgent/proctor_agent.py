import sys
import json
import struct
import psutil
import threading
import time
import logging

# Intentar importar pynput
try:
    from pynput import keyboard
except ImportError:
    logging.error("ERROR: La biblioteca 'pynput' no está instalada. Ejecuta: pip install pynput")
    sys.exit(1)

logging.basicConfig(filename='proctor_agent.log', level=logging.DEBUG,
                    format='%(asctime)s - %(levelname)s - %(message)s')

# --- LISTA MAESTRA DE APLICACIONES (FUSIÓN) ---
# Aquí están todas las apps que querías bloquear
BLOCK_LIST = [
    {'process': 'Discord.exe', 'name': 'Discord'},
    {'process': 'Zoom.exe', 'name': 'Zoom'},
    {'process': 'Skype.exe', 'name': 'Skype'},
    {'process': 'Teams.exe', 'name': 'Microsoft Teams'},
    {'process': 'WhatsApp.exe', 'name': 'WhatsApp'},
    {'process': 'Telegram.exe', 'name': 'Telegram'},
    {'process': 'msedge.exe', 'name': 'Microsoft Edge'},
    {'process': 'firefox.exe', 'name': 'Mozilla Firefox'},
    {'process': 'opera.exe', 'name': 'Opera'},
    {'process': 'brave.exe', 'name': 'Brave Browser'},
    {'process': 'Calculator.exe', 'name': 'Calculadora'},
    {'process': 'SnippingTool.exe', 'name': 'Recortes'},
    {'process': 'Notepad.exe', 'name': 'Bloc de Notas'},
    {'process': 'Spotify.exe', 'name': 'Spotify'},
    {'process': 'ChatGPT.exe', 'name': 'App ChatGPT'},
]

# --- Variables Globales ---
monitoring_thread = None
stop_monitoring_event = threading.Event()
key_listener = None
current_keys = set()

# Teclas Prohibidas (F1-F12, PrintScreen, Win)
forbidden_keys = {
    keyboard.Key.print_screen, keyboard.Key.cmd, keyboard.Key.cmd_r,
    keyboard.Key.f1, keyboard.Key.f2, keyboard.Key.f3, keyboard.Key.f4,
    keyboard.Key.f5, keyboard.Key.f6, keyboard.Key.f7, keyboard.Key.f8,
    keyboard.Key.f9, keyboard.Key.f10, keyboard.Key.f11, keyboard.Key.f12,
}

# Combinaciones Prohibidas
forbidden_combos = {
    frozenset([keyboard.Key.alt_l, keyboard.Key.tab]),
    frozenset([keyboard.Key.alt_r, keyboard.Key.tab]),
    frozenset([keyboard.Key.ctrl_l, keyboard.Key.alt_l, keyboard.Key.delete]),
    frozenset([keyboard.Key.ctrl_r, keyboard.Key.alt_r, keyboard.Key.delete]),
    frozenset([keyboard.Key.ctrl_l, keyboard.Key.esc]),
    frozenset([keyboard.Key.ctrl_r, keyboard.Key.esc]),
    frozenset([keyboard.Key.alt_l, keyboard.Key.esc]),
    frozenset([keyboard.Key.alt_r, keyboard.Key.esc]),
}

# --- Comunicación Nativa ---
def get_message():
    try:
        raw_length = sys.stdin.buffer.read(4)
        if not raw_length: sys.exit(0)
        message_length = struct.unpack('@I', raw_length)[0]
        message = sys.stdin.buffer.read(message_length).decode('utf-8')
        return json.loads(message)
    except Exception as e:
        logging.error(f"Error lectura: {e}")
        return None

def send_message(message_content):
    try:
        encoded_content = json.dumps(message_content).encode('utf-8')
        encoded_length = struct.pack('@I', len(encoded_content))
        sys.stdout.buffer.write(encoded_length)
        sys.stdout.buffer.write(encoded_content)
        sys.stdout.buffer.flush()
    except Exception as e:
        logging.error(f"Error envio: {e}")

# --- Detección de Apps (Lógica Nueva) ---
def get_open_forbidden_apps():
    """Retorna lista de nombres de apps prohibidas abiertas."""
    detected = []
    try:
        for proc in psutil.process_iter(['name']):
            try:
                p_name = proc.info['name'].lower()
                for item in BLOCK_LIST:
                    if item['process'].lower() == p_name:
                        if item['name'] not in detected:
                            detected.append(item['name'])
            except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
                pass
    except Exception as e:
        logging.error(f"Error chequeando procesos: {e}")
    return detected

def close_apps():
    """Cierra las apps de la lista negra."""
    try:
        for proc in psutil.process_iter(['name']):
            try:
                p_name = proc.info['name'].lower()
                for item in BLOCK_LIST:
                    if item['process'].lower() == p_name:
                        logging.info(f"Cerrando: {p_name}")
                        proc.terminate()
            except (psutil.NoSuchProcess, psutil.AccessDenied):
                pass
    except Exception as e:
        logging.error(f"Error cerrando apps: {e}")

# --- Teclado (Corregido para permitir escritura) ---
def on_key_press(key):
    global key_listener
    # Si es tecla prohibida, reportamos
    if key in forbidden_keys:
        send_message({"type": "PLAGIO_DETECTED", "app": f"Tecla prohibida ({str(key)})"})
        # No detenemos el listener para seguir vigilando, pero avisamos
        return True 

    current_keys.add(key)
    for combo in forbidden_combos:
        if combo.issubset(current_keys):
            send_message({"type": "PLAGIO_DETECTED", "app": "Combinación prohibida"})
            return True
    return True

def on_key_release(key):
    if key in current_keys:
        current_keys.remove(key)

def start_key_listener():
    global key_listener
    # IMPORTANTE: suppress=False para que el alumno pueda escribir
    key_listener = keyboard.Listener(on_press=on_key_press, on_release=on_key_release, suppress=False)
    key_listener.start()

# --- Hilo de Monitoreo ---
def monitor_apps_thread():
    global key_listener
    start_key_listener()
    
    while not stop_monitoring_event.is_set():
        open_apps = get_open_forbidden_apps()
        if open_apps:
            first_app = open_apps[0]
            logging.warning(f"PLAGIO DETECTADO: {first_app}")
            send_message({"type": "PLAGIO_DETECTED", "app": first_app})
            # No hacemos break para seguir reportando si no cierra
            time.sleep(2) 
        time.sleep(3)
            
    if key_listener and key_listener.is_alive():
        key_listener.stop()

# --- Bucle Principal ---
def main_loop():
    global monitoring_thread
    while True:
        msg = get_message()
        if not msg: continue
        cmd = msg.get('command')

        # Enviamos siempre la lista maestra para que el frontend dibuje los botones
        monitored_list = [item['name'] for item in BLOCK_LIST]

        if cmd == 'CHECK_APPS':
            detected = get_open_forbidden_apps()
            send_message({
                "type": "APPS_STATUS", 
                "openApps": detected, 
                "allApps": monitored_list 
            })
            
        elif cmd == 'CLOSE_APPS':
            close_apps()
            time.sleep(1)
            detected = get_open_forbidden_apps()
            send_message({
                "type": "APPS_STATUS", 
                "openApps": detected, 
                "allApps": monitored_list
            })
            
        elif cmd == 'START_MONITORING':
            if monitoring_thread is None or not monitoring_thread.is_alive():
                stop_monitoring_event.clear()
                monitoring_thread = threading.Thread(target=monitor_apps_thread, daemon=True)
                monitoring_thread.start()
                
        elif cmd == 'STOP_MONITORING':
            stop_monitoring_event.set()

if __name__ == "__main__":
    try:
        main_loop()
    except:
        pass