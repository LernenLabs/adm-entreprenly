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

Por completar.

#### 3.1.4.3. Mobile Applications Mock-ups

Por completar.

#### 3.1.4.4. Mobile Applications User Flow Diagrams

Por completar.

#### 3.1.4.5. Mobile Applications Prototyping

Por completar.
