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


Los Wireflow Diagrams de la aplicación móvil presentan de forma integrada las pantallas de la app junto con las rutas de navegación que el usuario sigue para alcanzar un objetivo específico. Cada Wireflow define un **User Goal** concreto, detalla las pantallas involucradas, las decisiones del usuario y las respuestas del sistema.

El equipo elaboró previamente los Task Flows correspondientes para cada User Goal, los cuales sirvieron como base para identificar las rutas típicas y los puntos de decisión críticos. Los flujos consideran: navegación por **Bottom Tab Bar** (Inicio, Inventario, Vender, Pedidos, Más); **Bottom Sheets** para formularios cortos; gestos nativos (swipe, pull-to-refresh, long press); **notificaciones push con deep links**; y capacidades del dispositivo como la **cámara** (escaneo QR) y el **reconocimiento de voz**. Se consideran las User Personas definidas en el capítulo 2 (Don Lucho — comerciante, y Andrea Torres — cliente final).

---

**Wireflow 1 – User Goal: Registrarse e iniciar sesión en Entreprenly**

<p align="center">
    <img src="images/capitulo3/Wireflow 1- Registro e inicio de sesión.png" alt="Wireflow1 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho descarga Entreprenly desde la tienda de aplicaciones y necesita crear una cuenta para empezar a gestionar su negocio desde su celular.

**Splash Screen → Bienvenida:** Al abrir la app por primera vez, se muestra el splash con el logo y luego la pantalla de bienvenida con los botones "Crear cuenta" e "Iniciar sesión".

**Registro (US-52):** Don Lucho presiona "Crear cuenta" → pantalla completa de registro (stack navigation, con botón "Atrás" nativo). Ingresa email y contraseña; el teclado se adapta al tipo de campo (teclado de email con "@"). Si los datos son válidos (Scenario 1): el sistema crea la cuenta, asigna el Plan Free y muestra la pantalla "Revisa tu correo". Si el email ya existe (Scenario 2): mensaje de error inline bajo el campo. Si la contraseña no cumple requisitos (Scenario 3): checklist de requisitos en rojo/verde debajo del campo, actualizado en tiempo real.

**Verificación de email (US-53):** Don Lucho abre el enlace del correo **desde el mismo celular** → el App Link (`entreprenly://verify?token=...`) abre directamente la app. Si el token es válido: la cuenta se activa y se navega al tab "Inicio". Si expiró: pantalla de error con el botón "Reenviar email".

**Login (US-54, US-55):** En visitas posteriores, si la sesión sigue activa (token persistido de forma segura), la app abre directo en "Inicio". Si no: Don Lucho ingresa credenciales. Correctas (Scenario 1) → "Inicio". Incorrectas (Scenario 2) → mensaje genérico. 5 intentos fallidos (Scenario 3) → bloqueo y notificación por email. Alternativa: "Continuar con Google" abre el selector nativo de cuentas del sistema operativo (US-55). Tras el primer login, la app ofrece activar el desbloqueo con huella/Face ID para los siguientes accesos.

**Recuperar contraseña (US-56):** Desde el login, Don Lucho toca "¿Olvidaste tu contraseña?" → ingresa su correo y presiona "Enviar enlace" → la pantalla confirma el envío (enlace válido por 30 minutos). Al abrir el enlace desde el celular, la app muestra "Nueva contraseña" con la validación de requisitos en tiempo real; al guardar, regresa al login.

---

**Wireflow 2 – User Goal: Registrar y gestionar el inventario de productos**

<p align="center">
    <img src="images/capitulo3/Wireflow 2- Registro y gestionar el inventario.png" alt="Wireflow2 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita agregar los productos de su bodega al sistema desde su celular, mientras está en el almacén o detrás del mostrador.

**Tab "Inventario" → pestaña "Productos":** Don Lucho toca el tab "Inventario". La pantalla muestra dos pestañas superiores (Productos | Lotes) y la lista de productos en formato de tarjetas verticales (una columna). En el primer acceso se muestra un estado vacío con ilustración y el botón "Agregar tu primer producto".

**Agregar producto (US-01):** Don Lucho presiona el botón flotante "+" → se abre un **Bottom Sheet** expandible con el formulario (nombre, tipo de medida Unidad/Peso, precio, stock inicial). Presiona "Guardar". Datos válidos: el sheet se cierra, aparece un Snackbar "Producto registrado" y la tarjeta se agrega al inicio de la lista. Campos obligatorios vacíos: campos resaltados en rojo y el botón "Guardar" permanece deshabilitado.

