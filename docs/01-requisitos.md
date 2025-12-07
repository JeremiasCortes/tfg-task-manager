# Requisitos del Sistema - Task Manager Pro

## Información del Proyecto
- **Proyecto:** Task Manager Pro
- **Autor:** Jeremías Cortés Carrasco
- **Institución:** Sant Josep Obrer
- **Fecha:** Diciembre 2025 - Marzo 2026
- **Versión:** 1.0

---

## Requisitos Funcionales

### RF-01: Gestión de Usuarios
**Prioridad:** Alta (Must Have)  
**Descripción:** El sistema debe permitir registro y autenticación de usuarios

**Criterios de aceptación:**
- Usuario puede registrarse con email y contraseña
- Usuario puede iniciar sesión
- Usuario puede cerrar sesión
- Contraseña cumple requisitos mínimos (8+ caracteres, 1 mayúscula, 1 número)
- Sesión persiste hasta que usuario cierre sesión

---

### RF-02: Roles de Usuario
**Prioridad:** Alta (Must Have)  
**Descripción:** Diferenciar entre Administradores y Trabajadores con permisos específicos

**Criterios de aceptación:**
- Primer usuario registrado es Administrador automáticamente
- Admin puede crear otros usuarios
- Admin puede asignar rol (Admin/Worker) a usuarios
- Worker solo ve funcionalidades permitidas para su rol
- Validación de permisos en cada acción

---

### RF-03: Gestión de Departamentos
**Prioridad:** Alta (Must Have)  
**Descripción:** Admin puede crear y gestionar departamentos organizacionales

**Criterios de aceptación:**
- Admin puede crear departamento con nombre y descripción
- Admin puede asignar usuarios a departamentos
- Un usuario puede pertenecer a múltiples departamentos
- Admin puede editar información de departamento
- Admin puede eliminar departamento (solo si no tiene tareas activas)

---

### RF-04: Crear Tareas (Admin)
**Prioridad:** Alta (Must Have)  
**Descripción:** Administrador crea tareas con procedimientos detallados

**Criterios de aceptación:**
- Tarea tiene título obligatorio (máx 100 caracteres)
- Tarea tiene descripción opcional (máx 500 caracteres)
- Tarea contiene lista de procedimientos ordenados (mín 1, máx 50)
- Cada procedimiento tiene título y descripción
- Procedimientos tienen orden secuencial (1, 2, 3...)
- Tarea se asigna obligatoriamente a un departamento
- Tarea puede asignarse a usuarios específicos (opcional)
- Estado inicial: "Pendiente"

---

### RF-05: Listar y Filtrar Tareas
**Prioridad:** Alta (Must Have)  
**Descripción:** Usuarios visualizan tareas según su rol y filtros

**Admin puede ver:**
- Todas las tareas del sistema
- Tareas por departamento
- Tareas por estado (Pendiente/En Progreso/Completada)
- Tareas por usuario asignado

**Worker puede ver:**
- Tareas asignadas directamente a él
- Tareas de sus departamentos sin asignar
- Filtrar por estado
- Buscar por nombre de tarea

**Criterios de aceptación:**
- Lista muestra: título, estado, departamento, asignado a
- Búsqueda en tiempo real por título
- Filtros aplicables simultáneamente
- Scroll infinito o paginación (20 tareas por página)

---

### RF-06: Auto-asignación de Tareas
**Prioridad:** Alta (Must Have)  
**Descripción:** Trabajador puede asignarse tareas disponibles de su departamento

**Criterios de aceptación:**
- Ver tareas sin asignar de sus departamentos
- Botón "Asignarme esta tarea" visible
- Al asignarse, tarea aparece en "Mis Tareas"
- Tarea cambia estado a "En Progreso" automáticamente
- Solo un worker puede auto-asignarse (no múltiples simultáneos)
- Confirmación antes de asignar

---

### RF-07: Completar Procedimientos
**Prioridad:** Alta (Must Have)  
**Descripción:** Trabajador marca procedimientos como completados secuencialmente

**Criterios de aceptación:**
- Ver lista de procedimientos de una tarea
- Checkbox para marcar completado
- Se registra quién completó (userId)
- Se registra cuándo se completó (timestamp)
- Procedimientos se completan en orden (1 → 2 → 3)
- No se puede marcar procedimiento N+1 sin completar N
- Tarea cambia a "Completada" cuando todos los procedimientos están hechos
- Worker puede des-marcar procedimiento si se equivocó

