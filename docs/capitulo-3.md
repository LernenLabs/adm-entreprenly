# Capítulo III: Solution UI/UX Design

Este capítulo presenta el diseño de la experiencia de usuario de Entreprenly para el segundo hito TB1. La identidad visual del producto se conserva respecto del proyecto desarrollado en el curso Desarrollo de Aplicaciones Open Source, mientras que la interacción se adapta a una aplicación Android nativa. La Landing Page mantiene su función de presentación del producto; la aplicación móvil concentra las tareas del comerciante sobre inventario, ventas, pedidos, suscripción y perfil.

## 3.1. Product Design

El diseño del producto parte de los segmentos objetivo, los hallazgos de Needfinding y las User Stories del capítulo II. Su propósito es que el comerciante consulte información y complete operaciones desde su teléfono durante la atención del negocio, con una jerarquía clara y recorridos breves. La adaptación móvil considera navegación inferior, formularios de una columna, controles táctiles, desplazamiento vertical y permisos del sistema para las funciones que los requieren.

Los artefactos se elaboran colaborativamente en el archivo [Entreprenly de Figma](https://www.figma.com/design/aZv1YLCkMN17TLsgGsDJdR/Entreprenly?node-id=1820-2380), cuya página **Mobile** reúne el diseño de la aplicación y cuya página **Web** conserva las referencias de la solución anterior. El diseño móvil inicial desarrollado por Elynor sirve de referencia compartida. Cada integrante desarrolla los recorridos de su Bounded Context y revisa su coherencia con los componentes comunes y los criterios de aceptación.

| Superficie del producto | Propósito | Criterio de diseño |
| :---: | :---: | :---: |
| Landing Page | Presentación de la propuesta de valor, funciones y planes | Identidad de marca consistente y contenido orientado a la aplicación móvil |
| Aplicación Android | Operación cotidiana del comerciante | Interacción táctil, navegación entre módulos y acceso a las capacidades del dispositivo |
| Conversación por WhatsApp | Atención y pedidos del cliente final | Lenguaje comprensible y continuidad con las conversaciones y pedidos consultados por el comerciante |

La especificación de cada recorrido distingue **wireframes**, que describen estructura y jerarquía; **wireflows**, que conectan pantallas mediante acciones; **mock-ups**, que incorporan el estilo visual; **user flows**, que expresan inicio, decisiones, alternativas y fin; y **prototyping**, que permite recorrer las interacciones. Estos artefactos se documentan en la sección 3.1.4. Los wireflows y user flows de Profile se presentan en frames independientes por HU, con estados de éxito, validación, cancelación y recuperación.

Como antecedente se utiliza el [informe daop-entreprenly](https://github.com/Kauflink/daop-entreprenly), especialmente sus lineamientos de marca y su documentación de diseño. La nueva propuesta mantiene la identidad de Entreprenly y sustituye los patrones del dashboard web por interacciones propias de Android.

### 3.1.1. Style Guidelines

Los lineamientos de estilo establecen las reglas compartidas de marca, color, tipografía, espaciado, componentes y retroalimentación. Su aplicación permite que las pantallas de Profile, Inventory, Sales, Chatbot y Subscription formen parte de una misma experiencia, aunque cada contexto tenga un responsable diferente.

La referencia visual corresponde a la página **Mobile** de Figma. En la aplicación Android, los colores, la tipografía y los componentes comunes se centralizan en el tema compartido de Jetpack Compose, según la estructura documentada en el repositorio `adm-entreprenly-frontend`. Las variaciones específicas de un contexto conservan esa base visual y se justifican por la tarea del usuario.

Se conserva de `daop-entreprenly` el naranja de marca, el uso de neutros, el ritmo de espaciado y la separación de estados semánticos. Para el producto móvil se adopta **Reddit Sans**, presente en el diseño de Figma y en los recursos tipográficos del proyecto Android. Roboto se mantiene como referencia tipográfica de las interfaces web anteriores.

#### 3.1.1.1. General Style Guidelines

**Identidad de marca y logotipo**

Entreprenly representa una herramienta de apoyo a pequeños comercios minoristas. La comunicación visual busca claridad y cercanía mediante una marca reconocible, fondos limpios y elementos de acción destacados. El logotipo conserva el nombre y el símbolo de crecimiento del proyecto anterior. Se utiliza sin deformaciones, cambios de proporción ni recoloraciones ajenas a las variantes de marca.

<p align="center">
  <img src="images/capitulo3/entreprenly-logo.png" alt="Logotipo de Entreprenly reutilizado del proyecto daop-entreprenly" width="400"/>
</p>

**Figura 3.1:** Identidad de Entreprenly utilizada como referencia para la Landing Page y la aplicación móvil. Fuente: artefactos de diseño de `daop-entreprenly`.

El logotipo completo se reserva para la presentación del producto y pantallas de bienvenida. En superficies reducidas se utiliza el isotipo. El área libre alrededor de la marca evita su superposición con títulos, controles o contenido del comerciante.

**Paleta de colores**

Los colores se asignan por función. El naranja identifica acciones principales y elementos de marca; los neutros sostienen la lectura; los colores semánticos se acompañan de mensajes e iconos. Los valores de la paleta anterior se conservan como referencia de identidad y se complementan con las superficies cálidas utilizadas en Mobile.

| Función | Código HEX | Uso en el producto |
| :---: | :---: | :---: |
| Marca y acción principal | `#F38313` | Cabeceras, botones principales y selección de acciones relevantes |
| Acento suave de marca | `#FCE0D4` | Fondos de énfasis y elementos secundarios de la identidad original |
| Superficie cálida | `#FFF4E8` | Apoyo visual a selecciones y mensajes del diseño móvil |
| Texto principal | `#0C0F12` | Títulos, etiquetas y contenido sobre fondos claros |
| Fondo claro de referencia | `#F6F4F4` | Superficies claras de la identidad original |
| Fondo cálido móvil | `#FBF8F5` | Superficies y fondos utilizados en la referencia móvil |
| Superficie de contenido | `#FFFFFF` | Tarjetas, formularios y cuadros de diálogo en tema claro |
| Texto secundario | `#666666` | Descripciones y datos de apoyo con contraste suficiente |
| Bordes y divisores | `#C9C9C9` | Separación entre campos y bloques de contenido |
| Error | `#B91C1C` | Mensajes de validación y recuperación en el diseño móvil |
| Confirmación | `#15803D` | Mensajes de operación satisfactoria en el diseño móvil |
| Advertencia | `#C79D08` | Indicaciones preventivas acompañadas de texto |

Los colores secundarios azul/lavanda de `daop-entreprenly` (`#7679DE` y `#C2CDFC`) quedan como referencia para elementos auxiliares de la Landing Page. Su uso en una pantalla móvil requiere coherencia con el diseño compartido. Una alerta de stock, un pago rechazado o una confirmación siempre incluyen una descripción legible; el color no expresa por sí solo el resultado.

Los botones con fondo naranja de marca utilizan texto oscuro `#0C0F12` para favorecer el contraste. El blanco sobre ese naranja y el mostaza como texto pequeño sobre blanco requieren una alternativa de mayor contraste; los colores de marca no sustituyen la comprobación de cada par texto–fondo.

**Tipografía y jerarquía visual**

Reddit Sans articula la interfaz móvil mediante sus pesos Regular, Medium, SemiBold y Bold. La siguiente escala constituye la guía de implementación para títulos, etiquetas y contenido; los textos se mantienen como elementos editables en Figma y como recursos localizables en Android.

| Nivel | Familia y peso | Tamaño de referencia en Figma | Aplicación |
| :---: | :---: | :---: | :---: |
| Título de pantalla | Reddit Sans, Bold | 24–28 px | Identificación de la pantalla o del módulo |
| Encabezado de sección | Reddit Sans, SemiBold | 18–20 px | Agrupaciones, tarjetas y resúmenes |
| Cuerpo principal | Reddit Sans, Regular | 16 px | Explicaciones, formularios y contenido de lectura |
| Etiquetas y controles | Reddit Sans, Medium | 14–16 px | Campos, botones y opciones |
| Información secundaria | Reddit Sans, Regular | 12–14 px | Fechas, referencias y datos complementarios |

Los tamaños de texto se implementan en **sp** y los espacios en **dp**, de manera que la aplicación respete la escala de fuente y la densidad del dispositivo. Los importes, fechas y cantidades mantienen una jerarquía estable. El truncamiento se limita a contenido secundario; nombres de acciones, mensajes de error y datos necesarios para confirmar una operación deben poder leerse completos.

**Espaciado, superficies y composición móvil**

- El ritmo de separación utiliza múltiplos de 8: **8, 16, 24 y 32**.
- El margen horizontal de contenido parte de **16 dp** y los elementos de una tarjeta mantienen un espaciado interior consistente.
- La separación entre icono y texto utiliza **8 dp**; entre grupos funcionales se emplean **16 o 24 dp** según su jerarquía.
- Los formularios se organizan en una columna. El teclado y las barras del sistema no cubren el campo activo ni la acción de confirmación.
- Las tarjetas y los cuadros de diálogo conservan los radios definidos en los componentes compartidos. Las sombras se reservan para expresar elevación, sin sustituir la separación visual entre contenidos.
- La navegación inferior permanece accesible durante el desplazamiento del contenido; cada destino combina icono y etiqueta.

Los frames de Profile utilizan una referencia de **380 × 780 px**. Esta medida organiza el diseño en Figma; la implementación se adapta al ancho disponible y a los márgenes del sistema, sin convertir el frame en una pantalla rígida ni incrustar una página web para reproducirlo.

**Componentes y estados de interacción**

| Componente | Regla compartida |
| :---: | :---: |
| Acción principal | Un botón destacado para la operación principal, con etiqueta específica como «Guardar cambios» o «Confirmar venta» |
| Acción secundaria | Menor énfasis visual para volver, cancelar o consultar información adicional |
| Campo de entrada | Etiqueta persistente, ayuda cuando corresponde y error asociado al campo; conservación de datos válidos ante una corrección |
| Tarjeta de información | Título, datos principales y acceso al detalle con jerarquía consistente |
| Confirmación y error | Mensaje textual que identifica el resultado y, ante un error, la siguiente acción disponible |
| Carga y estado vacío | Indicación de carga durante una operación y mensaje útil cuando todavía no existen registros |
| Acción destructiva | Confirmación explícita y explicación del efecto antes de eliminar o descartar información |

Los estados previstos comprenden normal, presionado, seleccionado, deshabilitado, carga, éxito y error. En Android, la retroalimentación táctil y los estados visibles sustituyen las dependencias de *hover* propias de escritorio. Los botones evitan envíos duplicados mientras procesan una solicitud.

**Iconografía, contenido y localización**

Los iconos representan destinos o acciones reconocibles y conservan una misma familia visual. Cada control que necesita explicación tiene una etiqueta visible o una descripción accesible. Los textos utilizan términos del dominio, como «Producto», «Lote», «Venta», «Pedido» y «Mi perfil», coherentes con el Ubiquitous Language del capítulo II.

El contenido dirigido al comerciante es breve y describe la acción o el resultado. Las variantes en español e inglés se gestionan mediante recursos de traducción. La aplicación formatea fechas, horas e importes de acuerdo con las preferencias de Profile; un cambio de moneda modifica la presentación y no implica una conversión automática del valor de las transacciones.

**Accesibilidad y permisos del dispositivo**

Como criterio de diseño, el texto normal requiere un contraste de al menos **4.5:1** respecto de su fondo y el texto grande, **3:1**. La selección de colores se comprueba por combinación concreta; una paleta por sí sola no acredita cumplimiento de WCAG. Véase la [referencia de WCAG 2.2 del W3C](https://www.w3.org/WAI/WCAG22/quickref/).

Los controles táctiles de Android disponen de un área de interacción mínima de **48 × 48 dp**, siguiendo la [guía de accesibilidad de Jetpack Compose](https://developer.android.com/develop/ui/compose/accessibility/api-defaults). El foco, las etiquetas accesibles y el aumento del tamaño de fuente se consideran en la implementación y revisión de cada pantalla.

En Profile, las solicitudes de cámara, galería y notificaciones explican su finalidad en el momento de uso. Cuando se deniega un permiso, se conserva la información anterior y se ofrece una alternativa o acceso a Ajustes. Los mensajes de validación indican cómo corregir el dato y evitan exponer información sensible.

**Temas y aplicación de los lineamientos**

Los temas claro y oscuro mantienen la misma jerarquía y significado de las acciones. Sus superficies, textos y bordes se definen por función, evitando invertir colores de forma automática. El cambio de tema y de idioma conserva el estado de la tarea y la preferencia del comerciante, de acuerdo con US-67.

La revisión compartida relaciona cada pantalla con su HU, comprueba la coherencia de componentes y mensajes, y diferencia la representación en grises de los wireframes del estilo final de los mock-ups. En Profile, las HUs US-62, US-63, US-67 y US-68 corresponden al Sprint 1; US-64, US-65, US-66 y US-69 conservan sus diseños para iteraciones posteriores. La navegación común se relaciona con US-75 y US-81.

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

Landing reutilizada y desplegada en `https://lernenlabs.github.io/adm-entreprenly-landing/`. Recorrido comercial para bodegas, minimarkets y puestos de mercado: propuesta de valor, problema, solución en 4 piezas, adopción en 4 pasos, beneficios, confianza, comparativa, planes y FAQ con llamados a registro e inicio de sesión. Soporte ES/EN y modo oscuro. Diseño responsive: la misma landing se adapta a móvil sin duplicar rutas.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Sección</th><th>Propósito</th>
  </tr>
  <tr><td style="vertical-align:middle; text-align:center;">Hero</td><td>Propuesta de valor y CTAs hacia registro y planes.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Problema</td><td>Caos multicanal, control manual y caja desordenada.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Features</td><td>Pedidos WhatsApp, inventario en tiempo real, suscripción y control financiero.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">How it works</td><td>Adopción en 4 pasos: organizar base, conectar canales, suscripción y cobro con control.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Beneficios + Confianza</td><td>Menos errores y merma para el comerciante; stock validado y pagos confirmados para el cliente.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">Comparativa + Planes</td><td>Manual vs genéricos vs Entreprenly; Plan Free S/ 0 y Plan Control S/ 89.</td></tr>
  <tr><td style="vertical-align:middle; text-align:center;">FAQ + Next step + Footer</td><td>Dudas frecuentes, cierre de conversión y accesos de exploración.</td></tr>
</table>

- Responsive: ≤640 px 4 columnas con hamburger y CTA fijo inferior; 641–1024 px 8 columnas; ≥1025 px 12 columnas. Tablas con scroll horizontal y objetivos táctiles amplios.

#### 3.1.3.1. Landing Page Wireframe

Wireframes en escala de grises que validan jerarquía, orden y ubicación de CTAs antes del color. Misma correspondencia 1 a 1 con las secciones de 3.1.3: Header, Hero, Problema, Features, How it works, Beneficios, Confianza, Comparativa, Planes, FAQ, Next step y Footer. La validación se verifica contra la landing desplegada.

#### 3.1.3.2. Landing Page Mock-up

Mock-ups con identidad final aplicados sobre los wireframes: naranja de marca en CTAs y activos, tipografía y espaciado del sistema, tarjetas de planes Free y Control con precios y límites, y estados de navegación. Referencia visual: landing desplegada en `https://lernenlabs.github.io/adm-entreprenly-landing/`.

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
