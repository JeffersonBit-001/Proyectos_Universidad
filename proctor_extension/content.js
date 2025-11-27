console.log("--- CONTENT.JS: FUSIÓN FINAL (ESCRITURA OK + APPS DINÁMICAS) ---");

// Estado
let checks = { 
    agent: false, 
    browser: false, 
    appsClean: false 
};

// Elementos DOM
let progressBar = document.getElementById('proctor-progress-bar');
let statusMessage = document.getElementById('proctor-status-message');
let startButton = document.getElementById('start-exam-button');
let checkAgent = document.getElementById('check-agent');
let checkBrowser = document.getElementById('check-browser');
let appsContainer = document.getElementById('dynamic-apps-container');

// Identificación Examen
let currentPage = null;
let currentExamenId = null;
const welcomeMatch = window.location.pathname.match(/exam\/(\d+)\/welcome\//);
const examMatch = window.location.pathname.match(/exam\/(\d+)\/start\//);

if (welcomeMatch) {
    currentPage = 'welcome';
    currentExamenId = welcomeMatch[1]; 
} else if (examMatch) {
    currentPage = 'exam';
    currentExamenId = examMatch[1]; 
}
let isExamActive = (currentPage === 'exam');

chrome.runtime.sendMessage({ type: 'PAGE_LOADED', page: currentPage, examen_id: currentExamenId });

// --- LÓGICA BIENVENIDA ---
if (currentPage === 'welcome') {
    // Limpieza de memoria para permitir re-intentos
    chrome.storage.local.remove(['plagioFlag', 'isFinishingExam']);
    
    // Limpieza de timer para que empiece de 0 si es un nuevo intento
    if (currentExamenId) {
        localStorage.removeItem('exam_end_time_' + currentExamenId);
    }

    setTimeout(() => chrome.runtime.sendMessage({ type: 'CHECK_ENVIRONMENT' }), 500);
    setInterval(() => {
        chrome.runtime.sendMessage({ type: 'CHECK_ENVIRONMENT' });
    }, 2000);

    if (startButton) {
        startButton.addEventListener('click', onStartButtonClick);
    }
}

// --- LÓGICA EXAMEN ---
if (currentPage === 'exam') {
    const plagioCheckInterval = setInterval(checkPlagioFlag, 1000);

    function blockEvent(e) {
        e.preventDefault();
        e.stopPropagation();
        return false;
    }

    window.addEventListener('contextmenu', blockEvent);
    window.addEventListener('copy', blockEvent);
    window.addEventListener('paste', blockEvent);
    window.addEventListener('cut', blockEvent);

    // --- ¡AQUÍ ESTÁ EL ARREGLO DE LA TECLA 'F'! ---
    window.addEventListener('keydown', function(e) {
        // Solo bloquea F1 hasta F12. Deja pasar la letra "F" normal.
        if (/^F([1-9]|1[0-2])$/.test(e.key)) {
            console.warn(`Tecla F bloqueada: ${e.key}`);
            blockEvent(e);
        }
    });
    // ----------------------------------------------

    window.addEventListener('fullscreenchange', async function() {
        if (document.fullscreenElement) return; 
        try {
            const result = await chrome.storage.local.get('isFinishingExam');
            if (result.isFinishingExam === true) {
                chrome.storage.local.remove('isFinishingExam');
                return; 
            }
        } catch (e) { console.error(e); }
        console.warn("Plagio: Salida fullscreen");
        chrome.runtime.sendMessage({ type: 'PLAGIO_DETECTED', reason: 'salida de pantalla completa' });
    });

    // Heartbeat
    const heartbeatInterval = setInterval(() => {
        if (!isExamActive) { clearInterval(heartbeatInterval); return; }
        try {
            chrome.runtime.sendMessage({ type: 'PING' }, (response) => {
                if (chrome.runtime.lastError) {
                    handlePlagioInPage("Extensión desactivada");
                    clearInterval(heartbeatInterval);
                }
            });
        } catch (e) {}
    }, 3000);
}

// --- LISTENER MENSAJES ---
chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
    switch (message.type) {
        case 'AGENT_STATUS':
            checks.agent = message.connected;
            updateCheckUI(checkAgent, checks.agent, message.connected ? "Conectado" : "Desconectado");
            break;
        case 'BROWSER_STATUS':
            checks.browser = message.isClean;
            updateCheckUI(checkBrowser, checks.browser, message.isClean ? "Limpio" : message.message);
            break;
        case 'APPS_STATUS':
            const openApps = message.openApps || [];
            const allApps = message.allApps || [];
            
            checks.appsClean = (openApps.length === 0);
            renderAppsGrid(allApps, openApps); // Renderizado dinámico

            if (!checks.appsClean && statusMessage) {
                statusMessage.textContent = "Detectado: " + openApps.join(", ");
                statusMessage.style.color = "red";
            } else if (statusMessage && checks.agent && checks.browser) {
                statusMessage.textContent = "";
            }
            break;
        case 'PLAGIO_ALERT':
            isExamActive = false;
            handlePlagioInPage(message.reason);
            break;
    }
    if (currentPage === 'welcome') updateWelcomeUI();
});

