# Capítulo III: Solution UI/UX Design

Por completar.

## 3.1. Product Design

Por completar.

### 3.1.1. Style Guidelines

Por completar.

#### 3.1.1.1. General Style Guidelines

Por completar.

### 3.1.2. Information Architecture
La arquitectura de información de Entreprenly se compone de dos espacios complementarios: la **Landing Page**, que funciona como un recorrido comercial claro para comerciantes de bodegas, minimarkets y puestos de mercado, y la **aplicación móvil**, orientada al uso operativo diario del negocio. En la Landing Page, el objetivo es que un usuario no técnico pueda entender rápidamente el problema que resuelve la solución, revisar sus funcionalidades principales, comparar el valor frente a alternativas manuales o genéricas, evaluar planes y avanzar hacia el registro o inicio de sesión. En la aplicación móvil, el objetivo es que el comerciante acceda a sus módulos de inventario, ventas, pedidos del chatbot, suscripción y perfil con la menor cantidad de toques posible y priorizando el uso con una sola mano.

#### 3.1.2.1. Organization Systems
**Landing Page**
 
Para la Landing Page se emplea una organización **jerárquica y secuencial**. Es jerárquica porque el usuario puede acceder a secciones clave desde la barra de navegación principal, y es secuencial porque el contenido está ordenado como una narrativa de conversión: primero se presenta la propuesta de valor, luego el problema, después la solución, sus beneficios, la comparación, los planes y finalmente el llamado a la acción.
 
| Nivel       | Sección                   | Propósito dentro de la arquitectura                                                                             |
| ----------- | ------------------------- | --------------------------------------------------------------------------------------------------------------- |
| Global      | Header (Navbar)           | Permite acceso rápido a las secciones principales y a la pantalla de inicio de sesión.                          |
| Principal   | Hero section              | Presenta la propuesta de valor de Entreprenly y ofrece los primeros llamados a la acción.                       |
| Contextual  | Problem section           | Explica los problemas operativos del comercio pequeño: pedidos dispersos, inventario manual y caja desordenada. |
| Funcional   | Main features section     | Agrupa las funcionalidades principales: WhatsApp, inventario, balanza IoT y conciliación financiera.            |
| Explicativo | How it works section      | Ordena el proceso de adopción en pasos simples para reducir la percepción de complejidad.                       |
| Persuasivo  | Merchant benefits section | Resume los beneficios directos para el comerciante en términos de control, rapidez y reducción de errores.      |
| Confianza   | Client trust section      | Explica cómo la solución también mejora la experiencia del cliente final.                                       |
| Comparativo | Comparativa breve section | Contrasta la gestión manual, los sistemas genéricos y Entreprenly.                                              |
| Comercial   | Planes section            | Presenta los planes disponibles y dirige al usuario hacia el registro.                                          |
| Soporte     | FAQ section               | Resuelve dudas frecuentes antes de que el usuario tome una decisión.                                            |
| Conversión  | Next step section         | Refuerza el llamado final para registrarse o revisar los planes.                                                |
| Cierre      | Footer section            | Repite accesos clave, redes sociales, enlaces de exploración y datos de marca.                                  |
 
Además de esta estructura informativa, la landing contempla accesos transaccionales hacia **registro** e **inicio de sesión**. Estos flujos se mantienen separados de la narrativa principal para no interrumpir la lectura comercial, pero permanecen disponibles desde los CTAs y el header.
 
**Aplicación móvil**
 
Para la aplicación móvil se emplea una organización **centrada en tareas y de jerarquía plana**. Es plana porque los módulos principales están a un solo toque de distancia mediante una barra de navegación inferior (Bottom Tab Bar), y está centrada en tareas porque el agrupamiento responde a la frecuencia de uso real del comerciante: verificar stock, registrar ventas y atender pedidos del chatbot.
 
| Nivel          | Sección                | Propósito dentro de la arquitectura                                                                  |
| -------------- | ---------------------- | ---------------------------------------------------------------------------------------------------- |
| Global         | Bottom Tab Bar         | Acceso permanente a los cinco destinos principales, visible en todas las pantallas principales.      |
| Principal      | Inicio (Dashboard)     | Resumen operativo del día: ventas, resumen de caja, alertas de inventario y pedidos pendientes.      |
| Operativo      | Inventario             | Gestión de productos y lotes mediante pestañas internas, con alertas de stock y vencimiento.         |
| Operativo      | Vender (POS)           | Registro de ventas presenciales, optimizado para uso con una sola mano.                              |
| Conversacional | Pedidos                | Bandeja de conversaciones de WhatsApp y pedidos generados por el chatbot.                            |
| Secundario     | Más                    | Agrupa funciones de menor frecuencia de uso: Suscripción, Mi cuenta y Ayuda.                         |
| Comercial      | Suscripción            | Gestión del Plan Free y del Plan Control.                                                            |
| Contextual     | Mi cuenta              | Gestión de datos personales, datos del negocio, preferencias y cierre de sesión.                     |
| Soporte        | Ayuda                  | Preguntas frecuentes y reporte de problemas.                                                         |
 
La barra inferior se limita a cinco destinos, cantidad recomendada para garantizar áreas táctiles cómodas en pantallas de 360 a 430 px de ancho, mientras que las funciones de menor frecuencia se agrupan en la sección "Más" para evitar saturar la navegación principal.


#### 3.1.2.2. Labelling Systems

 
**Landing Page**
 
El sistema de etiquetado utiliza términos breves, directos y orientados a la acción. Las etiquetas evitan lenguaje técnico innecesario y priorizan conceptos familiares para el comerciante, como inventario, pedidos, caja, beneficios, planes y dudas frecuentes.
 