**Buscar producto (US-12):** Don Lucho escribe en la barra de búsqueda superior o toca el ícono de micrófono para **dictar** el nombre del producto. La lista se filtra en tiempo real. Los **chips de categoría** horizontales permiten filtrar sin abrir un panel adicional. Como alternativa, toca el ícono de **escáner QR** → se abre la cámara → al leer el código del producto, la app navega directo a su detalle.

**Ver detalles (US-10):** Al tocar una tarjeta se navega a la pantalla de detalle del producto con su información completa e historial de lotes asociados.

**Editar producto (US-05):** Desde el detalle, Don Lucho toca "Editar" (o hace **long press** sobre la tarjeta en la lista) → Bottom Sheet con datos pre-cargados → "Guardar" → Snackbar de confirmación. **Eliminar:** swipe hacia la izquierda sobre la tarjeta → botón rojo "Eliminar" → diálogo de confirmación nativo.

**Producto agotado (US-07):** Cuando el stock de un producto llega a 0, su detalle muestra el banner "Producto agotado", el badge "Agotado" en sus lotes y el botón "Crear lote" para reponerlo. El chatbot deja de ofrecerlo a los clientes.

---

**Wireflow 3 – User Goal: Gestionar lotes y recibir alertas de vencimiento**

<p align="center">
    <img src="images/capitulo3/Wireflow 3- Gestionar lotes y recibir alertas de vencimiento.png" alt="Wireflow3 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita registrar lotes de productos perecederos y ser notificado, incluso con la app cerrada, cuando alguno esté por vencer.

**Entrada por notificación push (US-11):** El sistema envía una notificación push: "3 lotes vencen en los próximos 3 días". Don Lucho la toca → el deep link `entreprenly://inventario/lotes?filtro=por-vencer` abre la pestaña "Lotes" ya filtrada.

**Tab "Inventario" → pestaña "Lotes":** Si existen lotes próximos a vencer (US-11, Scenario 1): banner amarillo en la parte superior y badge numérico en el tab "Inventario". Si hay lotes vencidos (Scenario 2): banner rojo. Sin condiciones críticas (US-09, Scenario 2): solo los contadores resumen. Pull-to-refresh actualiza los estados.

**Crear lote (US-23):** Don Lucho toca "+" → Bottom Sheet con: selector de producto (búsqueda con autocompletado o escaneo QR), número de lote, fecha de ingreso y fecha de vencimiento (**date picker nativo** del sistema), cantidad/peso inicial. Al confirmar: el lote aparece en la lista con badge "Activo". Sin producto seleccionado: el selector se resalta en rojo y el sheet permanece abierto.

**Ver detalle de lote (US-06, US-08):** Al tocar un lote se navega a su pantalla de detalle. Si tiene stock bajo, está agotado o por vencer (US-08, Scenario 1): tarjeta de alerta con ícono y descripción. Estado normal (Scenario 2): solo los datos.

**Editar (US-02) y Eliminar lote (US-04):** Desde el detalle del lote, "Editar" abre el Bottom Sheet "Editar lote" con los datos pre-cargados (el producto queda bloqueado y se pueden cambiar la cantidad y las fechas). "Eliminar" abre un diálogo de confirmación que indica cuántas unidades se descontarán del inventario, para evitar eliminaciones accidentales.

---

**Wireflow 4 – User Goal: Registrar una venta presencial**

<p align="center">
    <img src="images/capitulo3/Wireflow 4- Registrar una venta presencial.png" alt="Wireflow4 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho atiende a un cliente en el mostrador y necesita registrar la venta con una sola mano, rápido y sin interrumpir la atención.

**Tab central "Vender":** Don Lucho toca el botón central elevado "Vender". La pantalla POS muestra arriba el buscador y abajo una **barra de ticket colapsada** fija (cantidad de ítems + total + "Cobrar"), al alcance del pulgar.

**Buscar y agregar producto (US-24):** Don Lucho busca por texto, voz o escaneo QR; también puede tocar un producto de la grilla de "Más vendidos". Producto tipo **Peso** (US-26): Bottom Sheet "Registrar peso"; si la balanza IoT está conectada por Bluetooth/red, el peso se captura automáticamente (Scenario 1); si no, ingreso manual con teclado numérico (Scenario 2). Producto tipo **Unidad** (US-25): Bottom Sheet con stepper (– / +) y teclado numérico. Si se supera el stock disponible: mensaje "Stock insuficiente. Disponible: X" y el botón "Agregar" se deshabilita (US-25 Scenario 2, US-26 Scenario 3). Al agregar, vibración háptica breve como feedback.

