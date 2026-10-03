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

Por completar.

#### 3.1.2.1. Organization Systems

Por completar.

#### 3.1.2.2. Labelling Systems

Por completar.

#### 3.1.2.3. SEO Tags and Meta Tags

Por completar.

#### 3.1.2.4. Searching Systems

Por completar.

#### 3.1.2.5. Navigation Systems

Por completar.

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