| Etiqueta                 | Tipo                  | Uso dentro de la landing                                                            |
| ------------------------ | --------------------- | ----------------------------------------------------------------------------------- |
| **Cómo funciona**        | Navegación principal  | Lleva al usuario a la explicación paso a paso de adopción del sistema.              |
| **Beneficios**           | Navegación principal  | Dirige a la sección donde se resumen los beneficios operativos para el comerciante. |
| **Planes**               | Navegación principal  | Permite revisar la propuesta comercial y elegir entre Plan Free y Plan Control.     |
| **FAQ**                  | Navegación principal  | Abre la sección de preguntas frecuentes para resolver dudas antes del registro.     |
| **Iniciar sesión**       | Acción de acceso      | Permite que un usuario existente entre a su cuenta.                                 |
| **Comenzar ahora**       | CTA principal         | Dirige al visitante hacia el flujo de registro.                                     |
| **Ver planes**           | CTA secundario        | Lleva directamente a la sección de planes para comparar opciones.                   |
| **Plan Free**            | Etiqueta comercial    | Identifica el plan gratuito para empezar con inventario básico.                     |
| **Plan Control**         | Etiqueta comercial    | Identifica el plan de pago con mayor control operativo.                             |
| **Comparativa breve**    | Encabezado de sección | Presenta la diferencia entre gestión manual, sistemas genéricos y Entreprenly.      |
| **Da el siguiente paso** | CTA final             | Refuerza la conversión al final del recorrido de la landing.                        |
| **Explorar**             | Footer                | Agrupa enlaces internos hacia secciones informativas.                               |
| **Siguiente paso**       | Footer                | Agrupa acciones de conversión como registrarse, comparar planes o resolver dudas.   |
 
También se emplean etiquetas de accesibilidad en elementos interactivos, como el botón de menú móvil, el logo de Entreprenly y los accesos a redes sociales. Esto permite que la navegación sea más clara tanto visualmente como para lectores de pantalla.
 
**Aplicación móvil**
 
En la aplicación móvil se mantiene la misma terminología familiar para el comerciante, utilizando etiquetas de una sola palabra en la barra inferior para asegurar su legibilidad junto a los íconos.
 
| Etiqueta                 | Tipo               | Uso dentro de la aplicación                                                          |
| ------------------------ | ------------------ | ------------------------------------------------------------------------------------ |
| **Inicio**               | Bottom Tab Bar     | Abre el resumen operativo del día.                                                   |
| **Inventario**           | Bottom Tab Bar     | Abre el módulo de productos y lotes.                                                 |
| **Vender**               | Bottom Tab Bar     | Inicia el registro de una venta presencial; se presenta como botón central destacado.|
| **Pedidos**              | Bottom Tab Bar     | Abre la bandeja de pedidos y conversaciones del chatbot.                             |
| **Más**                  | Bottom Tab Bar     | Agrupa Suscripción, Mi cuenta y Ayuda.                                               |
| **Productos / Lotes**    | Pestañas internas  | Separan las dos vistas del módulo de inventario.                                     |
| **Cobrar**               | Acción principal   | Avanza del ticket de venta a la selección del método de pago.                        |
| **Finalizar venta**      | Acción principal   | Registra la venta y genera el comprobante.                                           |
| **Aprobar pago / Rechazar** | Acción de pedido | Valida o rechaza el comprobante enviado por el cliente.                              |
| **Activa, Vencido, Próximo a vencer** | Estado de lote | Indican la condición de cada lote.                                         |
| **Pendiente, Esperando validación, Confirmado, Cancelado** | Estado de pedido | Indican la etapa de cada pedido del chatbot.       |
 
Se incorporan además microtextos de apoyo para los gestos de la aplicación, como "Desliza para eliminar" y "Desliza hacia abajo para actualizar", así como etiquetas de accesibilidad en todos los íconos de la barra inferior y botones de acción para su correcta lectura con TalkBack y VoiceOver.
 

#### 3.1.2.3. SEO Tags and Meta Tags

**Landing Page**
 
La Landing Page incluye metadatos orientados a indexación básica, compatibilidad móvil, carga de recursos visuales y reconocimiento de marca. Estos elementos ayudan a que la página sea interpretada correctamente por navegadores, buscadores y dispositivos móviles.
 
**Título de la página:**
 
```html
<title>Entreprenly | Smart Retail para pequeños comercios</title>
```
 
**Codificación de caracteres:**
 
```html
<meta charset="UTF-8" />
```
 
**Configuración responsive:**
 
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
```
 
**Descripción SEO:**
 
```html
<meta
  name="description"
  content="Entreprenly conecta WhatsApp, inventario validado y control financiero para pequeños comercios de alimentos frescos."
/>
```
 
**Ícono de marca:**
 
```html
<link rel="icon" type="image/png" href="./assets/brand-icon.png" />
```
 
**Optimización de carga tipográfica:**
 
```html
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
```
 
Para una versión desplegada en producción, se recomienda complementar estos metadatos con etiquetas de autor, copyright y Open Graph para mejorar la presentación de la landing cuando sea compartida en redes sociales o aplicaciones de mensajería.
 
```html
<meta name="author" content="Kauflink" />
<meta name="copyright" content="Entreprenly by Kauflink" />
<meta
  property="og:title"
  content="Entreprenly | Smart Retail para pequeños comercios"
/>
<meta
  property="og:description"
  content="Controla inventario, pedidos por WhatsApp y caja diaria desde un solo ecosistema."
