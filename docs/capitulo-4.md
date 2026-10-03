# Capítulo IV: Product Implementation & Validation

Este capítulo documenta la implementación y validación de Entreprenly en el curso Aplicaciones para Dispositivos Móviles. Para el hito TB1 se presenta el Sprint 1, orientado a la aplicación Android nativa y a su integración con los servicios de la plataforma. Se reutilizan la Landing Page y el backend del proyecto anterior, conservando sus responsabilidades y revisando su compatibilidad con los requisitos móviles del capítulo II.

El trabajo combina la configuración de los proyectos, el desarrollo por Bounded Context y la consolidación de evidencias para el Sprint Review. Las decisiones de planificación se presentan en las secciones 4.2.1.1 a 4.2.1.3; las evidencias de desarrollo, pruebas, ejecución, servicios, despliegue y colaboración se organizan en las secciones 4.2.1.4 a 4.2.1.9. Los resultados de las entrevistas de validación y las evaluaciones heurísticas corresponden a la sección 4.3.

El criterio del TB1 exige una Landing Page desplegada, un backend desplegado con al menos el 70 % del alcance requerido y la presentación de las pantallas core de la aplicación. La reutilización del código constituye una base de trabajo; el porcentaje de avance y el cumplimiento funcional se sustentan con las evidencias de la revisión del sprint.

## 4.1. Software Configuration Management

Por completar.

### 4.1.1. Software Development Environment Configuration

Backend reutilizado y en avance: `https://github.com/LernenLabs/adm-entreprenly-backend` (Spring Boot, DDD + CQRS por contextos `iam, inventory, sales, subscription, profile, chatbot, shared`).

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Herramienta</th><th>Versión</th><th>Uso</th>
  </tr>
  <tr><td style="vertical-align:middle; text-align:center;">Java JDK</td><td style="vertical-align:middle; text-align:center;">26</td><td>Lenguaje del backend.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Spring Boot</td><td style="vertical-align:middle; text-align:center;">4.0.6</td><td>WebMVC, JPA, Security, Validation.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">PostgreSQL</td><td style="vertical-align:middle; text-align:center;">15+</td><td>Local en desarrollo; Cloud SQL en producción.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Maven Wrapper</td><td style="vertical-align:middle; text-align:center;">—</td><td>Compilación con `./mvnw spring-boot:run` y `./mvnw clean package`.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">JWT + BCrypt</td><td style="vertical-align:middle; text-align:center;">jjwt 0.12.6</td><td>Autenticación por token.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">SpringDoc OpenAPI</td><td style="vertical-align:middle; text-align:center;">3.0.3</td><td>Swagger UI.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Docker</td><td style="vertical-align:middle; text-align:center;">—</td><td>Imagen `entreprenly-platform` en puerto `8092`.</td></tr>
</table>

- Crear base local `daop-entreprenly` antes del primer arranque; las tablas se crean al iniciar.
- Configuración por `.env.example` → `.env` o variables de entorno. API base `/api/v1`, Swagger local `http://localhost:8092/swagger-ui.html`.

### 4.1.2. Source Code Management

La gestión del código fuente es una parte importante del proceso de desarrollo colaborativo de software, ya que permite un control eficiente de los cambios y versiones del código fuente. En esta sección se describe el sistema de control de versiones implementado por **Lernen Labs**, utilizando GitHub como plataforma de alojamiento de repositorios. Además se detallan las convenciones de trabajo, como el modelo GitFlow y versionado semántico (Conventional Commits).

<br>

**URL de los Repositorios**: 

* Organización: https://github.com/LernenLabs
* Reporte: https://github.com/LernenLabs/adm-entreprenly
* Landing Page: https://github.com/LernenLabs/adm-entreprenly-landing
* Frontend: https://github.com/LernenLabs/adm-entreprenly-frontend
* Backend: https://github.com/LernenLabs/adm-entreprenly-backend

**Estructura de Ramas**: 

Para mantener un flujo organizado en el desarrollo, se ha implementado el modelo GitFlow a través de las siguientes ramas:

* main: Rama principal (main) que contiene las versiones estables del proyecto. Todas las demás ramas derivan de esta.
* develop: Rama de desarrollo (develop) que contiene las características en desarrollo y se fusiona con la Main Branch al final de cada sprint.
* feat/nombre-de-la-funcionalidad: Ramas de características (feature) que se crean para desarrollar nuevas funcionalidades y se fusionan con la Develop Branch al finalizar.

**Estándar de Mensajes de Commit**

Para asegurar un historial de cambios legible y facilitar la automatización, se utiliza la especificacion de Conventional Commits para todos los mensajes de commit. La estructura utilizada es [tipo]:[descripción breve], empleando los siguientes prefijos:

- feat: Incorporación de una nueva funcionalidad.
- fix: Corrección de un error o bug.
- docs: Modificaciones exclusivamente en la documentación.
- style: Cambios de formato o estética que no afectan la lógica del código.
- refactor: Reestructuración de código que no añade funciones ni corrige errores.
- test: Adición o actualización de pruebas

### 4.1.3. Source Code Style Guide & Conventions

Por completar.

### 4.1.4. Software Deployment Configuration

Despliegue del backend con Docker por perfiles `default/cloud/prod`.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Variable</th><th>Valor</th>
  </tr>
  <tr><td style="vertical-align:middle; text-align:center;">SPRING_PROFILES_ACTIVE</td><td><code>cloud</code> en Render, <code>prod</code> en Cloud Run.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">DATABASE_HOST / PORT / NAME / USER / PASSWORD</td><td>Pooler Supabase en Render (<code>5432/postgres</code>); Cloud SQL por socket en producción.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">JWT_SECRET</td><td>Secreto largo aleatorio.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">PUBLIC_API_URL</td><td>URL pública del servicio para Swagger.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">CLOUD_SQL_CONNECTION_NAME</td><td>Solo Cloud Run (<code>project:region:instance</code>) con rol <code>roles/cloudsql.client</code>.</td></tr>
</table>

- Opción A Render + Supabase: servicio Docker desde el repositorio con las variables anteriores; despliegue verificado en `https://adm-entreprenly-backend.onrender.com/swagger-ui/index.html`.
- Opción B Cloud Run + Cloud SQL: trigger que construye el `Dockerfile` y publica nueva revisión en cada push a `main`.
- El plan gratuito de Render se suspende tras ~15 minutos sin tráfico; la primera petición posterior puede tardar alrededor de un minuto.

## 4.2. Landing Page & Mobile Application Implementation

La implementación se organiza en tres proyectos de Lernen Labs. La Landing Page presenta Entreprenly y sus planes; la aplicación Android permite al comerciante operar desde su dispositivo; y el backend expone los servicios REST de IAM, Profile, Inventory, Sales, Chatbot y Subscription.

