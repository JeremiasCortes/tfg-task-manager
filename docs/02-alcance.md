# Alcance del Proyecto - Task Manager Pro

## Información del Documento
- **Versión:** 1.0
- **Fecha:** Diciembre 2025
- **Autor:** Jeremías Cortés Carrasco

---

## ✅ QUÉ SÍ HARÁ LA APLICACIÓN

### 🎯 Core Features (MVP - Imprescindible)

#### 1. Gestión Completa de Tareas
**Incluye:**
- Crear, editar, eliminar tareas
- Asignar a usuarios específicos o departamentos completos
- Definir procedimientos paso a paso (secuenciales)
- Estados de tarea: Pendiente → En Progreso → Completada
- Validación de permisos por rol

**No incluye:**
- Tareas recurrentes/periódicas
- Subtareas anidadas (solo 1 nivel de procedimientos)
- Plantillas de tareas predefinidas
- Importación masiva de tareas

---

#### 2. Sistema de Procedimientos Secuenciales
**Incluye:**
- Lista ordenada de pasos a completar
- Marcar procedimientos como completados
- Orden estricto (no se puede saltar pasos)
- Registro de quién y cuándo completó cada paso
- Deshacer marcado si hay error

**No incluye:**
- Procedimientos paralelos (varios a la vez)
- Dependencias complejas entre procedimientos
- Ramificaciones condicionales (if/else en flujo)
- Aprobaciones intermedias entre pasos

---

#### 3. Documentación Multimedia
**Incluye:**
- **Texto:** Notas libres con auto-guardado
- **Fotos:** Captura desde cámara, compresión automática
- **Audio:** Grabación → Transcripción automática con IA
- Galería de fotos por procedimiento
- Timestamps de toda la documentación

**No incluye:**
- Grabación de video
- Edición de fotos/audio in-app
- Marcas/anotaciones sobre fotos
- Formato rich text (negritas, cursivas, etc.)
- Adjuntos de archivos (PDF, DOC, etc.)

---

#### 4. Sistema de Roles y Permisos
**Incluye:**
- **Administrador:**
    - Crear/editar/eliminar tareas
    - Gestionar usuarios
    - Gestionar departamentos
    - Ver todas las tareas
    - Asignar roles

- **Trabajador:**
    - Ver tareas asignadas
    - Auto-asignarse tareas de su departamento
    - Completar procedimientos
    - Documentar trabajo realizado
    - Ver historial de tareas completadas

**No incluye:**
- Roles adicionales (Supervisor, Auditor, etc.)
- Permisos granulares configurables
- Delegación de permisos
- Gestión de equipos jerárquicos

---

#### 5. Trabajo Offline con Sincronización
**Incluye:**
- App 100% funcional sin internet
- Base de datos local Realm
- Sincronización automática vía Device Sync
- Indicador visual de estado de conexión
- Cola de cambios pendientes
- Resolución de conflictos (last-write-wins)

**No incluye:**
- Resolución manual de conflictos
- Versionado/historial de cambios
- Merge inteligente de documentación
- Sincronización selectiva (elegir qué sincronizar)

---

### 🚀 Extended Features (Si hay tiempo)

#### 6. Inteligencia Artificial
**Incluye:**
- Transcripción de audio (OpenAI Whisper)
- Detección automática de idioma
- Formato y puntuación del texto transcrito

**Podría incluir (opcional):**
- Análisis de imágenes (GPT-4 Vision)
- Sugerencias automáticas basadas en fotos
- Resumen automático de documentación

**No incluye:**
- Generación automática de procedimientos
- Chatbot de asistencia
- Predicción de tiempos de completado
- Detección de anomalías

---

#### 7. Multiplataforma Android
**Incluye:**
- **Smartphone (Principal):** UI completa y optimizada
- **Tablet:** Layout adaptado de 2 paneles
- **Wear OS (Básico):** Ver tareas, marcar completado

**Podría incluir:**
- Android XR (solo diseño conceptual y mockup)

**No incluye:**
- iOS
- Web Progressive App (PWA)
- Desktop (Windows/Mac/Linux)

---

#### 8. Analytics y Observabilidad
**Incluye:**
- Firebase Crashlytics (crashes)
- Firebase Analytics (eventos de uso)
- Métricas básicas (tiempo de completado, tareas por usuario)

**No incluye:**
- Dashboard avanzado con gráficos interactivos
- Exportación de datos a BI tools
- Alertas proactivas de anomalías
- A/B testing integrado

---

#### 9. Monetización Simulada
**Incluye:**
- AdMob banners en pantallas secundarias
- AdMob interstitials entre acciones
- Lógica freemium (simular versión Premium sin anuncios)

