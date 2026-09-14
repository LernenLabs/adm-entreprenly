# Glosario

En esta sección se definen los principales términos de negocio, experiencia de usuario y arquitectura utilizados en el informe de Entreprenly. Las denominaciones en inglés se conservan cuando forman parte del Ubiquitous Language o representan elementos técnicos del modelo de dominio.

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Término</th><th>Definición</th>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Aggregate Root</td><td>Entidad principal que controla las invariantes y el ciclo de vida de un conjunto de objetos relacionados dentro de un Bounded Context.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Alert</td><td>Notificación generada por el sistema ante una situación que requiere atención, como stock bajo, agotamiento, vencimiento o discrepancias de inventario.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Anti-Corruption Layer (ACL)</td><td>Capa de traducción que permite la comunicación entre Bounded Contexts sin acoplar directamente sus respectivos modelos de dominio.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Avatar</td><td>Fotografía o imagen que identifica visualmente al comerciante dentro de su perfil en la aplicación móvil.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Batch</td><td>Lote de productos registrado con cantidad, fecha de ingreso y, cuando corresponde, fecha de vencimiento para asegurar su trazabilidad.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Billing Setup</td><td>Configuración de facturación del comerciante que reúne sus datos fiscales y métodos de pago para gestionar una suscripción.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Bounded Context</td><td>Límite explícito dentro del cual un modelo de dominio y su Ubiquitous Language mantienen un significado consistente.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Cash Register</td><td>Registro digital de los ingresos acumulados durante el turno de trabajo del comerciante, diferenciando efectivo y medios electrónicos.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Chat Message</td><td>Mensaje enviado por el cliente, el comerciante o el chatbot dentro de una conversación de WhatsApp.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Chat Order</td><td>Pedido creado a partir de una conversación de WhatsApp y sometido a validación de disponibilidad y pago.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Chatbot</td><td>Asistente conversacional integrado con WhatsApp que permite consultar productos, registrar pedidos y comunicar el estado de una compra.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Command</td><td>Objeto que expresa la intención de ejecutar una operación que puede modificar el estado del dominio.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Context Mapping</td><td>Técnica de DDD estratégico que representa las relaciones, dependencias y mecanismos de integración existentes entre Bounded Contexts.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Conversation</td><td>Interacción continua entre un cliente final y el chatbot de Entreprenly mediante el canal de WhatsApp.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Customer</td><td>Cliente final que consulta productos o realiza una compra presencial o mediante WhatsApp.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Domain Event</td><td>Hecho relevante que ya ocurrió dentro del dominio y que puede provocar reacciones en el mismo contexto o en otros contextos.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">EventStorming</td><td>Técnica colaborativa para explorar un dominio mediante la identificación y ordenamiento de eventos, comandos, actores, políticas y sistemas externos.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">IAM</td><td>Capacidad de Identity and Access Management encargada del registro, autenticación, autorización, contraseñas y emisión de tokens JWT.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Impact Mapping</td><td>Técnica que relaciona un objetivo de negocio con los actores, impactos, entregables y User Stories que contribuyen a alcanzarlo.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>InventoryContextFacade</code></td><td>Fachada de Inventory que expone el catálogo de un comerciante y permite descontar stock desde Sales o Chatbot sin revelar el modelo interno.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Inventory Sync</td><td>Proceso de conciliación entre las existencias registradas digitalmente y el peso físico reportado por una balanza inteligente.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Lean UX</td><td>Enfoque iterativo de diseño que utiliza supuestos, hipótesis y aprendizaje validado para orientar el desarrollo del producto hacia resultados para el usuario.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Merchant</td><td>Dueño o administrador de una bodega, minimarket o puesto de mercado que gestiona su negocio con Entreprenly.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Mobile Dashboard</td><td>Interfaz principal de la aplicación móvil que concentra indicadores y accesos a inventario, ventas, pedidos, suscripción y perfil.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>NotificationSettings</code></td><td>Objeto de valor de Profile que conserva las preferencias del comerciante para recibir notificaciones push operativas.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Order</td><td>Solicitud de compra realizada por un cliente, compuesta por productos, cantidades, importe, medio de pago y estado de atención.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>owner_email</code></td><td>Referencia lógica al propietario utilizada para aislar los datos de cada comerciante sin crear dependencias físicas entre Bounded Contexts.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Payment</td><td>Registro de la entrega o transferencia de dinero asociada a una venta, pedido o suscripción.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Payment Method</td><td>Medio utilizado para realizar un pago, como efectivo, Yape, Plin o una tarjeta asociada a una suscripción.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Perishable Product</td><td>Producto con fecha de vencimiento que requiere control de lotes y rotación para reducir mermas y pérdidas económicas.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>Preferences</code></td><td>Objeto de valor de Profile que agrupa el idioma, la zona horaria, el tema visual y la moneda preferidos por el comerciante.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Product</td><td>Artículo registrado en el catálogo con información comercial y stock medido por unidad o por peso.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Product Backlog</td><td>Lista ordenada y priorizada de las User Stories y demás necesidades que orientan el desarrollo del producto.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>ProductType</code></td><td>Objeto de valor que identifica si un producto se administra por unidad (<code>UNIT</code>) o por peso (<code>WEIGHT</code>).</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>Profile</code></td><td>Agregado que administra los datos personales, el plan visible y las preferencias de configuración del comerciante.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Query</td><td>Objeto que representa una solicitud de lectura del estado del sistema sin modificar el dominio.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Receipt</td><td>Comprobante generado o registrado como evidencia de una venta o pago.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Repository</td><td>Abstracción que permite recuperar y persistir agregados sin acoplar el dominio a una tecnología de almacenamiento.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Sale</td><td>Transacción completada por la venta de uno o más productos a un cliente, de forma presencial o mediante un pedido confirmado.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Sale Item</td><td>Línea de una venta que registra el producto, cantidad o peso, precio unitario y subtotal correspondiente.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Scale Reading</td><td>Lectura enviada por una balanza inteligente que indica el peso físico actual de un producto.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Shift</td><td>Periodo de trabajo durante el cual se registran operaciones y al final del cual se realiza el cierre y la conciliación de caja.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Shrinkage</td><td>Pérdida de producto no asociada a una venta, causada por merma, deterioro, errores de pesaje o retiros no registrados.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Smart Scale</td><td>Dispositivo IoT que transmite lecturas de peso para validar el stock físico y detectar diferencias con el inventario digital.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Stock</td><td>Cantidad disponible de un producto, expresada en unidades o kilogramos según su tipo de medida.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>StockAlert</code></td><td>Entidad de Inventory que registra una alerta de stock bajo, agotamiento o vencimiento de un lote.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Stock Discrepancy</td><td>Diferencia detectada entre el stock registrado en Entreprenly y la existencia física medida en el establecimiento.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Subscription</td><td>Relación que representa el plan contratado por el comerciante y su estado de activación, renovación o cancelación.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Subscription Plan</td><td>Oferta de servicio que define precio, periodo de facturación y funcionalidades disponibles para el comerciante.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>UnitLot</code></td><td>Lote de un producto unitario con fecha de ingreso, vencimiento y stock expresado como cantidad entera.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>UnitProduct</code></td><td>Producto vendido por unidad con precio fijo y stock administrado mediante cantidades enteras.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">User Persona</td><td>Representación basada en evidencia de un segmento objetivo que sintetiza sus características, objetivos, necesidades y frustraciones.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">User Story</td><td>Requisito expresado desde la perspectiva de un usuario, acompañado de valor esperado y criterios de aceptación verificables.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>userId</code></td><td>Identificador lógico que vincula un perfil u otros registros del negocio con la identidad administrada por IAM.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">Value Object</td><td>Objeto del dominio definido por sus atributos, sin identidad propia y tratado como una unidad inmutable.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>WeightLot</code></td><td>Lote de un producto vendido por peso cuyo stock se expresa como una cantidad decimal en kilogramos.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;"><code>WeightProduct</code></td><td>Producto vendido por peso con precio por kilogramo y stock administrado mediante cantidades decimales.</td>
  </tr>
  <tr>
    <td style="vertical-align:middle; text-align:center;">WhatsApp Session</td><td>Conexión activa entre Entreprenly y la cuenta de WhatsApp del comerciante utilizada por el chatbot.</td>
  </tr>
</table>