/>
<meta property="og:type" content="website" />
```
 
**Aplicación móvil**
 
Para la aplicación móvil, los metadatos equivalentes corresponden a la ficha de la aplicación en las tiendas (App Store Optimization) y a los enlaces profundos (deep links) que permiten abrir pantallas específicas desde notificaciones o enlaces externos.
 
**Metadatos de la ficha en Google Play / App Store:**
 
```
Nombre de la app: Entreprenly — Gestión para tu negocio
Descripción corta: Inventario, ventas y pedidos por WhatsApp en una sola app.
Categoría: Negocios / Productividad
Palabras clave: inventario bodega, ventas minimarket, pos peru, whatsapp business, balanza inteligente
Ícono: app-icon-512.png (adaptive icon)
Capturas de pantalla: Inicio, Vender, Inventario con alertas, Pedidos
```
 
**Deep links:**
 
```
entreprenly://inicio
entreprenly://vender
entreprenly://inventario/producto/{id}
entreprenly://inventario/lotes?filtro=por-vencer
entreprenly://pedidos/{id}
```
 
**App Links (Android):**
 
```json
{
  "relation": ["delegate_permission/common.handle_all_urls"],
  "target": {
    "namespace": "android_app",
    "package_name": "pe.entreprenly.app",
    "sha256_cert_fingerprints": ["..."]
  }
}
```
 
Estos enlaces permiten que una notificación push, como "Tienes un nuevo pedido por WhatsApp", abra directamente el detalle del pedido correspondiente, y que los botones "Comenzar ahora" e "Iniciar sesión" de la landing dirijan al usuario a la aplicación instalada o a su ficha en la tienda.

#### 3.1.2.4. Searching Systems

 
**Landing Page**
 
La Landing Page no incorpora un buscador global porque su profundidad de contenido es baja y su objetivo principal es guiar al usuario hacia la conversión. En su lugar, utiliza un sistema de **descubrimiento dirigido**, donde la información se encuentra mediante navegación por secciones, CTAs y bloques comparativos.
 
| Mecanismo                   | Funcionamiento                                                                                                     | Sección relacionada                    |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------ | -------------------------------------- |
| Navegación por anchors      | Permite saltar directamente a secciones clave mediante enlaces internos.                                           | Cómo funciona, Beneficios, Planes, FAQ |
| Comparación estructurada    | Ayuda al usuario a identificar rápidamente la diferencia entre métodos manuales, sistemas genéricos y Entreprenly. | Comparativa breve                      |
| Tarjetas de funcionalidades | Agrupan información por temas para que el usuario encuentre rápido el valor principal de la solución.              | Main features section                  |
| Acordeones de preguntas     | Permiten consultar dudas frecuentes sin abandonar la página ni cargar una vista adicional.                         | FAQ section                            |
| CTAs contextuales           | Dirigen al usuario hacia registro o planes según el momento del recorrido.                                         | Hero, Planes, Next step                |
 
Este enfoque es suficiente para la versión actual porque la página funciona como una landing de presentación y conversión, no como un repositorio de contenidos. Si en el futuro se agregan artículos, documentación, casos de uso o centro de ayuda, se podría incorporar un buscador específico para recursos y preguntas frecuentes.
 
**Aplicación móvil**
 
La aplicación móvil sí incorpora mecanismos de búsqueda, ya que el comerciante gestiona catálogos de productos y listas de pedidos extensas desde una pantalla reducida. La búsqueda se limita al módulo activo para mantener resultados relevantes.
 
| Mecanismo               | Funcionamiento                                                                                         | Sección relacionada        |
| ----------------------- | ------------------------------------------------------------------------------------------------------ | -------------------------- |
| Búsqueda por módulo     | Campo de búsqueda con filtrado en tiempo real a medida que se escribe cada carácter.                   | Inventario, Vender, Pedidos |
| Búsqueda por voz        | Permite dictar el nombre del producto mediante el reconocimiento de voz del sistema operativo.         | Inventario, Vender         |
| Escaneo de código QR    | Usa la cámara del dispositivo para localizar un producto al instante sin necesidad de escribir.        | Inventario, Vender         |
| Filtros rápidos (chips) | Chips horizontales deslizables para filtrar por categoría o estado.                                    | Inventario, Pedidos        |
| Ordenamiento automático | Los lotes próximos a vencer y los pedidos pendientes de validación se muestran primero.               | Lotes, Pedidos             |
| Acordeones de preguntas | Permiten consultar dudas frecuentes sin salir de la pantalla.                                          | Ayuda                      |
 
#### 3.1.2.5. Navigation Systems
 
**Landing Page**
 
El sistema de navegación se basa en una combinación de enlaces internos, CTAs de conversión y accesos transaccionales. La navegación principal está ubicada en el header y se mantiene enfocada en las secciones más importantes para la toma de decisión.
 
| Elemento de navegación | Destino           | Función                                              |
| ---------------------- | ----------------- | ---------------------------------------------------- |
| Logo de Entreprenly    | `#top`            | Retorna al inicio de la landing.                     |
| Cómo funciona          | `#como-funciona`  | Explica el proceso de adopción del sistema.          |
| Beneficios             | `#beneficios`     | Presenta beneficios operativos para el comerciante.  |
| Planes                 | `#planes`         | Muestra las opciones comerciales disponibles.        |
| FAQ                    | `#faq`            | Resuelve dudas frecuentes.                           |
| Iniciar sesión         | `./login.html`    | Lleva al acceso de usuarios registrados.             |
| Comenzar ahora         | `./register.html` | Lleva al registro de nueva cuenta.                   |
| Ver planes             | `#planes`         | Desplaza al usuario a la sección comercial.          |
| Da el siguiente paso   | `./register.html` | Refuerza el cierre de conversión desde el CTA final. |
 