**No incluye:**
- Sistema real de pagos (Stripe, PayPal)
- Suscripciones con Google Play Billing
- Features Premium reales (solo simulación)
- Pruebas gratuitas con temporizador

---

#### 10. Notificaciones Push
**Incluye:**
- Notificación cuando se asigna tarea
- Notificación cuando se completa tarea
- Notificación de comentarios/actualizaciones
- Badge counter en icono de app
- Navegación directa al hacer clic

**No incluye:**
- Notificaciones programadas/recordatorios
- Notificaciones por email
- Notificaciones SMS
- Digest diario/semanal

---

## ❌ QUÉ NO HARÁ LA APLICACIÓN

### Fuera del Alcance Definitivo

#### 1. Plataformas No Soportadas
- ❌ iOS (iPhone, iPad, Apple Watch)
- ❌ Web browser (no hay versión web)
- ❌ Desktop nativo (Windows, Mac, Linux)
- ❌ Smart TV, consolas

#### 2. Funcionalidades Avanzadas de Colaboración
- ❌ Chat en tiempo real entre usuarios
- ❌ Videollamadas integradas
- ❌ Pizarra colaborativa
- ❌ Comentarios en hilos con respuestas
- ❌ Menciones (@usuario)
- ❌ Reacciones emoji

#### 3. Gestión Avanzada de Proyectos
- ❌ Diagramas de Gantt
- ❌ Dependencias entre tareas
- ❌ Recursos compartidos/calendario
- ❌ Estimaciones y tracking de tiempo
- ❌ Gestión de presupuestos
- ❌ Facturación integrada

#### 4. Multimedia Complejo
- ❌ Grabación de video
- ❌ Streaming en vivo
- ❌ Edición de fotos (recortar, filtros, etc.)
- ❌ Edición de audio (cortar, efectos)
- ❌ Realidad aumentada (AR markers)
- ❌ Escaneo de códigos QR/barras

#### 5. Integraciones con Terceros
- ❌ Google Calendar / Outlook
- ❌ Slack / Microsoft Teams
- ❌ WhatsApp / Telegram
- ❌ Dropbox / Google Drive
- ❌ Trello / Jira / Asana
- ❌ Zapier / Make (automatizaciones)
- ❌ ERP / CRM empresariales

#### 6. Funcionalidades Empresariales Avanzadas
- ❌ Single Sign-On (SSO) corporativo
- ❌ Active Directory integration
- ❌ Auditoría completa de cambios
- ❌ Retención de datos configurable
- ❌ Backup/restore manual
- ❌ Multitenant con aislamiento
- ❌ White-labeling

#### 7. Características de Red Social
- ❌ Perfiles públicos de usuario
- ❌ Feed de actividad global
- ❌ Likes/favoritos en tareas
- ❌ Compartir en redes sociales
- ❌ Gamificación (badges, puntos)

#### 8. Geolocalización
- ❌ Asignación de tareas por ubicación
- ❌ Check-in geográfico
- ❌ Mapa de tareas
- ❌ Rutas optimizadas

#### 9. Firma Digital y Validación
- ❌ Firma digital legal
- ❌ Autenticación biométrica de procedimientos
- ❌ Certificados de completado
- ❌ Blockchain para inmutabilidad

#### 10. IA Avanzada
- ❌ Asistente conversacional (chatbot)
- ❌ Generación automática de procedimientos
- ❌ Traducción automática de documentación
- ❌ Detección de sentimientos en texto
- ❌ Recomendaciones predictivas

---

## ⚠️ Android XR - Caso Especial

### Estado: Conceptual / Prototipo Básico

**Qué SÍ se hará:**
- Diseño conceptual de UI para XR
- Mockups de experiencia con visores
- Documentación técnica de implementación propuesta
- Prototipo básico SI el SDK está disponible y documentado

**Qué NO se hará:**
- Implementación completa y pulida
- Optimización de rendimiento XR
- Gestos complejos / hand tracking
- Experiencias inmersivas 3D

**Justificación:**
Android XR es extremadamente nuevo (anunciado 2024). Disponibilidad de SDK incierta. Para el TFG, el diseño conceptual es suficientemente innovador sin comprometer el timeline.

---

## 🎯 Criterios de Éxito Detallados

### Mínimo para Aprobar (7/10)