// --- RENDERIZADO DINÁMICO DE APPS ---
function renderAppsGrid(allApps, openApps) {
    if (!appsContainer) return;
    appsContainer.innerHTML = '';
    if (allApps.length === 0) {
        appsContainer.innerHTML = '<div class="col-12 text-muted small">Conectando...</div>';
        return;
    }
    allApps.forEach(appName => {
        const isOpen = openApps.some(open => open.toLowerCase().includes(appName.toLowerCase()));
        const colDiv = document.createElement('div');
        colDiv.className = 'col-6 col-md-4 col-lg-3 mb-2';
        const badgeClass = isOpen ? 'badge bg-danger w-100 py-2' : 'badge bg-success opacity-75 w-100 py-2';
        const icon = isOpen ? '❌' : '✅';
        colDiv.innerHTML = `
            <div class="p-1"><span class="${badgeClass}" style="font-size:0.9em;">
            <div class="text-truncate">${appName}</div>
            <div class="small">${icon} ${isOpen ? 'ABIERTO' : 'Cerrado'}</div></span></div>`;
        appsContainer.appendChild(colDiv);
    });
}

// --- UI HELPERS ---
function updateCheckUI(element, success, text) {
    if (!element) return;
    element.textContent = success ? "OK" : text;
    element.className = success ? 'badge bg-success rounded-pill p-2 w-75' : 'badge bg-danger rounded-pill p-2 w-75 text-wrap';
}

function updateWelcomeUI() {
    if (!progressBar || !startButton) return;
    let passed = 0;
    if (checks.agent) passed++;
    if (checks.browser) passed++;
    if (checks.appsClean) passed++;
    let progress = Math.round((passed/3)*100);
    
    progressBar.style.width = `${progress}%`;
    progressBar.textContent = `${progress}%`;
    
    if (progress < 100) {
        progressBar.className = "progress-bar bg-warning";
        // Botón de pánico (Cerrar todo)
        if (checks.agent && (!checks.browser || !checks.appsClean)) {
            startButton.disabled = false;
            startButton.textContent = "Corregir Todo y Comenzar";
            startButton.className = "btn btn-primary btn-lg shadow";
        } else {
            startButton.disabled = true;
            startButton.textContent = "Verificando...";
            startButton.className = "btn btn-secondary btn-lg";
        }
    } else {
        progressBar.className = "progress-bar bg-success";
        statusMessage.textContent = "Todo listo.";
        statusMessage.style.color = "green";
        startButton.disabled = false;
        startButton.textContent = "Comenzar Examen";
        startButton.className = "btn btn-success btn-lg shadow";
    }
}

function onStartButtonClick() {
    if (!startButton) return;
    if (checks.agent && checks.browser && checks.appsClean) {
        const url = startButton.getAttribute('data-url');
        if (url) window.location.href = url;
    } else {
        statusMessage.textContent = "Cerrando todo...";
        chrome.runtime.sendMessage({ type: 'CLOSE_ALL' });
        startButton.disabled = true;
        setTimeout(() => { startButton.disabled = false; }, 2000);
    }
}

function handlePlagioInPage(reason) {
    if (document.fullscreenElement) document.exitFullscreen();
    document.body.innerHTML = `<div style="display:flex;flex-direction:column;justify-content:center;align-items:center;height:100vh;background:#f8d7da;color:#721c24;text-align:center;"><h1>Examen Cancelado</h1><p>Motivo: ${reason}</p></div>`;
    setTimeout(() => window.location.href = 'http://127.0.0.1:8000/exam/dashboard/', 4000);
}

function checkPlagioFlag() {
    if (!currentExamenId) return;
    chrome.storage.local.get('plagioFlag', (res) => {
        if (res.plagioFlag && res.plagioFlag.examenId == currentExamenId) {
            handlePlagioInPage(res.plagioFlag.reason);
            chrome.storage.local.remove('plagioFlag');
        }
    });
}

window.addEventListener("message", async (e) => {
    if (e.data && e.data.type === 'FROM_PAGE_EXAM_FINISHED') {
        await chrome.storage.local.set({ isFinishingExam: true });
        chrome.runtime.sendMessage({ type: 'EXAM_FINISHED' });
    }
});