---

### RF-08: Documentar con Texto
**Prioridad:** Alta (Must Have)  
**Descripción:** Añadir notas de texto a cada procedimiento

**Criterios de aceptación:**
- Campo de texto libre por procedimiento (máx 1000 caracteres)
- Texto se guarda automáticamente (auto-save cada 3 segundos)
- Texto visible para Admin y otros Workers
- Indicador de "Guardando..." / "Guardado"
- Marcador de tiempo de última edición

---

### RF-09: Documentar con Fotos
**Prioridad:** Alta (Must Have)  
**Descripción:** Capturar y adjuntar fotos durante procedimientos

**Criterios de aceptación:**
- Botón para abrir cámara del dispositivo
- Capturar foto desde la app (no galería)
- Foto se comprime automáticamente (max 2MB)
- Foto se sube al servidor
- Foto se asocia al procedimiento específico
- Galería de fotos visible en procedimiento
- Máximo 10 fotos por procedimiento
- Mostrar thumbnail + vista completa al hacer clic
- Indicador de progreso de subida

---

### RF-10: Documentar con Audio (Transcripción IA)
**Prioridad:** Media (Should Have)  
**Descripción:** Grabar notas de voz que se transcriben automáticamente

**Criterios de aceptación:**
- Botón para iniciar/detener grabación
- Máximo 2 minutos de grabación continua
- Audio se comprime (formato AAC)
- Audio se sube al servidor
- Servidor transcribe audio con IA (OpenAI Whisper)
- Texto transcrito se muestra en documentación
- Indicador de progreso: Grabando → Subiendo → Transcribiendo → Listo
- Audio reproducible desde la app
- Máximo 5 audios por procedimiento

---

### RF-11: Sincronización Offline/Online
**Prioridad:** Alta (Must Have)  
**Descripción:** App funciona sin conexión y sincroniza al recuperarla

**Criterios de aceptación:**
- App funciona completamente offline
- Cambios se guardan en base de datos local (Realm)
- Indicador visual claro de estado de conexión
- Al recuperar conexión, sincronización automática
- Cola de cambios pendientes visible al usuario
- Conflictos se resuelven (last-write-wins)
- Notificación cuando sincronización completa
- No pérdida de datos locales

---

### RF-12: Notificaciones Push
**Prioridad:** Media (Should Have)  
**Descripción:** Recibir notificaciones de eventos importantes

**Criterios de aceptación:**
- Worker recibe notificación cuando se le asigna tarea
- Worker recibe notificación cuando admin añade comentario
- Admin recibe notificación cuando se completa tarea
- Notificaciones aparecen en bandeja del sistema
- Al hacer clic, navega a la tarea correspondiente
- Notificaciones pueden desactivarse en configuración
- Badge counter en icono de app (tareas pendientes)

---

### RF-13: Soporte Multidispositivo Android
**Prioridad:** Media (Should Have)  
**Descripción:** App funciona en smartphones, tablets y relojes

**Criterios de aceptación:**
- **Smartphone:** UI optimizada para pantallas 5"-7"
- **Tablet:** Layout de dos paneles (maestro-detalle)
- **Wear OS:** Ver lista tareas, marcar completado (funcionalidad básica)
- Rotación de pantalla soportada (portrait/landscape)
- Navegación accesible en todos los dispositivos

---

### RF-14: Exportar Reportes PDF
**Prioridad:** Baja (Could Have)  
**Descripción:** Admin exporta documentación de tarea en PDF

**Criterios de aceptación:**
- Botón "Exportar PDF" en tareas completadas
- PDF incluye: título tarea, procedimientos, documentación, fotos
- PDF descargable o compartible (WhatsApp, Email)
- Logo de la app en header del PDF
- Fecha de exportación en footer

---