**MVP funcional con:**
- ✅ Admin puede crear 10 tareas con 5 procedimientos cada una
- ✅ Worker puede auto-asignarse y completar tareas
- ✅ Sincronización offline/online funciona entre 2 dispositivos
- ✅ Documentación con texto y fotos operativa
- ✅ Sin crashes críticos (< 1% crash rate en Crashlytics)
- ✅ App publicada en Google Play (internal testing mínimo)
- ✅ Memoria TFG completa (40+ páginas)
- ✅ Defensa clara del proyecto

### Para Notable (8/10)

**Todo lo anterior +**
- ✅ Transcripción de audio con IA funcional
- ✅ Soporte tablets con layout adaptado
- ✅ Firebase Analytics implementado
- ✅ Tests unitarios con >60% cobertura
- ✅ CI/CD básico con GitHub Actions
- ✅ Backend Spring Boot robusto y documentado
- ✅ Documentación técnica excelente

### Para Sobresaliente (9-10/10)

**Todo lo anterior +**
- ✅ Prototipo Wear OS funcional
- ✅ Diseño conceptual Android XR bien argumentado
- ✅ AdMob integrado correctamente
- ✅ Arquitectura ejemplar (Clean Architecture)
- ✅ Tests de integración end-to-end
- ✅ Documentación excepcional con diagramas UML
- ✅ Demo impecable en defensa
- ✅ Código publicado como referencia (open source)

---

## ⏱️ Timeline de Entrega

| Hito | Semana | Entregable |
|------|--------|-----------|
| MVP Offline | 5 | App funcional sin backend |
| Backend + Sync | 7 | Sincronización operativa |
| Feature Complete | 9 | Todas las funcionalidades core |
| Release Candidate | 11 | App lista para Google Play |
| TFG Completo | 13 | Documentación + Defensa |

---

## 🚧 Gestión de Riesgos

### Riesgo Alto: Tiempo Limitado
**Impacto:** No completar todas las features  
**Probabilidad:** Alta (trabajo + clases)  
**Mitigación:**
- Priorizar MVP férreo primero
- Features opcionales claramente marcadas
- Cortar Android XR real si consume > 1 semana
- Pedir extensión solo si absolutamente necesario

### Riesgo Medio: Device Sync Complejidad
**Impacto:** Bloqueo en sincronización  
**Probabilidad:** Media (nueva tecnología)  
**Mitigación:**
- PoC de Device Sync en Semana 3
- Tener plan B: API REST tradicional
- Comunidad MongoDB activa para ayuda

### Riesgo Bajo: Costos API IA
**Impacto:** Presupuesto excedido  
**Probabilidad:** Baja  
**Mitigación:**
- Usar tier gratuito de OpenAI ($5 crédito)
- Alternativa: Google Cloud Speech-to-Text (60min/mes gratis)
- Limitar transcripciones durante desarrollo

### Riesgo Bajo: Android XR SDK No Disponible
**Impacto:** No poder implementar prototipo real  
**Probabilidad:** Media-Alta  
**Mitigación:**
- Diseño conceptual suficiente para TFG
- Documentación técnica detallada
- No es requisito crítico para aprobar

---

## 📊 Comparativa con Apps Similares

| Feature                     | Task Manager Pro      | Trello         | Asana             | Monday.com |
|-----------------------------|-----------------------|----------------|-------------------|------------|
| Offline-first               | ✅                     | ❌              | ❌                 | ❌          |
| Documentación multimedia    | ✅                     | ⚠️             | ⚠️                | ✅          |
| Transcripción IA            | ✅                     | ❌              | ❌                 | ❌          |
| Android XR                  | ⚠️ (conceptual)       | ❌              | ❌                 | ❌          |
| Procedimientos secuenciales | ✅                     | ❌              | ⚠️                | ⚠️         |
| Gratis                      | ✅ (freemium)          | ⚠️ Limitado    | ⚠️ Limitado       | ❌          |
| Enfoque                     | Documentación técnica | Kanban general | Gestión proyectos | Enterprise |

**Diferenciadores clave:**
1. Offline-first con sincronización inteligente
2. Documentación multimedia integrada
3. IA para transcripción automática
4. Procedimientos secuenciales estrictos
5. Diseñado para trabajo de campo (Android puro)

---

## 📝 Notas Finales

### Cambios Permitidos al Alcance
- Se pueden AGREGAR features menores si sobra tiempo
- Se pueden REMOVER features opcionales si falta tiempo
- Cambios al alcance core requieren aprobación de tutora
- Cualquier cambio debe documentarse aquí

### Comunicación de Cambios
- Actualizar este documento si hay cambios
- Notificar a tutora si afecta objetivos principales
- Mantener README.md sincronizado

### Fecha de Última Revisión
**Diciembre 2025** - Versión inicial aprobada