La navegación responsive conserva los mismos destinos en dispositivos móviles mediante un menú desplegable. Esto permite mantener consistencia entre escritorio y móvil sin duplicar rutas ni cambiar el significado de las etiquetas.
 
Los flujos principales de navegación son los siguientes:
 
| Flujo                                           | Recorrido esperado                                                                               |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Visitante nuevo que quiere entender la solución | Hero section → Problem section → Main features section → How it works section → Benefits section |
| Visitante que evalúa precio                     | Hero section → Ver planes → Planes section → Comenzar ahora                                      |
| Visitante con dudas                             | Header → FAQ → Resolver dudas → Planes o Registro                                                |
| Usuario que ya tiene cuenta                     | Header → Iniciar sesión                                                                          |
| Usuario listo para registrarse                  | Hero section o Next step section → Comenzar ahora → Registro                                     |
 
El footer complementa la navegación principal mediante dos grupos: **Explorar**, que repite enlaces informativos hacia secciones internas, y **Siguiente paso**, que agrupa acciones finales como registrarse, comparar planes, resolver dudas o volver al inicio.
 
**Aplicación móvil**
 
La navegación de la aplicación móvil combina una **barra de navegación inferior (Bottom Tab Bar)** para moverse entre los módulos principales y una **navegación por pila (stack navigation)** para avanzar hacia pantallas de detalle y regresar con el botón o gesto "Atrás" del sistema operativo.
 
| Elemento de navegación | Tipo de componente      | Función                                                                                       |
| ---------------------- | ----------------------- | --------------------------------------------------------------------------------------------- |
| Inicio                 | Bottom Tab Bar          | Muestra el resumen operativo del día.                                                         |
| Inventario             | Bottom Tab Bar          | Abre el módulo de productos y lotes; muestra un badge cuando existen alertas.                 |
| Vender                 | Bottom Tab Bar (central)| Acceso directo al registro de ventas, destacado visualmente por ser la acción más frecuente.  |
| Pedidos                | Bottom Tab Bar          | Abre la bandeja de pedidos del chatbot; muestra un badge con el número de pendientes.         |
| Más                    | Bottom Tab Bar          | Abre el menú con Suscripción, Mi cuenta y Ayuda.                                              |
| Atrás                  | Gesto / botón del sistema | Regresa a la pantalla anterior dentro de la pila de navegación.                             |
| Bottom Sheet           | Panel inferior          | Presenta formularios cortos (agregar producto, crear lote, registrar cantidad o peso) sin salir de la pantalla actual. |
| Pull-to-refresh        | Gesto                   | Actualiza la información de la pantalla activa.                                               |
| Notificaciones push    | Deep link               | Abren directamente la pantalla relacionada con la alerta o el pedido.                         |
 
Los flujos principales de navegación en la aplicación son los siguientes:
 
| Flujo                                        | Recorrido esperado                                                                                   |
| -------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| Comerciante revisa su negocio al abrir la app | Splash → Inicio → Alerta o pedido pendiente → Módulo correspondiente                                |
| Comerciante registra una venta presencial    | Vender → Buscar producto → Bottom Sheet de cantidad o peso → Cobrar → Método de pago → Finalizar venta |
| Comerciante atiende un pedido del chatbot    | Notificación push → Detalle del pedido → Aprobar pago o Rechazar                                     |
| Comerciante revisa alertas de inventario     | Notificación push o badge en Inventario → Lotes → Detalle del lote                                   |
| Comerciante gestiona su suscripción          | Más → Suscripción → Elegir plan → Facturación → Pagar y activar                                      |
 

### 3.1.3. Landing Page UI Design

Por completar.

#### 3.1.3.1. Landing Page Wireframe

Por completar.

#### 3.1.3.2. Landing Page Mock-up

Por completar.

### 3.1.4. Mobile Applications UX/UI Design

Por completar.

#### 3.1.4.1. Mobile Applications Wireframes

Por completar.

#### 3.1.4.2. Mobile Applications Wireflow Diagrams


En esta sección se presentan los Wireflow Diagrams de la aplicación móvil de Entreprenly. Cada wireflow muestra las pantallas que recorre el usuario para cumplir un objetivo concreto (User Goal), junto con las acciones que realiza y las respuestas del sistema en cada paso. Antes de diseñarlos, el equipo elaboró los Task Flows de cada objetivo, lo que permitió identificar las rutas más comunes y los puntos donde el usuario debe tomar una decisión.
 
 
**Wireflow 1 – User Goal: Registrarse e iniciar sesión en Entreprenly**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 1- Registro e inicio de sesión.png" alt="Wireflow 1 - Registro e inicio de sesión" width="800"/>
</p>

**Descripción del flujo:** Don Lucho descarga Entreprenly y necesita crear una cuenta para empezar a gestionar su negocio desde el celular.
 
**Bienvenida:** Al abrir la app por primera vez aparece la pantalla de carga con el logo y luego la pantalla de bienvenida, con las opciones "Crear cuenta" e "Iniciar sesión".
 
**Registro (US-52):** Don Lucho elige "Crear cuenta" e ingresa su correo y una contraseña. Mientras escribe, la app le muestra qué requisitos de la contraseña ya cumple. Si los datos son correctos, la cuenta se crea con el Plan Free y aparece la pantalla "Revisa tu correo" (Scenario 1). Si el correo ya está registrado, se muestra un mensaje de error debajo del campo (Scenario 2), y si la contraseña no cumple los requisitos, estos se marcan en rojo (Scenario 3).
 