### RF-15: Análisis de Imágenes con IA (Opcional)
**Prioridad:** Baja (Won't Have en MVP)  
**Descripción:** IA analiza fotos y sugiere mejoras o detecta problemas

**Criterios de aceptación:**
- Al subir foto, opción "Analizar con IA"
- GPT-4 Vision analiza la imagen
- Muestra sugerencias o detección de problemas
- Usuario puede aceptar/rechazar sugerencias
- Solo disponible online

---

### RF-16: Dashboard de Estadísticas (Admin)
**Prioridad:** Baja (Could Have)  
**Descripción:** Admin visualiza métricas del sistema

**Criterios de aceptación:**
- Tareas completadas hoy/semana/mes
- Tiempo promedio de completado
- Workers más activos
- Departamentos con más tareas
- Gráficos simples (barras, líneas)

---

## Requisitos No Funcionales

### RNF-01: Rendimiento
- Pantalla principal carga en < 2 segundos
- Scroll suave a 60 FPS en listas de 100+ elementos
- Sincronización en background no bloquea UI
- Compresión de imágenes eficiente (2MB → 500KB promedio)
- Caché de imágenes para evitar descargas repetidas

### RNF-02: Seguridad
- Contraseñas hasheadas con bcrypt (factor 12)
- Comunicación HTTPS obligatoria (TLS 1.3)
- JWT tokens con expiración (7 días)
- Refresh tokens (30 días)
- API keys NUNCA en código cliente (solo en backend)
- Validación de permisos en servidor (no solo cliente)
- Rate limiting en endpoints críticos (max 100 req/min por usuario)

### RNF-03: Usabilidad
- Interfaz intuitiva (usuario nuevo completa tarea en < 5 minutos)
- Material Design 3 guidelines
- Accesibilidad: contraste WCAG AA, tamaño texto mínimo 14sp
- Español como idioma principal
- Feedback visual inmediato en todas las acciones
- Mensajes de error claros y accionables

### RNF-04: Compatibilidad
- Android 13+ (API 33+) como mínimo
- Funciona en smartphones, tablets (7"+)
- Orientación portrait y landscape
- Arquitecturas: ARM64, ARMv7
- Espacio mínimo requerido: 50MB

### RNF-05: Disponibilidad
- Funciona offline sin degradación de UX
- Datos locales persisten entre reinicios
- Sincronización automática al detectar conexión
- Sin pérdida de datos en crashes (persistencia transaccional)

### RNF-06: Mantenibilidad
- Arquitectura Clean Architecture (Presentation → Domain → Data)
- Código modular y testeable
- Cobertura de tests unitarios > 60%
- Tests de integración para flujos críticos
- Documentación de código (KDoc)
- Commits descriptivos siguiendo Conventional Commits

### RNF-07: Escalabilidad
- Soporta 500 usuarios simultáneos (MVP)
- Base de datos optimizada con índices en campos clave
- Paginación en listas grandes
- Caché de datos frecuentes
- Compresión de payloads de red

### RNF-08: Observabilidad
- Firebase Crashlytics para crashes
- Firebase Analytics para eventos de usuario
- Logs estructurados (Timber en Android)
- Métricas de rendimiento (Firebase Performance)
- Monitoreo de backend (Spring Boot Actuator)

### RNF-09: Cumplimiento Legal
- GDPR compliance (si aplica)
- Política de privacidad accesible desde app
- Términos de servicio
- Consentimiento explícito para notificaciones
- Derecho al olvido (eliminar cuenta)

---

## Restricciones Técnicas

### Hardware Mínimo
- RAM: 2GB
- Almacenamiento: 100MB libres
- Cámara: 5MP
- Micrófono funcional

### Software
- Android OS: 13+ (API 33+)
- Google Play Services instalado
- Conexión a internet (al menos intermitente)

### Backend
- Java 17+ (Spring Boot 4 requiere Java 17)
- MongoDB 6.0+
- RAM servidor: 1GB mínimo
- Ancho de banda: 10GB/mes (estimado para MVP)

---

## Matriz de Trazabilidad (Prioridades MoSCoW)

| Categoría | Requisitos |
|-----------|-----------|
| **Must Have (MVP)** | RF-01, RF-02, RF-03, RF-04, RF-05, RF-06, RF-07, RF-08, RF-09, RF-11, RNF-01 a RNF-08 |
| **Should Have** | RF-10, RF-12, RF-13 |
| **Could Have** | RF-14, RF-16 |
| **Won't Have (Ahora)** | RF-15, Android XR implementación completa |

---

## Validación de Requisitos

Estos requisitos han sido validados con:
- ✅ Tutora académica (carta blanca)
- ✅ Viabilidad técnica (tecnologías disponibles)
- ✅ Timeline de 3 meses
- ✅ Recursos disponibles (1 desarrollador, 30h/semana)