| Proyecto | Repositorio | Base de implementación |
| :---: | :---: | :---: |
| Landing Page | [adm-entreprenly-landing](https://github.com/LernenLabs/adm-entreprenly-landing) | HTML, JavaScript y Tailwind CSS; reutilización de la landing existente y revisión del contenido y los accesos al producto móvil |
| Aplicación Android | [adm-entreprenly-frontend](https://github.com/LernenLabs/adm-entreprenly-frontend) | Kotlin y Jetpack Compose; navegación y organización por Bounded Context |
| Backend | [adm-entreprenly-backend](https://github.com/LernenLabs/adm-entreprenly-backend) | Java y Spring Boot; servicios REST, JWT y persistencia PostgreSQL |

El backend se adapta a partir de `daop-entreprenly-web-services` y la landing a partir de `landing-entreprenly`. El frontend móvil se desarrolla como aplicación nativa, tomando las interfaces de la página **Mobile** de Figma como referencia de interacción y estilo. Los repositorios actuales conservan su propia trazabilidad de cambios y colaboración.

Cada integrante lidera un contexto y participa en las revisiones comunes. La integración considera la sesión de IAM, la navegación entre módulos, los contratos de la API y los componentes compartidos. Profile gestiona datos y preferencias del usuario; IAM conserva la responsabilidad sobre identidad y credenciales, por lo que sus operaciones se coordinan mediante los contratos entre contextos.

La documentación del backend registra un despliegue en Render y una base de datos PostgreSQL en Supabase. La URL de referencia del servicio es [adm-entreprenly-backend.onrender.com](https://adm-entreprenly-backend.onrender.com) y su [Swagger UI](https://adm-entreprenly-backend.onrender.com/swagger-ui.html) constituye el punto de consulta de los contratos. La evidencia de disponibilidad y del alcance entregado se incorpora en la sección 4.2.1.8.

### 4.2.1. Sprint 1

El Sprint 1 comprende las **33 User Stories** acordadas por el equipo en la reunión del 28 de septiembre de 2026. Las historias conservan las estimaciones del Product Backlog y suman **82 story points**. Su distribución cubre Profile y navegación compartida, Inventory, Chatbot, Subscription y Sales.

IAM se considera un avance previo disponible para la integración. La Landing Page y el backend también forman parte de la base reutilizada del producto. Estos antecedentes se revisan durante el sprint y se distinguen del esfuerzo correspondiente a las HUs seleccionadas.

El objetivo del sprint es que el comerciante acceda con su cuenta y utilice los recorridos core de la aplicación Android para consultar y actualizar su perfil, gestionar productos y lotes, atender conversaciones y pagos, administrar su suscripción y registrar ventas. La revisión del TB1 incluye la continuidad entre estas pantallas y los servicios desplegados que las soportan.

| Responsable | Aspecto principal | HUs seleccionadas | Story points |
| :---: | :---: | :---: | :---: |
| Chavez Carrasco, Lionel Abraham | Profile y navegación compartida | US-62, US-63, US-67, US-68, US-81, US-75 | 11 |
| Laura Acosta, Victor Jhosef | Inventory | US-01, US-05, US-07, US-08, US-03, US-06, US-11, US-13 | 20 |
| Palma De Los Santos, Elynor Mikela | Chatbot | US-37, US-38, US-39, US-40, US-46 | 16 |
| Villon Amez, Enrique Manuel | Subscription | US-15, US-16, US-17, US-18, US-20, US-21, US-22 | 18 |
| Gonza Morales, Anderson | Sales | US-28, US-29, US-31, US-32, US-33, US-36, US-97 | 17 |
| **Total** | **Cinco aspectos de trabajo** | **33 User Stories** | **82** |

Las HUs de Profile sobre fotografía, cambio de correo, cambio de contraseña y verificación del teléfono (US-64, US-65, US-66 y US-69) mantienen sus diseños como insumo para siguientes iteraciones. No forman parte de la selección del Sprint 1.

#### 4.2.1.1. Sprint Planning 1

La planificación se realizó por **Google Meet el 28 de septiembre de 2026 a las 10:00 p. m.**, con la selección de HUs y la distribución de responsabilidades por Bounded Context. Lionel coordina la consolidación del Sprint 1 y del informe; los cinco integrantes participan en la integración de los recorridos y las revisiones cruzadas.

El registro adapta la estructura del Sprint Planning de `daop-entreprenly` al equipo y al alcance del curso actual. De acuerdo con la [Scrum Guide](https://scrumguides.org/scrum-guide.html), el Sprint Backlog reúne el objetivo, las historias seleccionadas y el plan de trabajo para el incremento.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse:collapse; text-align:center;">
  <tbody>
    <tr><th colspan="2">Sprint 1</th></tr>
    <tr><th colspan="2">Sprint Planning Background</th></tr>
    <tr><th>Date</th><td>28 / 09 / 2026</td></tr>
    <tr><th>Time</th><td>10:00 p. m. — America/Lima (UTC−05:00)</td></tr>
    <tr><th>Location</th><td>Reunión virtual por Google Meet</td></tr>
    <tr><th>Prepared By</th><td>Chavez Carrasco, Lionel Abraham</td></tr>
    <tr><th>Attendees (to planning meeting)</th><td>Chavez Carrasco, Lionel Abraham; Palma De Los Santos, Elynor Mikela; Laura Acosta, Victor Jhosef; Villon Amez, Enrique Manuel; Gonza Morales, Anderson</td></tr>
    <tr><th>Delivery / Stage Review</th><td>TB1 — Semana 7</td></tr>
    <tr><th>Sprint period</th><td>Del 28 de septiembre al domingo 4 de octubre de 2026. Cierre: 4 de octubre a las 10:00 p. m., America/Lima (UTC−05:00).</td></tr>
    <tr><th>Sprint 1 − 1 Review Summary</th><td>Primer sprint del curso actual. Se revisan los artefactos corregidos del AV1, la Landing Page y el backend reutilizados del ciclo anterior, así como el avance previo de IAM.</td></tr>
    <tr><th>Sprint 1 − 1 Retrospective Summary</th><td>La retroalimentación del AV1 se incorpora mediante la reformulación del Problem Statement y el ajuste de las tablas de User Stories y Product Backlog. Se adopta el trabajo colaborativo con liderazgo por Bounded Context y componentes móviles compartidos.</td></tr>
    <tr><th colspan="2">Sprint Goal &amp; User Stories</th></tr>
    <tr><th>Sprint 1 Goal</th><td>Presentar un incremento de Entreprenly para Android que permita al comerciante recorrer las operaciones core de Profile, Inventory, Chatbot, Subscription y Sales, utilizando IAM y los servicios reutilizados, con pantallas y evidencias trazables a las 33 HUs seleccionadas para el TB1.</td></tr>
    <tr><th>Selected User Stories</th><td>33 HUs distribuidas entre los cinco responsables, según el cuadro de la sección 4.2.1.</td></tr>
    <tr><th>Sum of Story Points</th><td>82 story points, conservados del Product Backlog.</td></tr>
    <tr><th>Sprint 1 Velocity</th><td>Se determina al cierre con las HUs que cumplen la Definition of Done. Los 82 puntos representan alcance planificado; IAM y los componentes reutilizados no se contabilizan nuevamente como velocidad del sprint.</td></tr>
  </tbody>
</table>

**Dependencias e integración**

- IAM proporciona la sesión y la autorización necesarias para las operaciones protegidas.
- Inventory expone productos, lotes y disponibilidad requeridos por Sales y Chatbot.
- Sales conserva la coherencia entre el ticket, el cierre de venta y el Resumen de Caja.
- Chatbot coordina conversaciones y validación de comprobantes con el flujo de pedidos y el stock disponible.
- Subscription controla el plan y su estado; Profile utiliza esa información sin asumir la gestión del cobro.
- Profile conserva las preferencias del comerciante y colabora en la navegación común con US-75 y US-81.

**Criterios de cierre del sprint**

La Definition of Done requiere que cada HU tenga trazabilidad con el requisito del capítulo II, un recorrido móvil consistente con Figma, código revisado e integrado y evidencia de los criterios de aceptación aplicables. La revisión registra los estados de éxito, validación y recuperación; las operaciones que dependen del backend utilizan sus contratos y cuentan con evidencia de ejecución.

Para el TB1, además, se acredita la URL pública de la Landing Page, se presenta el inventario de funcionalidades backend comprometidas y se demuestra al menos el 70 % de ese alcance con servicios desplegados y evidencias asociadas. El cálculo corresponde a funcionalidades verificadas respecto del total acordado para el backend del TB1; su denominador y resultados se documentan en las evidencias de servicios y despliegue. Se muestran las pantallas core y se consolida el informe con Registro de Versiones, Collaboration Insights, Student Outcome, conclusiones, bibliografía y anexos actualizados.

Una pantalla diseñada, un componente reutilizado o una HU con código disponible se registra según su avance; su cierre requiere cumplir los criterios anteriores. Las pruebas y validaciones planificadas se reportan como resultados cuando existe evidencia de su ejecución.

#### 4.2.1.2. Aspect Leaders and Collaborators

El equipo mantiene un responsable principal por Bounded Context y la colaboración de los demás integrantes. **L** identifica el liderazgo sobre el aspecto y **C**, la colaboración en dependencias, componentes comunes y revisión. El liderazgo por contexto organiza el trabajo y la integración permite presentar un solo incremento del producto.

| Team Member (Last Name, First Name) | GitHub Username | Aspect Leader (L) | Collaboration (C) |
| :---: | :---: | :---: | :---: |
| Chavez Carrasco, Lionel Abraham | LioTG | Profile, US-75 y US-81; coordinación del Sprint 1, Style Guidelines, Registro de Versiones, Student Outcome e integración del informe | Sesión de IAM, navegación y revisión cruzada de los contextos |
| Palma De Los Santos, Elynor Mikela | elynorpalma | Chatbot y referencia inicial del diseño móvil en Figma | Coherencia del diseño compartido y coordinación de conversaciones y pedidos con Inventory y Sales |
| Laura Acosta, Victor Jhosef | Zatrynox | Inventory | Disponibilidad de productos y lotes para Sales y Chatbot; coherencia de alertas y datos de inventario |
| Villon Amez, Enrique Manuel | enriquevillon25 | Subscription | Estado del plan y coordinación con Profile y los servicios de cobro |
| Gonza Morales, Anderson | Ander-U | Sales | Disponibilidad de inventario, preferencias de presentación y continuidad con pedidos y pagos |

Las tareas transversales de diseño, integración y revisión requieren participación de los cinco integrantes. Cada responsable mantiene la trazabilidad entre las HUs asignadas, sus pantallas, las operaciones de los servicios y las evidencias que aporta al Sprint Review. Lionel consolida los avances y revisa la consistencia del informe.

#### 4.2.1.3. Sprint Backlog 1

El Sprint Backlog contiene las **33 HUs y 82 story points** seleccionados en la reunión de planificación. Los identificadores y títulos se conservan respecto de la sección 2.4.3; cada HU se desglosa en Work-items específicos de interfaz, lógica e integración y revisión de los criterios de aceptación. Los identificadores S1-T01.1 a S1-T33.3 vinculan cada subtarea con su HU y mantienen el responsable del Bounded Context. Las tareas transversales se presentan después y no agregan story points a la selección.

Se utilizan los estados de seguimiento **To Do, In Process, To Review y Done**. En el corte documental del **3 de octubre de 2026**, los Work-items de implementación de Profile y la navegación inferior cuentan con código integrado que debe revisarse contra sus criterios de aceptación; las tareas de revisión se registran como **To Do** hasta incorporar sus evidencias. Para los otros Work-items, el estado se señala como **Por confirmar** hasta contar con el registro del responsable. Este estado indica falta de evidencia en la consolidación y no un resultado funcional.

Las horas de la siguiente tabla son **estimaciones iniciales propuestas para desglosar las tareas**, sujetas al refinamiento de los responsables. Se mantienen separadas de los story points y de las horas efectivamente trabajadas. La disponibilidad de las pantallas de Profile en Figma se registra como evidencia de diseño y no implica por sí sola el cierre de la HU.

<!-- pdf:only
\begingroup\footnotesize\setlength{\tabcolsep}{3pt}
-->

<table border="1" cellpadding="6" cellspacing="0" style="width:100%; border-collapse:collapse; text-align:center;">
  <thead>
    <tr><th colspan="8">Sprint # Sprint 1</th></tr>
    <tr><th colspan="2">User Story</th><th colspan="6">Work-Item / Task</th></tr>
    <tr><th>Id</th><th>Title</th><th>Id</th><th>Title</th><th>Description</th><th>Estimation<br>(Hours)</th><th>Assigned To</th><th>Status</th></tr>
  </thead>
  <tbody>
<tr><td>US-62</td><td>Visualizar perfil actual</td><td>S1-T01.1</td><td>Vista de Mi perfil</td><td>Nombre, biografía, fotografía, correo y preferencias actuales en la pantalla de perfil.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-62</td><td>Visualizar perfil actual</td><td>S1-T01.2</td><td>Consulta autenticada del perfil</td><td>Carga del perfil del usuario de la sesión y redirección al login ante sesión expirada.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-62</td><td>Visualizar perfil actual</td><td>S1-T01.3</td><td>Revisión de consulta y sesión</td><td>Registro de evidencias de los escenarios de visualización exitosa y sesión expirada.</td><td>1</td><td>Lionel Chavez</td><td>To Do</td></tr>
<tr><td>US-63</td><td>Actualizar nombre y biografía</td><td>S1-T02.1</td><td>Formulario de nombre y biografía</td><td>Campos con los datos actuales y acción de guardar cambios desde Mi perfil.</td><td>2</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-63</td><td>Actualizar nombre y biografía</td><td>S1-T02.2</td><td>Validación y actualización del perfil</td><td>Bloqueo del guardado con nombre vacío, actualización de datos válidos y presentación del perfil actualizado.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-63</td><td>Actualizar nombre y biografía</td><td>S1-T02.3</td><td>Revisión de edición del perfil</td><td>Evidencias del guardado válido y del error de nombre obligatorio sin persistencia de cambios inválidos.</td><td>1</td><td>Lionel Chavez</td><td>To Do</td></tr>
<tr><td>US-67</td><td>Configurar preferencias de idioma, zona horaria, tema y moneda</td><td>S1-T03.1</td><td>Idioma de la aplicación</td><td>Selector y persistencia del idioma; actualización inmediata de los textos traducibles sin reiniciar la aplicación.</td><td>2</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-67</td><td>Configurar preferencias de idioma, zona horaria, tema y moneda</td><td>S1-T03.2</td><td>Zona horaria del comerciante</td><td>Selector y persistencia de la zona horaria; aplicación de la preferencia a fechas y horas.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-67</td><td>Configurar preferencias de idioma, zona horaria, tema y moneda</td><td>S1-T03.3</td><td>Tema claro y oscuro</td><td>Selección y aplicación inmediata del tema, conservando la preferencia entre sesiones.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-67</td><td>Configurar preferencias de idioma, zona horaria, tema y moneda</td><td>S1-T03.4</td><td>Moneda de presentación</td><td>Selección y persistencia de moneda; formato del Resumen de Caja y del ticket con su símbolo.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-67</td><td>Configurar preferencias de idioma, zona horaria, tema y moneda</td><td>S1-T03.5</td><td>Revisión de las cuatro preferencias</td><td>Evidencias de idioma, zona horaria, tema y moneda, incluida su continuidad entre Profile y Sales.</td><td>1</td><td>Lionel Chavez</td><td>To Do</td></tr>
<tr><td>US-68</td><td>Configurar notificaciones</td><td>S1-T04.1</td><td>Controles de avisos</td><td>Opciones para activar o desactivar los tipos de notificación y guardar las preferencias.</td><td>2</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-68</td><td>Configurar notificaciones</td><td>S1-T04.2</td><td>Persistencia y permiso de notificaciones</td><td>Aplicación de preferencias a futuros avisos push; explicación del permiso denegado y acceso a Ajustes.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-68</td><td>Configurar notificaciones</td><td>S1-T04.3</td><td>Revisión de preferencias y permisos</td><td>Evidencias de guardado, permiso denegado y salida sin cambios, conservando las preferencias anteriores.</td><td>1</td><td>Lionel Chavez</td><td>To Do</td></tr>
<tr><td>US-81</td><td>Navegar entre módulos desde el menú de navegación móvil</td><td>S1-T05.1</td><td>Menú de navegación móvil</td><td>Opciones e indicación del destino seleccionado para los módulos de la aplicación.</td><td>2</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-81</td><td>Navegar entre módulos desde el menú de navegación móvil</td><td>S1-T05.2</td><td>Destinos y acceso a Profile</td><td>Conexión de las opciones con su módulo y del bloque de usuario con la pantalla Perfil.</td><td>1</td><td>Lionel Chavez</td><td>To Review</td></tr>
<tr><td>US-81</td><td>Navegar entre módulos desde el menú de navegación móvil</td><td>S1-T05.3</td><td>Revisión de destinos de navegación</td><td>Evidencias del acceso desde las opciones del menú y desde el bloque de usuario.</td><td>1</td><td>Lionel Chavez</td><td>To Do</td></tr>
<tr><td>US-75</td><td>Acceder a módulos desde accesos directos de la pantalla de Inicio</td><td>S1-T06.1</td><td>Accesos directos de Inicio</td><td>Controles para Ventas, Chatbot, Pedidos, Inventario y Ayuda en la pantalla de Inicio.</td><td>1</td><td>Lionel Chavez</td><td>Por confirmar</td></tr>
<tr><td>US-75</td><td>Acceder a módulos desde accesos directos de la pantalla de Inicio</td><td>S1-T06.2</td><td>Destinos y accesibilidad de accesos</td><td>Navegación al módulo correspondiente, nombres accesibles y áreas táctiles para cada acceso directo.</td><td>1</td><td>Lionel Chavez</td><td>Por confirmar</td></tr>
<tr><td>US-75</td><td>Acceder a módulos desde accesos directos de la pantalla de Inicio</td><td>S1-T06.3</td><td>Revisión de accesos de Inicio</td><td>Evidencias de los cinco destinos y de las etiquetas y áreas de interacción accesibles.</td><td>1</td><td>Lionel Chavez</td><td>Por confirmar</td></tr>
<tr><td>US-01</td><td>Agregar productos</td><td>S1-T07.1</td><td>Formulario de alta de producto</td><td>Nombre, descripción, categoría, tipo de producto, precio y stock inicial, con unidades o kilogramos según corresponda.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-01</td><td>Agregar productos</td><td>S1-T07.2</td><td>Registro unitario y por peso</td><td>Integración con Inventory para Unit Product y Weight Product; validación de los campos obligatorios antes del guardado.</td><td>3</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-01</td><td>Agregar productos</td><td>S1-T07.3</td><td>Revisión de registro de productos</td><td>Evidencias del alta unitaria, del alta por peso y del bloqueo por campos obligatorios vacíos.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-05</td><td>Editar productos</td><td>S1-T08.1</td><td>Formulario de edición de producto</td><td>Carga de los datos del producto seleccionado y presentación de los campos editables.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-05</td><td>Editar productos</td><td>S1-T08.2</td><td>Actualización y tipo inmutable</td><td>Persistencia de los cambios permitidos y bloqueo del cambio de tipo con el mensaje definido en la HU.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-05</td><td>Editar productos</td><td>S1-T08.3</td><td>Revisión de edición de productos</td><td>Evidencias de actualización válida y del intento de modificar el tipo de producto.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-07</td><td>Visualizar detalles de producto</td><td>S1-T09.1</td><td>Pantalla de detalle del producto</td><td>Presentación del tipo, nombre, descripción, código QR, stock total y precio del producto.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-07</td><td>Visualizar detalles de producto</td><td>S1-T09.2</td><td>Consulta y datos incompletos</td><td>Carga del producto desde Inventory y representación de datos ausentes mediante un guion.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-07</td><td>Visualizar detalles de producto</td><td>S1-T09.3</td><td>Revisión del detalle de producto</td><td>Evidencias de todos los datos requeridos y de la presentación de información incompleta.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-08</td><td>Buscar productos</td><td>S1-T10.1</td><td>Buscador y filtro de categoría</td><td>Campo de nombre y selección de categoría en el listado móvil de productos.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-08</td><td>Buscar productos</td><td>S1-T10.2</td><td>Filtrado del catálogo</td><td>Aplicación de los criterios de nombre y categoría sobre los productos del comerciante y actualización del listado.</td><td>3</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-08</td><td>Buscar productos</td><td>S1-T10.3</td><td>Revisión de búsquedas de productos</td><td>Evidencias de coincidencias por nombre y de resultados por categoría.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-03</td><td>Agregar lotes</td><td>S1-T11.1</td><td>Formulario de nuevo lote</td><td>Selección del producto asociado, cantidad y fecha del lote con acción de agregar.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-03</td><td>Agregar lotes</td><td>S1-T11.2</td><td>Registro y validación del lote</td><td>Persistencia del lote con cantidad y fecha válidas; bloqueo y mensajes de campos obligatorios omitidos.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-03</td><td>Agregar lotes</td><td>S1-T11.3</td><td>Revisión de registro de lotes</td><td>Evidencias de alta válida y de intento de registro con datos incompletos.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-06</td><td>Visualizar detalles de lotes</td><td>S1-T12.1</td><td>Pantalla de detalle del lote</td><td>Información del lote seleccionado y su producto asociado en la vista móvil.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-06</td><td>Visualizar detalles de lotes</td><td>S1-T12.2</td><td>Consulta y error de comunicación</td><td>Recuperación de los detalles y mensaje de carga fallida ante timeout o error 500.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-06</td><td>Visualizar detalles de lotes</td><td>S1-T12.3</td><td>Revisión del detalle de lote</td><td>Evidencias de consulta exitosa y del mensaje de error de comunicación definido en la HU.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-11</td><td>Detectar stock agotado</td><td>S1-T13.1</td><td>Reglas de stock bajo y agotado</td><td>Identificación de stock mayor a cero y menor o igual a 5 unidades o kg; identificación de lotes en cero y productos sin stock.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-11</td><td>Detectar stock agotado</td><td>S1-T13.2</td><td>Indicadores y listado de alertas</td><td>Contadores de la campana y de Sin Stock, con identificación del producto y lote afectados.</td><td>3</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-11</td><td>Detectar stock agotado</td><td>S1-T13.3</td><td>Revisión de límites de stock</td><td>Evidencias de alertas de stock bajo, lotes agotados y productos sin stock en sus lotes.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-13</td><td>Visualizar dashboard móvil de lotes</td><td>S1-T14.1</td><td>Dashboard móvil de lotes</td><td>Indicadores Total de Lotes, Lotes Vencidos y Sin Stock; resúmenes por producto y acceso a alertas.</td><td>2</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-13</td><td>Visualizar dashboard móvil de lotes</td><td>S1-T14.2</td><td>Resumen y contador de alertas</td><td>Conteo de lotes de productos existentes, stock total y número de lotes por producto; contador solo cuando existen alertas.</td><td>3</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-13</td><td>Visualizar dashboard móvil de lotes</td><td>S1-T14.3</td><td>Revisión del dashboard de lotes</td><td>Evidencias de indicadores, resúmenes y mensaje No hay alertas pendientes cuando no existen condiciones críticas.</td><td>1</td><td>Victor Laura</td><td>Por confirmar</td></tr>
<tr><td>US-37</td><td>Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td><td>S1-T15.1</td><td>Vinculación mediante enlace seguro</td><td>Acción Vincular WhatsApp, apertura de la autorización en WhatsApp Business y retorno a Entreprenly.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-37</td><td>Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td><td>S1-T15.2</td><td>Vinculación alternativa mediante QR</td><td>Presentación del QR para escaneo desde otro dispositivo y registro de la conexión confirmada para habilitar el chatbot.</td><td>3</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-37</td><td>Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td><td>S1-T15.3</td><td>Recuperación de QR expirado</td><td>Descarte del código vencido, mensaje de expiración y generación automática de un nuevo QR.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-37</td><td>Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td><td>S1-T15.4</td><td>Revisión de vinculación de WhatsApp</td><td>Evidencias de autorización por enlace, conexión por QR y recuperación del código expirado.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-38</td><td>Consultar estado de vinculación del chatbot</td><td>S1-T16.1</td><td>Indicador de estado del chatbot</td><td>Presentación de estado activo o desconectado y del número vinculado cuando corresponde.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-38</td><td>Consultar estado de vinculación del chatbot</td><td>S1-T16.2</td><td>Consulta de sesión y revinculación</td><td>Lectura del estado de conexión y habilitación de volver a vincular ante sesión expirada o cierre externo.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-38</td><td>Consultar estado de vinculación del chatbot</td><td>S1-T16.3</td><td>Revisión del estado de conexión</td><td>Evidencias de cuenta activa y de sesión desconectada con opción de revinculación.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-39</td><td>Visualizar conversaciones de clientes en la aplicación móvil</td><td>S1-T17.1</td><td>Listado móvil de conversaciones</td><td>Conversaciones ordenadas de la más reciente a la más antigua con el último mensaje disponible.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-39</td><td>Visualizar conversaciones de clientes en la aplicación móvil</td><td>S1-T17.2</td><td>Consulta de conversaciones y estado vacío</td><td>Carga de conversaciones de la cuenta vinculada y mensaje cuando todavía no existen conversaciones.</td><td>3</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-39</td><td>Visualizar conversaciones de clientes en la aplicación móvil</td><td>S1-T17.3</td><td>Revisión del listado de conversaciones</td><td>Evidencias del orden y último mensaje, y del estado sin actividad de clientes.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-40</td><td>Responder mensajes de clientes desde la aplicación móvil</td><td>S1-T18.1</td><td>Compositor de respuesta</td><td>Campo de mensaje y acción de envío en la conversación activa seleccionada.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-40</td><td>Responder mensajes de clientes desde la aplicación móvil</td><td>S1-T18.2</td><td>Envío y registro en el hilo</td><td>Bloqueo de mensajes vacíos, envío mediante WhatsApp y registro del mensaje enviado en la conversación.</td><td>3</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-40</td><td>Responder mensajes de clientes desde la aplicación móvil</td><td>S1-T18.3</td><td>Revisión de respuestas a clientes</td><td>Evidencias de entrega y registro de respuesta, y de intento de envío sin contenido.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-46</td><td>Validar comprobante de pago desde la aplicación móvil</td><td>S1-T19.1</td><td>Vista de comprobante y pedido</td><td>Presentación del comprobante reportado por el cliente, monto y detalles del pedido asociado.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-46</td><td>Validar comprobante de pago desde la aplicación móvil</td><td>S1-T19.2</td><td>Aprobación manual del pago</td><td>Registro de la aprobación con marca de tiempo y continuidad del flujo de confirmación del pedido.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-46</td><td>Validar comprobante de pago desde la aplicación móvil</td><td>S1-T19.3</td><td>Rechazo y notificación del motivo</td><td>Captura del motivo, registro del rechazo y coordinación con el bot para notificar al cliente los siguientes pasos.</td><td>2</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-46</td><td>Validar comprobante de pago desde la aplicación móvil</td><td>S1-T19.4</td><td>Revisión de validación de comprobantes</td><td>Evidencias de consulta, aprobación con fecha y hora, y rechazo con motivo y notificación.</td><td>1</td><td>Elynor Palma</td><td>Por confirmar</td></tr>
<tr><td>US-15</td><td>Seleccionar plan de suscripción</td><td>S1-T20.1</td><td>Selector del Plan Control</td><td>Presentación del plan y señal visual de la opción elegida con acción de continuar.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-15</td><td>Seleccionar plan de suscripción</td><td>S1-T20.2</td><td>Selección y bloqueo sin plan</td><td>Registro del plan seleccionado y bloqueo del avance con mensaje cuando no existe selección.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-15</td><td>Seleccionar plan de suscripción</td><td>S1-T20.3</td><td>Revisión de selección del plan</td><td>Evidencias de selección del Plan Control y del intento de continuar sin plan.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-16</td><td>Iniciar proceso de suscripción</td><td>S1-T21.1</td><td>Entrada al proceso de suscripción</td><td>Acción de continuar desde el plan seleccionado hacia el recorrido de contratación.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-16</td><td>Iniciar proceso de suscripción</td><td>S1-T21.2</td><td>Inicio y navegación a facturación</td><td>Registro del inicio con Plan Control y acceso a facturación; bloqueo cuando no se seleccionó un plan.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-16</td><td>Iniciar proceso de suscripción</td><td>S1-T21.3</td><td>Revisión del inicio de suscripción</td><td>Evidencias de continuidad con plan seleccionado y del mensaje al intentar iniciar sin selección.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-17</td><td>Registrar datos de facturación</td><td>S1-T22.1</td><td>Formulario de datos de facturación</td><td>Campos de facturación y acción Continuar al pago con mensajes asociados a los campos inválidos.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-17</td><td>Registrar datos de facturación</td><td>S1-T22.2</td><td>Validación y registro de facturación</td><td>Persistencia de información válida y acceso al resumen previo al cobro; bloqueo de datos inválidos.</td><td>3</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-17</td><td>Registrar datos de facturación</td><td>S1-T22.3</td><td>Revisión de datos de facturación</td><td>Evidencias de registro válido y de información inválida que impide continuar al pago.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-18</td><td>Procesar cobro de suscripción</td><td>S1-T23.1</td><td>Resumen y acción de pago</td><td>Resumen previo al cobro y acción Pagar y activar suscripción después del registro de facturación.</td><td>3</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-18</td><td>Procesar cobro de suscripción</td><td>S1-T23.2</td><td>Cobro y resultado de activación</td><td>Integración con el servicio de cobro; registro del pago aprobado y bloqueo de activación ante rechazo o datos inválidos.</td><td>3</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-18</td><td>Procesar cobro de suscripción</td><td>S1-T23.3</td><td>Revisión del cobro de suscripción</td><td>Evidencias de cobro aprobado y de error con motivo visible dentro de la misma vista.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-20</td><td>Visualizar panel de suscripción</td><td>S1-T24.1</td><td>Panel móvil de suscripción</td><td>Datos generales del plan actual y acciones relacionadas con su gestión.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-20</td><td>Visualizar panel de suscripción</td><td>S1-T24.2</td><td>Consulta de plan y alternativa Free</td><td>Carga del plan vigente; presentación del Plan Free por defecto y acceso a actualizar al Plan Control.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-20</td><td>Visualizar panel de suscripción</td><td>S1-T24.3</td><td>Revisión del panel de suscripción</td><td>Evidencias del plan actual y de la vista del usuario con Plan Free.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-21</td><td>Consultar estado de suscripción</td><td>S1-T25.1</td><td>Etiqueta de estado de suscripción</td><td>Representación del estado real de la suscripción en su resumen móvil.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-21</td><td>Consultar estado de suscripción</td><td>S1-T25.2</td><td>Correspondencia de estados del plan</td><td>Consulta y mapeo de Activa, cancelada, cancelación programada y Plan Free sin presentar estados incorrectos.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-21</td><td>Consultar estado de suscripción</td><td>S1-T25.3</td><td>Revisión de estados de suscripción</td><td>Evidencias de suscripción vigente y de cada estado no activo previsto por la HU.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-22</td><td>Renovar suscripción</td><td>S1-T26.1</td><td>Acción y confirmación de renovación</td><td>Acceso a Renovar suscripción y confirmación de la operación desde el resumen.</td><td>2</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-22</td><td>Renovar suscripción</td><td>S1-T26.2</td><td>Renovación y elegibilidad del plan</td><td>Registro y actualización del vencimiento; bloqueo para Plan Free o suscripción no renovable con mensaje de contratar o reactivar.</td><td>3</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-22</td><td>Renovar suscripción</td><td>S1-T26.3</td><td>Revisión de renovación de suscripción</td><td>Evidencias de renovación válida con nueva fecha y de renovación no permitida.</td><td>1</td><td>Enrique Villon</td><td>Por confirmar</td></tr>
<tr><td>US-28</td><td>Buscar productos en el inventario y validar su tipo de medida</td><td>S1-T27.1</td><td>Buscador con autocompletado</td><td>Sugerencias de productos en tiempo real y mensaje Producto no encontrado cuando no existen coincidencias.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-28</td><td>Buscar productos en el inventario y validar su tipo de medida</td><td>S1-T27.2</td><td>Selección por tipo de medida</td><td>Cierre del buscador y apertura de Registrar Peso para Weight Product o Registrar Cantidad para Unit Product.</td><td>3</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-28</td><td>Buscar productos en el inventario y validar su tipo de medida</td><td>S1-T27.3</td><td>Revisión de búsqueda para ventas</td><td>Evidencias de producto por peso, producto unitario y búsqueda sin coincidencias.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-29</td><td>Registrar la cantidad de unidades en el Ticket de Venta</td><td>S1-T28.1</td><td>Diálogo Registrar Cantidad</td><td>Nombre del producto, stock disponible, teclado numérico y acción Confirmar cantidad para unidades enteras.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-29</td><td>Registrar la cantidad de unidades en el Ticket de Venta</td><td>S1-T28.2</td><td>Validación de stock y alta en ticket</td><td>Cálculo del subtotal y adición del ítem; bloqueo por stock insuficiente manteniendo el diálogo abierto para corregir.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-29</td><td>Registrar la cantidad de unidades en el Ticket de Venta</td><td>S1-T28.3</td><td>Revisión de cantidades unitarias</td><td>Evidencias de cantidad válida con subtotal y de cantidad superior al stock sin adición al ticket.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-31</td><td>Gestionar el desglose y cálculo del Ticket de Venta</td><td>S1-T29.1</td><td>Desglose del Ticket de Venta</td><td>Lista de productos, cantidades o pesos, subtotales y monto total acumulado.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-31</td><td>Gestionar el desglose y cálculo del Ticket de Venta</td><td>S1-T29.2</td><td>Cálculo y eliminación de ítems</td><td>Subtotal por precio y cantidad o peso; eliminación inmediata con recálculo del total y conteo de ítems sin confirmación adicional.</td><td>3</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-31</td><td>Gestionar el desglose y cálculo del Ticket de Venta</td><td>S1-T29.3</td><td>Revisión de cálculos del ticket</td><td>Evidencias de subtotales y total, y de eliminación de un producto con recálculo del detalle.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-32</td><td>Seleccionar el método de pago para la transacción</td><td>S1-T30.1</td><td>Selector de método de pago</td><td>Opciones Efectivo y canal digital que agrupa Tarjeta, Yape y Plin para el ticket.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-32</td><td>Seleccionar el método de pago para la transacción</td><td>S1-T30.2</td><td>Registro del canal y validación</td><td>Conservación del medio elegido para la caja; bloqueo de finalización sin método con mensaje visible durante 3 segundos.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-32</td><td>Seleccionar el método de pago para la transacción</td><td>S1-T30.3</td><td>Revisión de métodos de pago</td><td>Evidencias de selección de los canales y del intento de finalizar sin método de pago.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-33</td><td>Finalizar la venta y emitir el comprobante de pago</td><td>S1-T31.1</td><td>Finalización y comprobante de venta</td><td>Acción Finalizar Venta y presentación del resultado y comprobante de la transacción.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-33</td><td>Finalizar la venta y emitir el comprobante de pago</td><td>S1-T31.2</td><td>Registro de venta y actualización de caja</td><td>Integración con /api/v1/sales y /api/v1/cash-registers; suma al canal elegido, bloqueo de ticket vacío y limpieza tras éxito.</td><td>3</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-33</td><td>Finalizar la venta y emitir el comprobante de pago</td><td>S1-T31.3</td><td>Revisión del cierre de venta</td><td>Evidencias del registro y caja, diálogo Venta Exitosa con cierre automático a los 2 segundos o manual, y mensaje de ticket vacío durante 3 segundos.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-36</td><td>Monitorear el Resumen de Caja en tiempo real dentro del panel de ventas</td><td>S1-T32.1</td><td>Resumen de Caja en Ventas</td><td>Valores de Efectivo, canal digital Tarjeta / Yape / Plin y Total del día en el panel de ventas.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-36</td><td>Monitorear el Resumen de Caja en tiempo real dentro del panel de ventas</td><td>S1-T32.2</td><td>Carga y actualización de saldos diarios</td><td>Consulta de /api/v1/cash-registers al ingresar o regresar a Ventas y actualización automática tras cada transacción.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-36</td><td>Monitorear el Resumen de Caja en tiempo real dentro del panel de ventas</td><td>S1-T32.3</td><td>Revisión de persistencia de caja</td><td>Evidencias de ventas sucesivas y de conservación de saldos al navegar entre secciones.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-97</td><td>Consultar el historial de ventas del día</td><td>S1-T33.1</td><td>Historial diario y selector de fecha</td><td>Transacciones de la más reciente a la más antigua con hora, método de pago, cantidad de productos y total en la moneda configurada.</td><td>2</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-97</td><td>Consultar el historial de ventas del día</td><td>S1-T33.2</td><td>Consulta por día de negocio</td><td>Consulta de /api/v1/sales por fecha y actualización al seleccionar otro día; estados Cargando ventas y No hay ventas registradas para este día.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
<tr><td>US-97</td><td>Consultar el historial de ventas del día</td><td>S1-T33.3</td><td>Revisión del historial de ventas</td><td>Evidencias del día con ventas, cambio de fecha y día sin registros con transición desde el estado de carga.</td><td>1</td><td>Anderson Gonza</td><td>Por confirmar</td></tr>
  </tbody>
</table>

<!-- pdf:only
\endgroup
-->

**Detalle de las estimaciones:** los **103 Work-items** suman **163 horas propuestas**. El desglose conserva el total propuesto previamente para cada HU y distribuye ese esfuerzo entre sus subtareas. Estas horas sirven como base para el refinamiento y la revisión de capacidad del equipo; no acreditan tiempo invertido ni reemplazan los 82 story points de las HUs seleccionadas. Los nombres abreviados de la columna Assigned To corresponden a los integrantes identificados en la sección 4.2.1.2.

**Distribución de Work-items por responsable**

| Responsable | Bounded Context / aspecto | HUs | Work-items | Horas propuestas |
| :---: | :---: | :---: | :---: | :---: |
| Lionel Chavez | Profile y navegación | 6 | 20 | 24 |
| Victor Laura | Inventory | 8 | 24 | 40 |
| Elynor Palma | Chatbot | 5 | 17 | 30 |
| Enrique Villon | Subscription | 7 | 21 | 35 |
| Anderson Gonza | Sales | 7 | 21 | 34 |
| **Total** | **Cinco aspectos** | **33** | **103** | **163** |

**Trabajo transversal del Sprint 1**

| Work-item | Entregable | Responsable | Estado del registro |
| :---: | :---: | :---: | :---: |
| S1-X01 | Repositorios de landing y backend reutilizados bajo Lernen Labs | Lionel, con revisión del equipo | Base disponible |
| S1-X02 | Lineamientos de estilo móvil y referencia común en Figma | Lionel y Elynor, con revisión del equipo | Documentado |
| S1-X03 | Wireframes, mock-ups, wireflows y user flows de Profile | Lionel | Diseños disponibles; selección del sprint: US-62, US-63, US-67 y US-68 |
| S1-X04 | Integración de los contextos con IAM, navegación y contratos compartidos | Cada responsable de BC y Lionel en la consolidación | En seguimiento |
| S1-X05 | Evidencias de ejecución, servicios y despliegue para la meta backend del TB1 | Cada responsable de BC | Por consolidar en las secciones 4.2.1.4 a 4.2.1.9 |
| S1-X06 | Registro de Versiones, Student Outcome e integración del informe | Lionel | Actualización documental del TB1 |

El estado **To Review** de Profile y navegación se sustenta en la integración registrada en el frontend, incluida la [implementación de pantallas, preferencias, notificaciones y navegación](https://github.com/LernenLabs/adm-entreprenly-frontend/commit/9e25a06) y la [incorporación de Reddit Sans](https://github.com/LernenLabs/adm-entreprenly-frontend/commit/3bef09c). Su aceptación funcional se registra con la evidencia del Sprint Review. Las tareas S1-X01 a S1-X06 son actividades de soporte y consolidación; no incorporan nuevas HUs ni duplican las estimaciones del Product Backlog.

**Trazabilidad de Profile:** los diseños se consultan en la página [Mobile de Entreprenly](https://www.figma.com/design/aZv1YLCkMN17TLsgGsDJdR/Entreprenly?node-id=1820-2380). Los [wireflows](https://www.figma.com/design/aZv1YLCkMN17TLsgGsDJdR/Entreprenly?node-id=1859-9972) y los [user flows](https://www.figma.com/design/aZv1YLCkMN17TLsgGsDJdR/Entreprenly?node-id=1859-9974) se encuentran separados por HU. La implementación de US-67 se revisa con cada preferencia y US-68 con la configuración de avisos y el permiso del sistema.


#### 4.2.1.4. Development Evidence for Sprint Review

Evidencias del Sprint 1 para Inventory BC. El diseño (wireframes, mockups y wireflows) ya está documentado en 3.1.4; aquí solo se mapea cada historia a pantallas, flujos y servicios.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Historia</th><th>Pantallas y flujos (ver 3.1.4)</th><th>Evidencia de avance</th>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-01 Agregar productos</td><td>Agregar con validación de obligatorios y toast de registro.</td><td>Endpoints <code>POST /api/v1/inventory/unit-products</code> y <code>weight-products</code>.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-05 Editar productos</td><td>Detalle con precio, stock y lotes asociados hacia editar.</td><td><code>PUT /api/v1/inventory/unit-products/{id}</code> con invariantes de catálogo.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-07 Visualizar detalles de producto</td><td>Detalle con alerta de stock bajo y lotes activo/agotado.</td><td><code>GET /api/v1/inventory/unit-products/{id}</code> con lotes ordenados por vencimiento.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-08 Buscar productos</td><td>Búsqueda en tiempo real y estado sin resultados con opción de agregar.</td><td>Consulta filtrada por propietario y texto.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-03 Agregar lotes</td><td>Crear lote con producto, número, cantidad, ingreso y vencimiento sin fechas pasadas.</td><td><code>POST /api/v1/inventory/unit-lots</code> y <code>weight-lots</code>.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-06 Visualizar detalles de lotes</td><td>Detalle con estado, fechas y cantidades actual/inicial.</td><td><code>GET /api/v1/inventory/lots</code> y por id.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-11 Detectar stock agotado</td><td>Aviso de agotado que retira el producto de la oferta del chatbot.</td><td><code>GET /api/v1/inventory/stock-alerts</code> con severidad crítica.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">US-13 Dashboard móvil de lotes</td><td>Contadores Activos, Por vencer y Vencidos con banners amarillo/rojo.</td><td>Panel alimentado por alertas y lotes próximos a vencer.</td>
  </tr>
</table>

#### 4.2.1.5. Testing Suite Evidence for Sprint Review

Por completar.

#### 4.2.1.6. Execution Evidence for Sprint Review

- US-01 y US-05: agregar con obligatorios y editar precargado con guardado y toast.
- US-07 y US-08: detalle con alerta y búsqueda con 2 resultados o estado vacío para agregar.
- US-03 y US-06: crear lote sin fechas pasadas y detalle con cantidades y fechas.
- US-11 y US-13: agotado con aviso y retiro de oferta más dashboard con contadores y banners.

Ver diseño en 3.1.4; servicios en 4.2.1.7 y despliegue en 4.2.1.8.

#### 4.2.1.7. Services Documentation Evidence for Sprint Review

Documentación OpenAPI verificada del backend en avance:

- Swagger UI: `https://adm-entreprenly-backend.onrender.com/swagger-ui/index.html`.
- OpenAPI JSON: `https://adm-entreprenly-backend.onrender.com/v3/api-docs`.
- Base local: `http://localhost:8092/swagger-ui.html` con API bajo `/api/v1`.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Grupo</th><th>Endpoints</th>
  </tr>
  <tr><td style="vertical-align:middle; text-align:center;">Inventory</td><td><code>GET/POST /api/v1/inventory/unit-products</code>, <code>weight-products</code>, <code>unit-lots</code>, <code>lots</code>, <code>stock-alerts</code>.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Transversales</td><td>Auth, ventas, suscripción, perfil y chatbot según avance del backend.</td></tr>
</table>

- El avance incluye contextos `inventory` (productos y lotes por unidad/peso con alertas) y base para `iam, sales, subscription, profile, chatbot`.
- Abrir Swagger en nube antes de la demo por el retardo del primer arranque en plan gratuito.

#### 4.2.1.8. Software Deployment Evidence for Sprint Review

Despliegues reutilizados y verificados:

- Backend: `https://adm-entreprenly-backend.onrender.com/swagger-ui/index.html` responde con la documentación de servicios.
- Landing: `https://lernenlabs.github.io/adm-entreprenly-landing/` responde con el recorrido Hero, Problema, Features, How it works, Beneficios, Comparativa, Planes, FAQ y Footer.
- Flujo: servicio Docker en Render con variables de 4.1.4; abrir primero Swagger en nube y luego validar endpoints de Inventory del Sprint 1.

#### 4.2.1.9. Team Collaboration Insights during Sprint

Por completar.

## 4.3. Validation Interviews

Las entrevistas de validación recogen la experiencia de los dos segmentos objetivo: los comerciantes durante la gestión del negocio desde la aplicación móvil y los clientes finales durante la compra por WhatsApp. Su propósito es identificar dificultades de comprensión, navegación y ejecución de tareas, y relacionar los hallazgos con las necesidades identificadas en el capítulo II. Las preguntas se presentan por segmento en la sección 4.3.1; las respuestas y evidencias se registran en la sección 4.3.2 y sustentan la evaluación de la sección 4.3.3.

### 4.3.1. Diseño de Entrevistas

**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**

1. Después de explorar Entreprenly, ¿qué tareas de su negocio considera que podría realizar con la aplicación?

2. ¿Cómo fue su experiencia al moverse entre Inicio, Inventario, Ventas, Pedidos y Mi perfil?

3. ¿Qué textos, botones o símbolos le resultaron confusos durante el recorrido?

4. ¿Qué dificultades encontró al registrar un producto por unidad o por peso y buscarlo en el inventario?

5. ¿Qué información del resumen de lotes le ayuda a reconocer productos sin stock o próximos a vencer?

6. ¿Cómo comprobó que los productos, las cantidades, el total y el medio de pago de una venta quedaron registrados correctamente?

7. ¿Cómo reconoció si su cuenta de WhatsApp estaba vinculada y si una respuesta al cliente había sido enviada?

8. ¿Qué información necesitaría ver en un pedido para decidir si aprueba o rechaza su comprobante de pago?

9. ¿Qué dudas le surgieron al comparar los planes y revisar los pasos para contratar o renovar una suscripción?

10. ¿Cómo fue su experiencia al actualizar su perfil y configurar las preferencias y notificaciones de la aplicación?

**Segmento 2: Clientes Finales**

1. Después de recorrer la compra por WhatsApp, ¿cómo explicaría los pasos para realizar un pedido en Entreprenly?

2. ¿Cómo interpretó la información sobre los productos, sus precios y las cantidades disponibles durante la conversación?

3. ¿Qué dificultades encontró al consultar por un producto y entender la respuesta del chatbot?

4. ¿Cómo fue su experiencia al indicar la cantidad de un producto vendido por unidad o por peso?

5. ¿Qué información del resumen del pedido le permitió comprobar que los productos, las cantidades y el total correspondían a su compra?

6. Al recibir un aviso de producto agotado o cantidad insuficiente, ¿qué entendió que podía hacer para continuar con su pedido?

7. ¿Qué dudas le surgieron al revisar las instrucciones para pagar su pedido?

8. ¿Cómo comprobó que el comprobante de pago que envió por WhatsApp había sido recibido?

9. ¿Cómo interpretó los mensajes de aprobación o rechazo del pago y el estado en que quedó su pedido?

10. ¿Qué cambiaría del recorrido de compra por WhatsApp para utilizarlo en sus próximas compras?

### 4.3.2. Registro de Entrevistas

Por completar.

### 4.3.3. Evaluaciones según heurísticas

Por completar.