**Verificación del correo (US-53):** Don Lucho abre el enlace que recibió en su correo desde el mismo celular y la app se abre directamente con su cuenta activada. Si el enlace ya venció, la app le muestra un aviso y la opción de reenviar el correo.
 
**Inicio de sesión (US-54, US-55):** En los siguientes accesos, Don Lucho ingresa su correo y contraseña. Si son correctos, entra al Inicio (Scenario 1); si no, ve un mensaje de error general (Scenario 2), y si se equivoca cinco veces, la cuenta se bloquea temporalmente y se le avisa por correo (Scenario 3). También puede entrar con su cuenta de Google. Después del primer ingreso, la app le ofrece activar el acceso con huella para no tener que escribir la contraseña cada vez.
 
**Recuperar contraseña (US-56):** Si olvidó su contraseña, Don Lucho toca "¿Olvidaste tu contraseña?", escribe su correo y recibe un enlace. Al abrirlo, crea una nueva contraseña y vuelve a la pantalla de inicio de sesión.
 
 
**Wireflow 2 – User Goal: Registrar y gestionar el inventario de productos**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 2- Registro y gestionar el inventario.png" alt="Wireflow 2 - Gestión del inventario" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita registrar los productos de su bodega desde el celular, ya sea en el almacén o detrás del mostrador.
 
**Inventario vacío:** La primera vez que entra a la pestaña "Inventario", la pantalla le indica que aún no tiene productos y le muestra el botón "Agregar tu primer producto".
 
**Agregar producto (US-01):** Al presionar "+", se abre un panel desde abajo con el formulario: nombre, tipo de medida (unidad o peso), precio, stock inicial y categoría. Si completa todo y presiona "Guardar", aparece el mensaje "Producto registrado correctamente" y el producto se muestra al inicio de la lista. Si deja campos obligatorios vacíos, estos se marcan en rojo y no puede guardar.
 
**Buscar producto (US-12):** Don Lucho puede escribir el nombre en el buscador o dictarlo con el micrófono, y la lista se filtra mientras escribe. También puede tocar el ícono de código QR y escanear la etiqueta del producto para ir directo a su detalle.
 
**Ver y editar producto (US-10, US-05):** Al tocar un producto se abre su detalle, con precio, stock y lotes asociados. Desde ahí puede presionar "Editar" para cambiar sus datos en el mismo formulario.
 
**Eliminar producto:** Si desliza un producto hacia la izquierda en la lista, aparece el botón "Eliminar". Antes de borrarlo, la app pide una confirmación para evitar errores.
 
**Producto agotado (US-07):** Cuando el stock de un producto llega a cero, su detalle muestra el aviso "Producto agotado" y el botón "Crear lote" para reponerlo. El chatbot deja de ofrecer ese producto a los clientes.
 

 
**Wireflow 3 – User Goal: Gestionar lotes y recibir alertas de vencimiento**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 3- Gestionar lotes y recibir alertas de vencimiento.png" alt="Wireflow 3 - Gestión de lotes" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita registrar lotes de sus productos perecibles y enterarse a tiempo cuando alguno esté por vencer, aunque no tenga la app abierta.
 
**Aviso de vencimiento (US-11):** La app envía una notificación al celular: "3 lotes vencen pronto". Al tocarla, se abre la pestaña "Lotes" mostrando solo los lotes próximos a vencer, y desde ahí puede entrar al detalle de cada uno.
 
**Pestaña "Lotes" (US-09, US-11):** Al entrar, Don Lucho ve contadores de lotes activos, por vencer y vencidos. Si hay lotes por vencer, aparece un aviso amarillo en la parte superior (Scenario 1); si hay lotes vencidos, el aviso es rojo (Scenario 2). Si no hay ningún problema, solo se muestran los contadores.
 
**Crear lote (US-23):** Al presionar "+", se abre el formulario para elegir el producto, el número de lote, la cantidad y las fechas de ingreso y vencimiento. La fecha se elige en un calendario que no permite seleccionar días pasados. Si intenta guardar sin elegir un producto, el campo se marca en rojo.
 
**Ver detalle del lote (US-06, US-08):** En el detalle se muestran todos los datos del lote. Si está por vencer o con poco stock, aparece un aviso con la condición detectada (Scenario 1); si todo está normal, solo se ven los datos (Scenario 2).
 
**Editar y eliminar lote (US-02, US-04):** Desde el detalle, "Editar" abre el formulario con los datos actuales para corregir la cantidad o las fechas. "Eliminar" muestra un mensaje de confirmación que indica cuántas unidades se descontarán del inventario.
 
**Wireflow 4 – User Goal: Registrar una venta presencial**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 4- Registrar una venta presencial.png" alt="Wireflow 4 - Venta presencial" width="800"/>
</p>

**Descripción del flujo:** Don Lucho atiende a un cliente en el mostrador y necesita registrar la venta rápido, usando el celular con una sola mano.
 
**Pestaña "Vender":** El botón central de la barra inferior abre la pantalla de venta. Arriba está el buscador y la lista de productos más vendidos; abajo, una barra fija con la cantidad de productos, el total y el botón "Cobrar".
 
**Agregar productos (US-24, US-25, US-26):** Don Lucho busca el producto por nombre, voz o código QR. Si se vende por peso y la balanza está conectada, el peso aparece automáticamente (US-26, Scenario 1); si la balanza no responde, puede escribirlo a mano (Scenario 2). Si se vende por unidad, elige la cantidad con los botones "–" y "+" (US-25). Si pide más de lo que hay en stock, la app muestra "Stock insuficiente" con la cantidad disponible y no deja agregar el producto.
 