**Gestionar el ticket (US-27):** Don Lucho desliza hacia arriba la barra de ticket → se expande a pantalla completa con el detalle de ítems y subtotales. Para eliminar un ítem: swipe a la izquierda (Scenario 2); el total se recalcula al instante.

**Método de pago (US-28):** Al presionar "Cobrar", se muestra la pantalla de pago con botones grandes: "Efectivo" y "Tarjeta / Yape / Plin". Si intenta finalizar sin selección (Scenario 2): mensaje "Por favor, seleccione un método de pago". Si elige Efectivo, aparece un campo opcional "Monto recibido" que calcula el vuelto.

**Finalizar venta (US-29, US-30, US-31):** "Finalizar venta" → pantalla de éxito con check animado, monto y opciones "Compartir boleta" (hoja de compartir nativa: WhatsApp, PDF) y "Nueva venta". Al tocar "Nueva venta", el ticket se limpia y la pantalla Vender muestra el **Resumen de caja en vivo** (US-30, US-31): total del día, monto en efectivo, monto digital y número de ventas. El mismo resumen se refleja en el tab "Inicio".

---

**Wireflow 5 – User Goal: Configurar el chatbot de WhatsApp Business y atender pedidos**

<p align="center">
    <img src="images/capitulo3/Wireflow 5- Vincular el chatbot de WhatsApp Business y atender pedidos.png" alt="Wireflow5 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita conectar su WhatsApp Business al sistema y atender desde el celular los pedidos que genera el bot.

**Tab "Pedidos" → sin cuenta vinculada (US-32, Scenario 1):** Como la app y WhatsApp Business suelen estar en el **mismo celular**, se muestra la pantalla de vinculación con dos opciones: (a) **"Vincular este número"** mediante código de emparejamiento de 8 dígitos que Don Lucho ingresa en WhatsApp > Dispositivos vinculados, con temporizador de expiración; o (b) mostrar el QR para escanearlo desde otro dispositivo. Si la vinculación es exitosa (Scenario 2): la pantalla cambia a "Conectado" con el número vinculado y la bandeja de conversaciones. Si el código expira (Scenario 3): mensaje "El código expiró" y se genera uno nuevo.

**Estado de conexión (US-33):** Un indicador de estado (punto verde "Activo" / gris "Desconectado") se muestra en la cabecera del tab "Pedidos". Si la sesión expiró (Scenario 2): banner "Desconectado" con el botón "Volver a vincular", y además una notificación push para que el comerciante se entere aunque no abra la app.

**Gestionar conversaciones (US-34, US-35):** La bandeja lista los chats ordenados por el más reciente, con badge de no leídos. Al tocar una conversación se navega a la pantalla de chat (patrón familiar de WhatsApp). Para responder manualmente: escribe y presiona "Enviar"; si el campo está vacío, el botón permanece deshabilitado (US-35, Scenario 2).

**Atender pedido desde push (US-41 a US-43):** Llega la notificación "Nuevo comprobante de pago — Pedido #124". Al tocarla, el deep link `entreprenly://pedidos/124` abre el detalle del pedido con el comprobante en miniatura (se amplía con pinch-to-zoom). Botones fijos inferiores: "Rechazar" y "Aprobar pago". Al aprobar, el sistema descuenta el stock, registra la venta en caja y el pedido pasa a **"Completado"** (US-43, US-44, US-45), con el número de venta, la boleta enviada al cliente y la trazabilidad completa. Al rechazar con motivo, el pedido vuelve a "Esperando pago" (US-48, Scenario 1).

**Respuestas automáticas del bot (US-37, US-46):** Dentro de cada chat, Don Lucho puede ver cómo el bot atendió al cliente. Si el producto pedido no existe, el bot sugiere alternativas disponibles (US-37). Si la cantidad supera el stock, el bot informa las unidades disponibles y ofrece ajustar el pedido; al aceptar, el pedido se actualiza (US-46).

---

**Wireflow 6 – User Goal: Activar o gestionar la suscripción al Plan Control**

<p align="center">
    <img src="images/capitulo3/Wireflow 6- Activar y gestionar la suscripción al Plan Control.png" alt="Wireflow6 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho, con Plan Free, decide contratar el Plan Control para usar el chatbot y la balanza IoT.

**Entrada contextual (paywall):** Además del acceso por tab "Más" → "Suscripción", en mobile existe una entrada contextual: si Don Lucho toca una función premium (ej. tab "Pedidos" o "Conectar balanza") con Plan Free, se abre un Bottom Sheet "Función del Plan Control" con el botón "Ver planes".

