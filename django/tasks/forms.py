from django.forms import ModelForm, Select
from .models import Task, Cursos, Examen, PreguntasExamen, AlternativasExamen,Salon, Cursos
from django import forms
from django.forms import ModelForm, RadioSelect, NumberInput


class TaskForm(ModelForm):
    class Meta:
        model = Task
        fields = ['title', 'description', 'important']

# --- ¡AÑADE TODO LO QUE SIGUE! ---

class CursoForm(ModelForm):
    class Meta:
        model = Cursos
        fields = ['nombre_curso']
        labels = {
            'nombre_curso': 'Nombre del Curso',
        }

class ExamenForm(ModelForm):
    class Meta:
        model = Examen
        # Usamos SOLO los campos nuevos
        fields = ['titulo', 'cantidad_preguntas', 'is_visible', 'modo_tiempo', 'tiempo_base_minutos']
        
        labels = {
            'modo_tiempo': '¿Cómo quieres gestionar el tiempo?',
            'tiempo_base_minutos': 'Tiempo en Minutos',
        }
        widgets = {
            # RadioSelect muestra las opciones como puntitos para marcar (Check Box logic)
            'modo_tiempo': RadioSelect(attrs={'class': 'list-unstyled mb-3'}), 
            'tiempo_base_minutos': NumberInput(attrs={'class': 'form-control', 'min': '0', 'placeholder': 'Ej: 60'}),
        }

        

class PreguntaForm(ModelForm):
    class Meta:
        model = PreguntasExamen
        fields = ['texto_pregunta', 'tipo_pregunta', 'puntaje_maximo']
        
        labels = {
            'texto_pregunta': 'Enunciado',
            'tipo_pregunta': 'Tipo de Pregunta',
            'puntaje_maximo': 'Puntaje (Peso)',
        }
        widgets = {
            'texto_pregunta': forms.Textarea(attrs={'rows': 2, 'class': 'form-control'}),
            'tipo_pregunta': forms.Select(attrs={'class': 'form-select'}),
            'puntaje_maximo': forms.NumberInput(attrs={'class': 'form-control', 'step': '0.5'}),
        }

class AlternativaForm(ModelForm):
    class Meta:
        model = AlternativasExamen
        fields = ['texto_alternativa', 'valor']
        labels = {
            'texto_alternativa': 'Texto de la Alternativa',
            'valor': 'Respuesta Correcta',
        }
        widgets = {
            # Esto convierte el 'valor' en un menú desplegable (Correcta/Incorrecta)
            'valor': Select(choices=[('C', 'Correcta'), ('I', 'Incorrecta')]),
        }





class SalonForm(forms.ModelForm):
    class Meta:
        model = Salon
        fields = ['nombre_salon', 'id_curso']
        widgets = {
            'nombre_salon': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Grupo A - Mañana'}),
            'id_curso': forms.Select(attrs={'class': 'form-select'}),
        }
        labels = {
            'nombre_salon': 'Nombre del Salón',
            'id_curso': 'Curso Asociado',
        }

    def __init__(self, user, *args, **kwargs):
        super(SalonForm, self).__init__(*args, **kwargs)
        # --- FILTRO DE SEGURIDAD ---
        # El select de cursos solo mostrará los cursos creados por ESTE profesor
        self.fields['id_curso'].queryset = Cursos.objects.filter(id_profesor=user)