**Revisar el ticket (US-27):** Al deslizar hacia arriba la barra inferior, se ve el ticket completo con cada producto y su subtotal. Para quitar un producto, se desliza hacia la izquierda y el total se recalcula.
 
**Cobrar (US-28):** Al presionar "Cobrar", Don Lucho elige entre "Efectivo" o "Tarjeta / Yape / Plin". Si elige efectivo, puede ingresar el monto recibido y la app calcula el vuelto. Si intenta finalizar sin elegir un método, aparece el mensaje "Por favor, seleccione un método de pago".
 
**Finalizar la venta (US-29, US-30, US-31):** Al presionar "Finalizar venta", la app confirma la venta, muestra el número de boleta y permite compartirla por WhatsApp. Al tocar "Nueva venta", el ticket se limpia y en la parte superior aparece el resumen de caja del día, separado en efectivo y pagos digitales.
 
 
**Wireflow 5 – User Goal: Vincular el chatbot de WhatsApp Business y atender pedidos**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 5- Vincular el chatbot de WhatsApp Business y atender pedidos.png" alt="Wireflow 5 - Chatbot y pedidos" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita conectar su WhatsApp Business con Entreprenly para que el chatbot atienda a sus clientes, y luego revisar los pedidos y validar los pagos desde el celular.
 
**Vincular WhatsApp (US-32):** Como la app y WhatsApp Business suelen estar en el mismo celular, en lugar de escanear un QR se usa un código de 8 dígitos. Don Lucho lo ingresa en WhatsApp, en la opción "Dispositivos vinculados". Si lo hace a tiempo, la app muestra "Cuenta vinculada correctamente" (Scenario 2). Si el código expira antes, la app genera uno nuevo (Scenario 3). También existe la opción de mostrar un QR para escanearlo desde otro dispositivo.
 
**Estado de la conexión (US-33):** En la parte superior de la pestaña "Pedidos" se indica si el chatbot está conectado. Si la sesión se cierra desde el teléfono, aparece el aviso "Sesión expirada" con el botón "Volver a vincular" (Scenario 2).
 
**Conversaciones (US-34, US-35):** En "Conversaciones" se listan los chats con los clientes, del más reciente al más antiguo. Al tocar uno, se abre el chat completo y Don Lucho puede responder manualmente. Si intenta enviar un mensaje vacío, el botón de enviar no funciona (US-35, Scenario 2).
 
**Respuestas del bot (US-37, US-46):** En cada chat se puede ver cómo atendió el bot al cliente. Si el cliente pide un producto que no existe, el bot le sugiere otros similares (US-37). Si pide más unidades de las que hay, el bot le informa cuántas quedan y le ofrece ajustar el pedido (US-46).
 
**Validar el pago (US-40 a US-45):** Cuando un cliente envía su comprobante, a Don Lucho le llega una notificación. Al tocarla, se abre el detalle del pedido con los productos, el total y la imagen del comprobante. Si el pago es correcto, presiona "Aprobar pago" y confirma: el stock se descuenta, la venta se registra en caja y el pedido queda como "Completado", con la boleta enviada al cliente por WhatsApp. Si el comprobante no es válido, presiona "Rechazar", elige el motivo y el pedido vuelve a "Esperando pago" (US-48, Scenario 1).
 
 
**Wireflow 6 – User Goal: Activar y gestionar la suscripción al Plan Control**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 6- Activar y gestionar la suscripción al Plan Control.png" alt="Wireflow 6 - Suscripción" width="800"/>
</p>

**Descripción del flujo:** Don Lucho tiene el Plan Free y decide contratar el Plan Control para usar el chatbot y la balanza inteligente.
 
**Entrada al flujo:** Puede llegar desde la pestaña "Más", en la opción "Suscripción". También puede llegar al tocar una función del Plan Control, como el chatbot, sin tener ese plan: en ese caso se abre un aviso con el botón "Ver planes".
 
**Elegir plan (US-13):** La pantalla muestra el Plan Free y el Plan Control con sus precios y beneficios. Al tocar "Elegir plan" en el Plan Control, la tarjeta se marca y se habilita el botón "Continuar" (Scenario 1). Si intenta continuar sin elegir, aparece "Selecciona un plan para continuar" (Scenario 2).
 
**Pago de la suscripción (US-14 a US-17):** El proceso se divide en tres pasos: datos de facturación, datos de la tarjeta y resumen. Si falta algún dato obligatorio, el campo se marca en rojo. Al presionar "Pagar y activar", si el cobro se aprueba, aparece la pantalla "¡Plan Control activado!" (US-17, Scenario 1). Si el banco lo rechaza, se muestra el motivo y los datos ingresados se conservan para reintentar (US-16, Scenario 2).
 
**Gestionar la suscripción (US-18 a US-22, US-73):** Desde "Suscripción", Don Lucho ve el estado de su plan y puede renovarlo o cancelarlo. Si cancela, mantiene el acceso hasta la fecha de vencimiento y recibe un recordatorio tres días antes; al vencer, su cuenta vuelve al Plan Free. En "Historial de pagos" puede ver los cobros realizados y descargar sus comprobantes.
 
 
**Wireflow 7 – User Goal: Resolver dudas y reportar problemas desde el Centro de ayuda**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 7 - Centro de ayuda y soporte.png" alt="Wireflow 7 - Centro de ayuda" width="800"/>
</p>

**Descripción del flujo:** Don Lucho tiene una duda sobre cómo validar un pago de Yape y, más adelante, encuentra un error que quiere reportar.
 