**Selección de plan (US-13):** La pantalla de planes muestra las tarjetas apiladas verticalmente (Free / Control) con el plan actual marcado. Don Lucho toca "Elegir plan" en Plan Control (Scenario 1): la tarjeta queda con borde naranja y se habilita el botón fijo inferior "Continuar". Sin selección (Scenario 2): mensaje "Selecciona un plan para continuar".

**Proceso de suscripción (US-14, US-15, US-16):** Formulario de facturación en pasos cortos (indicador de progreso 1/3, 2/3, 3/3) para no saturar la pantalla. Se ofrece autocompletado de datos y escaneo de tarjeta con la cámara. Resumen previo → "Pagar y activar". Cobro aprobado (US-17, Scenario 1): pantalla de éxito y regreso a "Suscripción" con estado "Activa". Cobro rechazado (US-16, Scenario 2): mensaje con el motivo sin perder los datos ingresados.

**Gestión de suscripción activa (US-18 a US-22):** Desde "Más" → "Suscripción", Don Lucho puede renovar (US-20) o cancelar (US-21, con diálogo de confirmación). Si cancela: estado "Cancelación programada" y acceso activo hasta el vencimiento. 3 días antes del vencimiento, notificación push recordatoria. Al vencer, la cuenta vuelve automáticamente al Plan Free (US-22). Desde "Suscripción", la opción "Historial de pagos" muestra los cobros realizados con su estado y permite descargar cada comprobante o el historial completo en PDF (US-73).

---

**Wireflow 7 – User Goal: Resolver dudas y reportar problemas desde el Centro de ayuda**

<p align="center">
    <img src="images/capitulo3/Wireflow 7 - Centro de ayuda y soporte.png" alt="Wireflow7 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho tiene una duda sobre cómo validar un pago de Yape y, más tarde, encuentra un error que quiere reportar.

**Tab "Más" → "Ayuda" (US-74):** El Centro de ayuda muestra un buscador, accesos por categoría (Chatbot, Inventario, Ventas, Planes) y las preguntas frecuentes en acordeones que se expanden sin salir de la pantalla.

**Buscar y consultar artículos (US-75, US-76):** Don Lucho escribe "yape" en el buscador y la lista se filtra en tiempo real. Al tocar un resultado se abre el artículo con los pasos numerados, avisos importantes y la pregunta "¿Te sirvió este artículo?".

**Reportar un problema (US-77, US-78):** Desde el Centro de ayuda toca "Reportar un problema" → formulario con tipo de problema, pantalla donde ocurrió, descripción y captura opcional. Si intenta enviar sin descripción, el campo se resalta en rojo y el botón queda deshabilitado. Al enviar, la app muestra la confirmación con el número de reporte (SR-1042) y el plazo de respuesta, y permite volver a Ayuda.

---

**Wireflow 8 – User Goal: Gestionar mi cuenta**

<p align="center">
    <img src="images/capitulo3/Wireflow 8 - Gestionar mi cuenta.png" alt="Wireflow8 Mobile" width="800"/>
</p>

**Descripción del flujo:** Don Lucho necesita actualizar sus datos personales, su foto y sus preferencias, y cambiar sus credenciales desde el celular.

**Tab "Más" → "Mi cuenta" (US-58):** La pantalla muestra la foto, el nombre, el negocio, la biografía, el correo, el teléfono y el plan actual, junto con los accesos a cada configuración.

**Editar perfil y foto (US-59, US-60):** "Editar perfil" abre el formulario con nombre, apellido, nombre del negocio y biografía (con contador de caracteres). Al tocar "Cambiar foto" se abre un Bottom Sheet con las opciones "Tomar foto", "Elegir de la galería" y "Eliminar foto".

**Cambiar correo y contraseña (US-61, US-62):** Para cambiar el correo se pide el nuevo correo y la contraseña actual; el cambio se aplica cuando Don Lucho confirma el enlace enviado al nuevo correo. Para cambiar la contraseña se pide la actual y la nueva dos veces, con la validación de requisitos en tiempo real.

**Preferencias y notificaciones (US-63, US-64):** En "Preferencias" se eligen el idioma, la zona horaria, el tema (Claro, Oscuro o Sistema) y la moneda. En "Notificaciones" se activan o desactivan con interruptores las alertas push de pedidos del chatbot, comprobantes de pago, lotes por vencer, stock bajo, recordatorio de suscripción y resumen diario de ventas.


#### 3.1.4.3. Mobile Applications Mock-ups

Por completar.

#### 3.1.4.4. Mobile Applications User Flow Diagrams

Por completar.

#### 3.1.4.5. Mobile Applications Prototyping

Por completar.