**Centro de ayuda (US-74):** Desde "Más", Don Lucho entra a "Ayuda". Ahí encuentra un buscador, categorías (Chatbot, Inventario, Ventas y Planes) y una lista de preguntas frecuentes que se despliegan al tocarlas.
 
**Buscar y leer artículos (US-75, US-76):** Al escribir "yape" en el buscador, aparecen los artículos relacionados. Al abrir uno, se muestran los pasos a seguir y, al final, la pregunta "¿Te sirvió este artículo?".
 
**Reportar un problema (US-77, US-78):** Desde el Centro de ayuda, Don Lucho toca "Reportar un problema" y completa el tipo de problema, la pantalla donde ocurrió y una descripción, y puede adjuntar una captura. Si intenta enviar sin descripción, el campo se marca en rojo. Al enviarlo, la app le muestra el número de reporte y le indica que recibirá una respuesta por correo.
 
---
 
**Wireflow 8 – User Goal: Gestionar mi cuenta**
 
<p align="center">
    <img src="images/capitulo3/Wireflow 8 - Gestionar mi cuenta.png" alt="Wireflow 8 - Mi cuenta" width="800"/>
</p>

**Descripción del flujo:** Don Lucho quiere actualizar sus datos, su foto y sus preferencias, y cambiar su correo o contraseña desde el celular.
 
**Mi cuenta (US-58):** Desde "Más", entra a "Mi cuenta", donde ve su foto, nombre, negocio, biografía, correo, teléfono y plan actual, además de los accesos a cada configuración.
 
**Editar perfil y foto (US-59, US-60):** En "Editar perfil" puede cambiar su nombre, el nombre del negocio y su biografía. Al tocar "Cambiar foto", elige entre tomar una foto, escoger una de la galería o eliminar la actual.
 
**Cambiar correo y contraseña (US-61, US-62):** Para cambiar el correo, ingresa el nuevo y su contraseña actual; el cambio se aplica cuando confirma el enlace que le llega al nuevo correo. Para cambiar la contraseña, ingresa la actual y la nueva dos veces.
 
**Preferencias y notificaciones (US-63, US-64):** En "Preferencias" elige el idioma, la zona horaria, el tema de la app y la moneda. En "Notificaciones" activa o desactiva los avisos que quiere recibir: pedidos nuevos, comprobantes de pago, lotes por vencer, stock bajo, recordatorio de suscripción y resumen diario de ventas.


#### 3.1.4.3. Mobile Applications Mock-ups

Por completar.

#### 3.1.4.4. Mobile Applications User Flow Diagrams

En esta sección se presentan los User Flow Diagrams de la aplicación móvil de Entreprenly. A diferencia de los wireflows, los user flows usan los mock-ups de las pantallas e incluyen los puntos de decisión del flujo (representados con rombos) y los caminos alternativos que se generan cuando algo no sale como se espera. Cada diagrama indica el objetivo del usuario y describe su camino principal (Happy Path) y sus caminos alternativos (Unhappy Paths).
 
Además de los errores de validación de cada formulario, se consideraron situaciones propias del uso en el celular, como quedarse sin conexión a internet, no dar permiso para usar la cámara o perder la conexión con la balanza.
 
 
**User Flow 1 – Gestión de inventario**
 
*User Goal: El comerciante desea tener su catálogo de productos completo y actualizado desde su celular.*
 
<p align="center">
    <img src="images/capitulo3/User Flow 1- Gestión de inventario.png" alt="User Flow 1 - Gestión de inventario" width="800"/>
</p>

*Ilustración – Mobile Application User Flow Diagram: Gestión de inventario*
 
**Happy Path:**
El comerciante entra a la pestaña "Inventario" y presiona "+" para agregar un producto. Completa el formulario y presiona "Guardar". Como tiene conexión a internet, el producto se registra, aparece el mensaje "Producto registrado correctamente" y se muestra al inicio de la lista. Para revisar un producto, lo busca por texto o por voz, lo encuentra en los resultados y abre su detalle.
 
**Unhappy Paths:**
- **Campos obligatorios vacíos (US-01):** los campos se marcan en rojo y el botón "Guardar" queda deshabilitado hasta que los complete.
- **Búsqueda sin resultados (US-12):** la app muestra "No se encontraron productos que coincidan con tu búsqueda" y ofrece agregar el producto.
- **Sin permiso de cámara:** al intentar escanear un código QR, la app explica por qué necesita la cámara y ofrece ir a los ajustes del celular o buscar por texto.
- **Código QR no registrado:** la app avisa que el código no corresponde a ningún producto y ofrece registrarlo como nuevo.
- **Sin conexión a internet:** el producto se guarda en el celular como "Pendiente de sincronizar" y se envía automáticamente cuando vuelve la conexión.

 
**User Flow 2 – Creación de lotes y alertas de vencimiento**
 
*User Goal: El comerciante desea crear lotes de productos perecibles y enterarse antes de que venzan, incluso con la app cerrada.*
 
<p align="center">
    <img src="images/capitulo3/User Flow 2- Creación de lotes y alertas de vencimiento.png" alt="User Flow 2 - Lotes y alertas" width="800"/>
</p>

*Ilustración – Mobile Application User Flow Diagram: Creación de lotes y alertas de vencimiento*
 
**Happy Path:**
El comerciante entra a "Inventario", abre la pestaña "Lotes" y presiona "+". Elige el producto, el número de lote, la cantidad y la fecha de vencimiento en el calendario, y presiona "Agregar". El lote aparece en la lista con el estado "Activo".
 
**Camino alternativo (aviso de vencimiento):**
Cuando un lote está por vencer y las notificaciones están activadas, al comerciante le llega un aviso al celular. Al tocarlo, se abre la lista de lotes próximos a vencer y puede entrar al detalle del lote para priorizar su venta.
 
**Unhappy Paths:**
- **Producto no seleccionado (US-23):** el campo del producto se marca en rojo y el formulario permanece abierto.
- **Fecha de vencimiento pasada:** el calendario no permite elegir días anteriores a la fecha actual.
- **Lote vencido (US-11, Scenario 2):** la pestaña "Lotes" muestra un aviso rojo y el lote vencido aparece primero en la lista.
- **Notificaciones desactivadas:** al entrar a "Lotes", la app muestra un aviso para activarlas y no perderse los vencimientos.

 
**User Flow 3 – Registro de venta presencial**
 
*User Goal: El comerciante desea registrar los productos de un cliente, cobrar y emitir el comprobante usando una sola mano.*
 
<p align="center">
    <img src="images/capitulo3/User Flow 3 - Registro de venta presencial.png" alt="User Flow 3 - Venta presencial" width="800"/>
</p>

*Ilustración – Mobile Application User Flow Diagram: Registro de venta presencial*
 
**Happy Path:**
El comerciante toca el botón central "Vender" y busca el producto. Si se vende por peso y la balanza responde, el peso se registra automáticamente; luego presiona "Agregar al ticket". Repite el proceso con los demás productos, revisa el ticket y presiona "Cobrar". Elige el método de pago y presiona "Finalizar venta". La app confirma la venta, muestra la boleta y actualiza el resumen de caja del día.
 
**Unhappy Paths:**
- **Stock insuficiente (US-25, Scenario 2 / US-26, Scenario 3):** la app muestra la cantidad disponible y no deja agregar el producto hasta que el comerciante ajuste la cantidad.
- **La balanza no responde (US-26, Scenario 2):** aparece el aviso "Balanza no disponible" y el comerciante ingresa el peso a mano.
- **Sin método de pago (US-28, Scenario 2):** aparece el mensaje "Por favor, seleccione un método de pago" y no se puede finalizar la venta.
- **Sin conexión a internet:** la venta se guarda en el celular y se sincroniza cuando vuelve la conexión.

 
**User Flow 4 – Validación de pago de pedido del chatbot**
 
*User Goal: El comerciante desea revisar desde su celular los pedidos recibidos por WhatsApp y validar los pagos para confirmar las entregas de forma segura.*
 
<p align="center">
    <img src="images/capitulo3/User Flow 4 - Validación de pago de pedido del chatbot.png" alt="User Flow 4 - Validación de pago del chatbot" width="800"/>
</p>

*Ilustración – Mobile Application User Flow Diagram: Validación de pago de pedido del chatbot*
 
**Happy Path:**
Un cliente envía su comprobante de pago por WhatsApp y al comerciante le llega una notificación. Al tocarla, como el pedido sigue pendiente, se abre su detalle con los productos, el total y la imagen del comprobante. El comerciante revisa que el pago sea correcto, presiona "Aprobar pago" y confirma. El sistema descuenta el stock, registra la venta en caja y marca el pedido como "Completado", y el chatbot envía la boleta al cliente por WhatsApp (US-41 a US-45).
 
**Unhappy Paths:**
- **Pedido ya procesado:** si el comerciante abre una notificación antigua de un pedido que ya fue confirmado o cancelado, la app se lo indica y le ofrece ver los pedidos pendientes.
- **Comprobante inválido (US-41, Scenario 3 / US-48, Scenario 1):** el comerciante presiona "Rechazar" y elige el motivo. El pedido vuelve a "Esperando pago" y el chatbot le pide al cliente que reintente el pago.
- **Segundo rechazo del mismo cliente (US-48, Scenario 2):** el pedido se bloquea y el comerciante debe revisarlo manualmente.
- **Cliente sin pagar por 30 minutos (US-40, Scenario 2):** el chatbot le envía un recordatorio con el monto y el número para pagar.
- **Cliente sin pagar por 60 minutos (US-47):** el sistema cancela el pedido, libera el stock reservado y le avisa al cliente.

 
**User Flow 5 – Suscripción al Plan Control**
 
*User Goal: El comerciante con Plan Free desea contratar el Plan Control desde la app para acceder a las funciones premium.*
 
<p align="center">
    <img src="images/capitulo3/User Flow 5- Suscripción al Plan Control.png" alt="User Flow 5 - Suscripción al Plan Control" width="800"/>
</p>

*Ilustración – Mobile Application User Flow Diagram: Suscripción al Plan Control*
 
**Happy Path:**
El comerciante entra a "Más", luego a "Suscripción", y elige el Plan Control. Completa sus datos de facturación y los de su tarjeta, revisa el resumen y presiona "Pagar y activar". El cobro se aprueba y la app muestra "¡Plan Control activado!", con las funciones premium ya disponibles.
 
**Camino alternativo:** si el comerciante toca una función del Plan Control sin tener ese plan, se abre un aviso con el botón "Ver planes", que lo lleva al mismo flujo.
 
**Unhappy Paths:**
- **No eligió un plan (US-13, Scenario 2):** aparece "Selecciona un plan para continuar".
- **Datos de facturación incompletos (US-15):** los campos faltantes se marcan en rojo y no puede pasar al siguiente paso.
- **Cobro rechazado (US-16, Scenario 2):** la app muestra el motivo y conserva los datos para que pueda corregirlos y reintentar.
- **Se cierra la app o se pierde la conexión al pagar:** al volver, la app muestra "Pago en verificación" mientras confirma el cobro con el banco, para evitar un cobro doble.
#### 3.1.4.5. Mobile Applications Prototyping

Por completar.
