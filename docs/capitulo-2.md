# Capítulo II: Requirements Development and Software Solution Design

## 2.1. Competidores

### 2.1.1. Análisis competitivo

##### ¿Por qué llevar a cabo este análisis

El presente análisis comparativo examina el desempeño de nuestra propuesta Entreprenly (plataforma de gestión digital para retail de productos perecederos), frente a soluciones actuales del mercado como Odoo y Lightspeed Retail.

El objetivo es diseñar una solución que resuelva el "caos multicanal" en pequeños comercios minoristas de alimentos frescos: pedidos por WhatsApp mezclados con ventas presenciales, inventario gestionado a mano y merma por desconocimiento del stock real. Entreprenly centraliza todos los canales en una única plataforma web, automatizando el control de inventario mediante lógica digital e integrando una balanza inteligente (IoT) que permite validar el stock físico en tiempo real.

##### Competidores

<div align="center">
<table>
  <thead>
    <tr>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="images/capitulo2/entrepenly-icon-dark.png" width="200"></td>
      <td><img src="images/capitulo2/Odoo.png" width="200"></td>
      <td><img src="images/capitulo2/LightSpeedRetail.png" width="200"></td>
    </tr>
  </tbody>
</table>
</div>

**Perfil**

##### Overview 
<table>
  <thead>
    <tr>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Plataforma web que centraliza pedidos de distintos canales de venta (WhatsApp + presencial) y automatiza el inventario en tiempo real mediante lógica digital y validación física con una balanza inteligente (IoT), permitiendo contrastar el stock registrado con el peso real disponible y detectar inconsistencias.</td>
      <td>Sistema ERP integral que permite gestionar operaciones empresariales como ventas, inventario, contabilidad y CRM en múltiples sectores.</td>
      <td>Sistema de punto de venta basado en la nube que permite gestionar ventas físicas, inventario y reportes en tiempo real para comercios minoristas.</td>
    </tr>
  </tbody>
</table>                     

##### ¿Qué valor ofrece a los clientes? 
<table>
  <thead>
    <tr>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Elimina el caos multicanal unificando pedidos de WhatsApp y ventas presenciales, reduce pérdidas por desconocimiento de stock y errores humanos mediante validación automática con una balanza inteligente (IoT), garantizando consistencia entre el inventario digital y el físico en todo momento.</td>
      <td>Ofrece control total del negocio mediante integración de múltiples módulos empresariales, mejorando la planificación y gestión a escala.</td>
      <td>Permite agilizar ventas en tienda física, mejorar el control de inventario y generar reportes comerciales de forma rápida.</td>
    </tr>
  </tbody>
</table>

##### Perfil de marketing 
<table>
  <thead>
    <tr>
      <th></th>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Mercado objetivo</td>
      <td>Pequeños negocios de alimentos frescos: fruterías, minimarkets, dark stores y verdulerías con alta rotación de productos perecederos.</td>
      <td>Empresas de todos los tamaños que buscan digitalizar su gestión integral de operaciones.</td>
      <td>Comercios minoristas de cualquier rubro que requieren optimizar ventas en tienda física.</td>
    </tr>
    <tr>
      <td>Estrategias de marketing / Ventaja competitiva / ¿Qué valor ofrece a los clientes?</td>
      <td>Simplicidad de adopción, centralización multicanal y gestión automatizada de stock, con un modelo de costos accesible para microempresas.</td>
      <td>Modularidad y escalabilidad empresarial con amplio ecosistema de integraciones.</td>
      <td>Facilidad de uso y rapidez en procesos de venta en punto de venta físico.</td>
    </tr>
  </tbody>
</table>

##### Perfil de producto 
<table>
  <thead>
    <tr>
      <th></th>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Productos &amp; servicios</td>
      <td>dashboard móvil tipo POS con módulo de inventario inteligente: centraliza pedidos de WhatsApp y ventas presenciales, controla stock en tiempo real y se integra con una balanza inteligente (IoT) que permite calcular el stock de productos por peso y validar automáticamente el inventario físico comparando el peso real con el esperado. El sistema gestiona productos bajo dos tipos: productos unitarios con precio fijo y productos por peso con precio por kilogramo, donde el stock se representa como el peso total disponible. Además, incorpora gestión por lotes para registrar fechas de caducidad y mejorar la trazabilidad de productos perecederos.</td>
      <td>Suite de aplicaciones empresariales: ventas, inventario, contabilidad, CRM, recursos humanos y más, integrables por módulos.</td>
      <td>Sistema POS con gestión de ventas, control de inventario, reportes comerciales y soporte para múltiples tiendas físicas.</td>
    </tr>
    <tr>
      <td>Canales de distribución</td>
      <td>Plataforma web accesible desde cualquier dispositivo con actualización de datos en tiempo real.</td>
      <td>Plataforma web modular, aplicaciones móviles y herramientas empresariales integradas.</td>
      <td>Aplicación web y dispositivos POS físicos conectados a la nube.</td>
    </tr>
  </tbody>
</table>

##### Análisis SWOT
<table>
  <thead>
    <tr>
      <th></th>
      <th>Entreprenly</th>
      <th>Odoo</th>
      <th>Lightspeed Retail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Fortalezas</td>
      <td>Centralización multicanal (WhatsApp + presencial), enfoque en productos perecederos, modelo de costos accesible e integración con una balanza inteligente (IoT) que permite validar el inventario físico en tiempo real.</td>
      <td>Sistema robusto, completo y altamente escalable con gran ecosistema de módulos y comunidad activa.</td>
      <td>Facilidad de uso, agilidad en procesos de venta y control de inventario en punto de venta físico.</td>
    </tr>
    <tr>
      <td>Debilidades</td>
      <td>Menor posicionamiento de marca frente a soluciones consolidadas y dependencia de correcta calibración de la balanza para asegurar precisión.</td>
      <td>Elevada complejidad de implementación y costos altos para pequeños negocios; requiere consultoría especializada.</td>
      <td>Limitado a ventas presenciales; sin automatización avanzada de inventario ni integración nativa de canales digitales como WhatsApp.</td>
    </tr>
    <tr>
      <td>Oportunidades</td>
      <td>Creciente digitalización de mercados tradicionales en el Perú y accesibilidad de dispositivos IoT de bajo costo como balanzas inteligentes aplicadas al retail.</td>
      <td>Expansión en mercados emergentes y demanda de digitalización empresarial a gran escala.</td>
      <td>Adopción creciente de sistemas POS en el sector retail y apertura de nuevos locales físicos.</td>
    </tr>
    <tr>
      <td>Amenazas</td>
      <td>Costo inicial de implementación de una balanza inteligente (IoT) y resistencia al cambio tecnológico en pequeños comerciantes.</td>
      <td>Nuevas soluciones más ligeras y accesibles dirigidas a pequeñas empresas.</td>
      <td>Evolución hacia sistemas más integrados.</td>
    </tr>
  </tbody>
</table>

### 2.1.2. Estrategias y tácticas frente a competidores

Tras evaluar el ecosistema actual, se definen los siguientes ejes estratégicos:

#### Estrategias

#### Diferenciación de Producto: 
- Resolución del caos multicanal: El problema central del segmento es la falta de sincronización entre los pedidos recibidos por WhatsApp y las ventas presenciales. Entreprenly lo resuelve unificando ambos flujos en un único panel de control.

- Automatización física del inventario (IoT):
Entreprenly valida el inventario digital mediante una balanza inteligente conectada al sistema, permitiendo contrastar el stock esperado con el peso real y detectar descuadres en tiempo real.

- Gestión activa de perecederos: A diferencia de soluciones generalistas, Entreprenly está diseñado para productos de alta rotación y riesgo de merma, generando alertas automáticas cuando el stock está por debajo de niveles críticos.

#### Segmentación del Mercado: 
- Foco en microcomercio peruano de alimentos frescos: fruterías, minimarkets y negocios tradicionales con gestión manual o semi-digital.

#### Costos Competitivos: 
- Modelo de suscripción accesible, sin requerir infraestructura compleja.

- Retorno visible desde el primer mes gracias a reducción de merma y errores operativos.

#### Relaciones Estratégicas: 
- Alianzas con mercados locales y asociaciones de comerciantes.

- Uso de canales de comunicación comunes para facilitar adopción.

---

#### Tácticas: 

#### Lanzamiento de Productos Innovadores: 
- Implementación inicial con balanza inteligente conectada al sistema.

#### Campañas de Marketing Dirigidas: 

- Demostraciones en mercados mostrando reducción de pérdidas y control de stock en tiempo real.

- Comunicación enfocada en beneficios tangibles (menos merma, menos errores, más control).

#### Inversión en I+D (Investigación y Desarrollo): 
- Optimización continua del módulo de inventario en tiempo real.
- Mejora en la precisión del cálculo de stock basado en peso.
- Integración y calibración de balanza inteligente (IoT) adaptada a microcomercios.
#### Mejora de la Experiencia del Cliente: 

- Visualización del stock actualizado en tiempo real desde cualquier dispositivo.
- Reducción de errores en pedidos gracias a la sincronización entre ventas y validación física del inventario.

## 2.2. Entrevistas
Esta sección presenta el estudio cualitativo basado en entrevistas semiestructuradas orientadas a validar una solución tecnológica que integra <b>Inteligencia Artificial (Chatbots), Internet de las Cosas (Sensores de peso) y automatización de pagos</b>. El estudio exploró las deficiencias actuales en el control de inventarios, la falta de transparencia en el pesaje de productos y la fricción en la atención al cliente vía WhatsApp. Participaron dueños de negocios con hasta 40 años de experiencia, expertos en procesos operativos y clientes finales, permitiendo identificar que la "inercia operativa" y el desorden financiero son las principales barreras para la digitalización de la microempresa local.

### 2.2.1. Diseño de entrevistas
"Antes de iniciar la entrevista, se brinda un saludo cordial y una breve presentación del entrevistador, explicando que el propósito de la conversación es conocer los desafíos y experiencias de los emprendedores en su gestión diaria. Se aclara que la información recopilada será utilizada únicamente con fines académicos para el desarrollo del proyecto y se mantendrá en estricta confidencialidad. Como primer paso, se solicita al entrevistado brindar su nombre completo, edad y lugar de residencia para fines de registro. Asimismo, se señala que la entrevista tendrá una duración aproximada de 5 a 10 minutos y se desarrollará de manera abierta, por lo que se le invita a responder con total libertad y basándose en ejemplos de su experiencia real, destacando que no existen respuestas correctas o incorrectas."

**Preguntas introductorias**
-   ¿Cuál es su nombre?
-   ¿Cuántos años tiene?
-   ¿Dónde vive?

**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**
1. Actualmente, ¿cómo lleva el control de los productos que tiene en estantes? (¿Usa cuaderno, Excel o solo memoria?).

2. ¿Con qué frecuencia nota que el stock que debería tener en el sistema o cuaderno no coincide con lo que físicamente hay en el estante?

3. ¿Ha tenido pérdidas económicas por productos mal pesados o errores humanos al registrar las ventas?

4. Al final del día, ¿qué tan difícil le resulta cuadrar el dinero en efectivo con los vouchers de tarjeta y los reportes de Yape o Plin?

5. ¿Qué problemas encuentra al tener que registrar manualmente en su sistema una venta que se pagó por el terminal POS o billetera digital?

6. Si tuviera una balanza que le dijera automáticamente cuántas unidades quedan de un producto solo por el peso, ¿cuánto tiempo y esfuerzo cree que ahorraría en inventarios?

7. ¿Actualmente atiende pedidos por WhatsApp? Si es así, ¿le resulta difícil estar pendiente del celular mientras atiende a los clientes en el local?

8. ¿Qué tan útil sería que, al confirmarse una venta por el chatbot, su POS físico imprima automáticamente el comprobante sin que usted tenga que intervenir?

9. ¿Le daría más tranquilidad tener un sistema que separe estrictamente lo que entra en efectivo de lo que entra por el POS para evitar errores de arqueo?

10. Si el sistema le permitiera vender 24/7 mediante un bot sin errores de stock, ¿cree que su volumen de ventas aumentaría significativamente?

**Segmento 2: Clientes Finales**
1. ¿Qué es lo que más le molesta cuando intenta comprar en un minimarket local por delivery o WhatsApp?

2. ¿Alguna vez ha pedido un producto por chat y, luego de pagar, le dijeron que ya se había agotado? ¿Cómo afectó eso su confianza en la tienda?

3. ¿Habitualmente prefiere pagar sus compras diarias con efectivo o utiliza más tarjetas, Yape y Plin?

4. Al comprar productos que se venden por peso o unidades, ¿qué tanta seguridad tiene de que le están entregando la cantidad exacta por la que pagó?

5. ¿Ha utilizado alguna vez un chatbot para realizar compras? ¿Le parece más cómodo que esperar a que una persona le responda el mensaje?

6. ¿Le daría más seguridad saber que el stock que ve en su celular está validado por un sensor de peso real en el estante de la tienda?

7. ¿Qué importancia le da a recibir el "papelito" o comprobante del POS inmediatamente después de realizar un pago virtual?

8. Si pudiera ver el catálogo real de un mercado cercano y comprar con 3 clics por WhatsApp, ¿dejaría de ir presencialmente para ahorrar tiempo?

9. ¿Le genera desconfianza pagar por adelantado en negocios locales si no recibe una confirmación automática del sistema?

10. ¿Preferiría comprar en un minimarket que use esta tecnología sobre uno tradicional que no garantiza el stock ni acepta todos los medios de pago?


### 2.2.2. Registro de entrevistas

Por completar.

### 2.2.3. Análisis de entrevistas

Por completar.

## 2.3. Needfinding

### 2.3.1. User Personas

**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**
<p align="center">
  <img src="images/capitulo2/user_persona_Don_Lucho.png" alt="user_persona_valentina" width="500"/>
</p>

**Segmento 2: Clientes Finales**
<p align="center">
  <img src="images/capitulo2/user_persona_Andrea_Torres.png" alt="user_persona_andrea" width="500"/>
</p>


### 2.3.2. User Task Matrix


**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**

<div align="center">
<table>
  <thead>
    <tr>
      <th>Tarea</th>
      <th>Frecuencia</th>
      <th>Importancia</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Verificar el stock disponible de productos en el local</td>
      <td>Always</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Registrar las ventas del día (efectivo y digital)</td>
      <td>Always</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Cuadrar la caja al cierre del turno</td>
      <td>Always</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Separar ingresos en efectivo de pagos por Yape/Plin/POS</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Atender pedidos de clientes por WhatsApp</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Reponer productos cuando detecta quiebre de stock</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Verificar que el peso despachado coincida con lo cobrado</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Delegar la atención de WhatsApp a un familiar o empleado</td>
      <td>Sometimes</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Revisar movimientos de Yape o Plin desde el celular</td>
      <td>Often</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Realizar conteo manual de inventario</td>
      <td>Sometimes</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Coordinar pedidos con proveedores</td>
      <td>Sometimes</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Detectar pérdidas o mermas en productos</td>
      <td>Rarely</td>
      <td>High</td>
    </tr>
  </tbody>
</table>
</div>

**Segmento 2: Clientes Finales**

<div align="center">
<table>
  <thead>
    <tr>
      <th>Tarea</th>
      <th>Frecuencia</th>
      <th>Importancia</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Buscar productos disponibles en negocios cercanos</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Consultar por WhatsApp si un producto está disponible</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Realizar el pago de una compra de forma digital (Yape/Tarjeta)</td>
      <td>Always</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Verificar que el producto recibido coincida con lo pedido</td>
      <td>Often</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Esperar confirmación de pago o recibo tras una compra</td>
      <td>Always</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Evaluar si confiar en un negocio local para comprar en línea</td>
      <td>Sometimes</td>
      <td>High</td>
    </tr>
    <tr>
      <td>Comparar precios entre negocios locales</td>
      <td>Sometimes</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Ir presencialmente al mercado o minimarket</td>
      <td>Sometimes</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Revisar el estado de su pedido tras confirmar la compra</td>
      <td>Often</td>
      <td>Medium</td>
    </tr>
    <tr>
      <td>Reclamar o solicitar devolución por producto agotado o incorrecto</td>
      <td>Rarely</td>
      <td>High</td>
    </tr>
  </tbody>
</table>
</div>

**Análisis del User Task Matrix**
Las tareas con mayor frecuencia e importancia para el segmento de comerciantes son la verificación de stock, el registro de ventas y el cuadre de caja, las tres calificadas como Always y High. Esto confirma que su jornada gira en torno al control operativo del negocio y que cualquier herramienta que automatice o simplifique estas tareas tendrá una adopción directa e inmediata. La atención de pedidos por WhatsApp y la separación de medios de pago, calificadas como Often y High, representan tareas críticas que hoy realizan de forma manual y con alta probabilidad de error.

Para el segmento de clientes finales, las tareas de mayor frecuencia e importancia son el pago digital y la espera de confirmación, ambas calificadas como Always y High, junto con la consulta de disponibilidad por WhatsApp y la verificación del pedido recibido, calificadas como Often y High. Esto indica que su experiencia de compra está completamente mediada por el canal digital y que la confianza en el proceso depende directamente de recibir respuestas rápidas y confirmaciones automáticas.

La principal coincidencia entre ambos segmentos es que los dos otorgan alta importancia a la verificación del stock real: el segmento de comerciantes desde el lado operativo del negocio y el segmento de clientes finales desde el lado del consumidor que no quiere pagar por algo que no existe. La principal diferencia radica en la frecuencia del ontacto presencial: el segmento de comerciantes opera físicamente en el local todos los días, mientras que el segmento de clientes finales busca reducir o eliminar esa necesidad. Esta divergencia refuerza el valor de Entreprenly como puente entre la operación física del comerciante y la experiencia digital del cliente.

### 2.3.3. User Journey Mapping

**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**
<p align="center">
  <img src="images/capitulo2/journey_mapin_segmento1.png" alt="user_persona_valentina" width="500"/>
</p>

**Segmento 2: Clientes Finales**
<p align="center">
  <img src="images/capitulo2/journey_mapin_segmento2.png" alt="user_persona_andrea" width="500"/>
</p>

### 2.3.4. Empathy Mapping

**Segmento 1: Comerciantes (Dueños de Minimarkets/Mercados)**
<p align="center">
  <img src="images/capitulo2/emp_comerciantes.png" alt="user_persona_valentina" width="500"/>
</p>

**Segmento 2: Clientes Finales**
<p align="center">
  <img src="images/capitulo2/emp_clientes.png" alt="user_persona_andrea" width="500"/>
</p>


### 2.3.5. Big Picture EventStorming

Por completar.

### 2.3.6. Ubiquitous Language

Por completar.

## 2.4. Requirements Specification

En esta sección se especifican los requisitos funcionales de Entreprenly mediante las User Stories, el Impact Mapping y el Product Backlog. Estos artefactos permiten definir el alcance del producto, relacionar los objetivos de negocio con las funcionalidades propuestas y organizar el trabajo del equipo de acuerdo con el valor y la prioridad de cada requerimiento.

### 2.4.1. User Stories

En esta sección se especifican las épicas y las User Stories que definen el alcance funcional de Entreprenly como una solución compuesta por una aplicación móvil y una Landing Page. Se conservan los identificadores del producto original para mantener la trazabilidad, pero las interacciones del dashboard se adaptan al contexto móvil. Primero se presentan las épicas con el conjunto de User Stories que agrupan y luego se detalla cada historia con su descripción y criterios de aceptación.

### Épicas

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 01</strong></td>
      <td colspan="2"><strong>Gestión de inventario</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario quiero gestionar mi inventario (lotes y productos) para visualizar los datos con mayor claridad.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-01</td>
      <td colspan="2">Agregar productos</td>
    </tr>
    <tr>
      <td>US-02</td>
      <td colspan="2">Editar lotes</td>
    </tr>
    <tr>
      <td>US-03</td>
      <td colspan="2">Agregar lotes</td>
    </tr>
    <tr>
      <td>US-04</td>
      <td colspan="2">Eliminar lotes</td>
    </tr>
    <tr>
      <td>US-05</td>
      <td colspan="2">Editar productos</td>
    </tr>
    <tr>
      <td>US-06</td>
      <td colspan="2">Visualizar detalles de lotes</td>
    </tr>
    <tr>
      <td>US-07</td>
      <td colspan="2">Visualizar detalles de producto</td>
    </tr>
    <tr>
      <td>US-08</td>
      <td colspan="2">Buscar productos</td>
    </tr>
    <tr>
      <td>US-09</td>
      <td colspan="2">Crear lotes</td>
    </tr>
    <tr>
      <td>US-10</td>
      <td colspan="2">Escanear código QR en inventario</td>
    </tr>
    <tr>
      <td>US-90</td>
      <td colspan="2">Eliminar productos</td>
    </tr>
    <tr>
      <td>US-95</td>
      <td colspan="2">Buscar lotes</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 02</strong></td>
      <td colspan="2"><strong>Alertas y notificaciones móviles de inventario</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario quiero recibir alertas dentro de la aplicación y notificaciones push sobre el estado de mis lotes para organizarme mejor.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-11</td>
      <td colspan="2">Detectar stock agotado</td>
    </tr>
    <tr>
      <td>US-12</td>
      <td colspan="2">Mostrar alertas de estado al visualizar detalles</td>
    </tr>
    <tr>
      <td>US-13</td>
      <td colspan="2">Visualizar dashboard móvil de lotes</td>
    </tr>
    <tr>
      <td>US-14</td>
      <td colspan="2">Recibir notificación de caducidad de lote</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 03</strong></td>
      <td colspan="2"><strong>Proceso de suscripción</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario con una cuenta creada y el Plan Free asignado por defecto, quiero iniciar la suscripción al Plan Control desde la Landing Page o desde la sección "Suscripción" de la aplicación móvil para habilitar las funcionalidades premium.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-15</td>
      <td colspan="2">Seleccionar plan de suscripción</td>
    </tr>
    <tr>
      <td>US-16</td>
      <td colspan="2">Iniciar proceso de suscripción</td>
    </tr>
    <tr>
      <td>US-17</td>
      <td colspan="2">Registrar datos de facturación</td>
    </tr>
    <tr>
      <td>US-18</td>
      <td colspan="2">Procesar cobro de suscripción</td>
    </tr>
    <tr>
      <td>US-19</td>
      <td colspan="2">Activar suscripción</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 04</strong></td>
      <td colspan="2"><strong>Configuración de suscripción</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario, quiero visualizar y gestionar mi plan actual desde la sección "Suscripción" de la aplicación móvil para consultar su estado, renovarlo o cancelarlo según mis necesidades.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-20</td>
      <td colspan="2">Visualizar panel de suscripción</td>
    </tr>
    <tr>
      <td>US-21</td>
      <td colspan="2">Consultar estado de suscripción</td>
    </tr>
    <tr>
      <td>US-22</td>
      <td colspan="2">Renovar suscripción</td>
    </tr>
    <tr>
      <td>US-23</td>
      <td colspan="2">Solicitar cancelación de suscripción</td>
    </tr>
    <tr>
      <td>US-24</td>
      <td colspan="2">Cancelar suscripción</td>
    </tr>
    <tr>
      <td>US-25</td>
      <td colspan="2">Agregar método de pago de suscripción</td>
    </tr>
    <tr>
      <td>US-26</td>
      <td colspan="2">Completar datos fiscales de suscripción</td>
    </tr>
    <tr>
      <td>US-27</td>
      <td colspan="2">Descargar historial de suscripción</td>
    </tr>
    <tr>
      <td>US-96</td>
      <td colspan="2">Gestionar métodos de pago de suscripción</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 05</strong></td>
      <td colspan="2"><strong>Gestión de Transacciones y Operaciones de Venta</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante, quiero gestionar el proceso completo de registro de ventas, desde la selección de productos hasta la emisión del comprobante, para asegurar una operación ágil y sin errores.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-28</td>
      <td colspan="2">Buscar productos en el inventario y validar su tipo de medida</td>
    </tr>
    <tr>
      <td>US-29</td>
      <td colspan="2">Registrar la cantidad de unidades en el Ticket de Venta</td>
    </tr>
    <tr>
      <td>US-30</td>
      <td colspan="2">Capturar el peso mediante balanza IoT o ingreso manual</td>
    </tr>
    <tr>
      <td>US-31</td>
      <td colspan="2">Gestionar el desglose y cálculo del Ticket de Venta</td>
    </tr>
    <tr>
      <td>US-32</td>
      <td colspan="2">Seleccionar el método de pago para la transacción</td>
    </tr>
    <tr>
      <td>US-33</td>
      <td colspan="2">Finalizar la venta y emitir el comprobante de pago</td>
    </tr>
    <tr>
      <td>US-34</td>
      <td colspan="2">Cancelar venta en curso</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 06</strong></td>
      <td colspan="2"><strong>Control de Ingresos y Monitoreo de Caja</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como dueño del negocio, quiero supervisar los flujos de dinero entrante en tiempo real, para tener visibilidad total sobre la liquidez y los métodos de pago utilizados durante el día.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-35</td>
      <td colspan="2">Clasificar automáticamente los ingresos según el medio de pago</td>
    </tr>
    <tr>
      <td>US-36</td>
      <td colspan="2">Monitorear el Resumen de Caja en tiempo real dentro del panel de ventas</td>
    </tr>
    <tr>
      <td>US-97</td>
      <td colspan="2">Consultar el historial de ventas del día</td>
    </tr>
    <tr>
      <td>US-98</td>
      <td colspan="2">Consultar el detalle de una venta registrada</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 07</strong></td>
      <td colspan="2"><strong>Configurar Chatbot de WhatsApp Business</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante, quiero configurar y vincular el chatbot de WhatsApp Business desde la aplicación móvil para activar la atención automatizada de clientes.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-37</td>
      <td colspan="2">Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td>
    </tr>
    <tr>
      <td>US-38</td>
      <td colspan="2">Consultar estado de vinculación del chatbot</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 08</strong></td>
      <td colspan="2"><strong>Gestionar conversaciones desde la aplicación móvil</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante, quiero visualizar y gestionar los chats de mis clientes directamente desde la aplicación móvil para atenderlos sin salir de Entreprenly.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-39</td>
      <td colspan="2">Visualizar conversaciones de clientes en la aplicación móvil</td>
    </tr>
    <tr>
      <td>US-40</td>
      <td colspan="2">Responder mensajes de clientes desde la aplicación móvil</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 09</strong></td>
      <td colspan="2"><strong>Procesar Pedidos mediante Bot Automático</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como sistema, quiero que el chatbot responda automáticamente a los clientes según el stock disponible del negocio para facilitar el proceso de pedido sin intervención manual del comerciante.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-41</td>
      <td colspan="2">Responder consulta de producto disponible</td>
    </tr>
    <tr>
      <td>US-42</td>
      <td colspan="2">Sugerir alternativas ante producto no disponible</td>
    </tr>
    <tr>
      <td>US-43</td>
      <td colspan="2">Confirmar pedido con el cliente</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 10</strong></td>
      <td colspan="2"><strong>Gestionar Pago Digital P2P</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como cliente y comerciante, queremos gestionar el envío y la validación de comprobantes de pago digitales (Yape/Plin) a través de WhatsApp y la aplicación móvil para garantizar una transacción segura y confirmada antes de finalizar la venta.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-44</td>
      <td colspan="2">Recibir instrucciones de pago por WhatsApp</td>
    </tr>
    <tr>
      <td>US-45</td>
      <td colspan="2">Reportar comprobante de pago digital</td>
    </tr>
    <tr>
      <td>US-46</td>
      <td colspan="2">Validar comprobante de pago desde la aplicación móvil</td>
    </tr>
    <tr>
      <td>US-47</td>
      <td colspan="2">Notificar resultado de validación al cliente</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 11</strong></td>
      <td colspan="2"><strong>Confirmar Venta y Emitir Comprobante</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como dueño de negocio, quiero que el sistema confirme el pedido tras la validación del pago, descuente el stock y emita un comprobante digital, para mantener el control financiero y brindar un respaldo de la compra al cliente.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-48</td>
      <td colspan="2">Confirmar pedido y descontar stock</td>
    </tr>
    <tr>
      <td>US-49</td>
      <td colspan="2">Registrar venta en el sistema</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 12</strong></td>
      <td colspan="2"><strong>Manejar Flujos Alternativos y Restricciones</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como sistema de gestión, quiero manejar escenarios de excepción como falta de stock, tiempos de espera agotados y rechazos de pago, para proteger la integridad del inventario y evitar pérdidas económicas.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-50</td>
      <td colspan="2">Manejar stock insuficiente en pedido</td>
    </tr>
    <tr>
      <td>US-51</td>
      <td colspan="2">Cancelar pedido por expiración de tiempo de pago</td>
    </tr>
    <tr>
      <td>US-52</td>
      <td colspan="2">Rechazar comprobante de pago inválido</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 13</strong></td>
      <td colspan="2"><strong>Technical Stories – Implementar RESTful API</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como equipo de desarrollo, queremos implementar una arquitectura de servicios RESTful segura y escalable para que todos los componentes de la plataforma intercambien datos de manera consistente.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-53</td>
      <td colspan="2">Conocer propuesta de valor en landing page</td>
    </tr>
    <tr>
      <td>US-54</td>
      <td colspan="2">Gestionar ciclo de vida de pedidos mediante API</td>
    </tr>
    <tr>
      <td>US-55</td>
      <td colspan="2">Validar y registrar pagos mediante API</td>
    </tr>
    <tr>
      <td>US-91</td>
      <td colspan="2">Autenticar y autorizar usuarios mediante JWT</td>
    </tr>
    <tr>
      <td>US-92</td>
      <td colspan="2">Containerizar y desplegar la API mediante Docker y CI/CD</td>
    </tr>
    <tr>
      <td>US-93</td>
      <td colspan="2">Persistir datos mediante JPA por bounded context</td>
    </tr>
    <tr>
      <td>US-94</td>
      <td colspan="2">Desplegar la Landing Page en Firebase Hosting</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 14</strong></td>
      <td colspan="2"><strong>Inicio de sesión y registro</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario quiero registrarme, verificar mi cuenta, iniciar sesión y recuperar mi contraseña para acceder de forma segura a la plataforma.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-56</td>
      <td colspan="2">Registrar cuenta con email</td>
    </tr>
    <tr>
      <td>US-57</td>
      <td colspan="2">Verificar email</td>
    </tr>
    <tr>
      <td>US-58</td>
      <td colspan="2">Iniciar sesión con credenciales</td>
    </tr>
    <tr>
      <td>US-59</td>
      <td colspan="2">Iniciar sesión con Google OAuth</td>
    </tr>
    <tr>
      <td>US-60</td>
      <td colspan="2">Recuperar contraseña</td>
    </tr>
    <tr>
      <td>US-61</td>
      <td colspan="2">Cerrar sesión</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 15</strong></td>
      <td colspan="2"><strong>Perfil y configuración</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario quiero gestionar mi perfil y preferencias personales para personalizar mi experiencia dentro de la plataforma.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-62</td>
      <td colspan="2">Visualizar perfil actual</td>
    </tr>
    <tr>
      <td>US-63</td>
      <td colspan="2">Actualizar nombre y biografía</td>
    </tr>
    <tr>
      <td>US-64</td>
      <td colspan="2">Subir foto de perfil</td>
    </tr>
    <tr>
      <td>US-65</td>
      <td colspan="2">Cambiar email con re-verificación</td>
    </tr>
    <tr>
      <td>US-66</td>
      <td colspan="2">Cambiar contraseña</td>
    </tr>
    <tr>
      <td>US-67</td>
      <td colspan="2">Configurar preferencias de idioma, zona horaria, tema y moneda</td>
    </tr>
    <tr>
      <td>US-68</td>
      <td colspan="2">Configurar notificaciones</td>
    </tr>
    <tr>
      <td>US-69</td>
      <td colspan="2">Registrar y verificar número de teléfono</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 16</strong></td>
      <td colspan="2"><strong>Panel de Inicio (Home)</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante, quiero contar con un panel de inicio centralizado que me muestre un resumen visual del estado de mi negocio al ingresar a la plataforma, para tomar decisiones rápidas sin necesidad de navegar entre módulos.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-70</td>
      <td colspan="2">Visualizar resumen de ventas del día</td>
    </tr>
    <tr>
      <td>US-71</td>
      <td colspan="2">Visualizar estado del chatbot en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td>US-72</td>
      <td colspan="2">Visualizar alertas de inventario en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td>US-73</td>
      <td colspan="2">Visualizar contador de pedidos pendientes en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td>US-74</td>
      <td colspan="2">Visualizar pedidos recientes en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td>US-75</td>
      <td colspan="2">Acceder a módulos desde accesos directos de la pantalla de Inicio</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 17</strong></td>
      <td colspan="2"><strong>Centro de Soporte y Ayuda</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante, quiero contar con un centro de soporte accesible desde el botón de Ayuda para resolver mis dudas, reportar problemas y consultar guías de uso de la plataforma sin necesidad de contactar a un agente externo.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-76</td>
      <td colspan="2">Visualizar el centro de soporte</td>
    </tr>
    <tr>
      <td>US-77</td>
      <td colspan="2">Buscar artículo de ayuda</td>
    </tr>
    <tr>
      <td>US-78</td>
      <td colspan="2">Consultar artículo de ayuda</td>
    </tr>
    <tr>
      <td>US-79</td>
      <td colspan="2">Reportar un problema</td>
    </tr>
    <tr>
      <td>US-80</td>
      <td colspan="2">Confirmar envío del reporte</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 18</strong></td>
      <td colspan="2"><strong>Experiencia global de la aplicación móvil</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como usuario autenticado, quiero contar con navegación móvil, cambio de idioma y manejo de estados generales para utilizar Entreprenly de forma consistente entre módulos.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-81</td>
      <td colspan="2">Navegar entre módulos desde el menú de navegación móvil</td>
    </tr>
    <tr>
      <td>US-82</td>
      <td colspan="2">Cambiar idioma de la interfaz</td>
    </tr>
    <tr>
      <td>US-83</td>
      <td colspan="2">Gestionar destinos de navegación no disponibles</td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>EPIC - 19</strong></td>
      <td colspan="2"><strong>Landing Page</strong></td>
    </tr>
    <tr>
      <td colspan="3"><strong>Descripción:</strong><br><br>Como comerciante quiero acceder a la landing page para visualizar la propuesta de valor de Entreprenly, sus funciones, planes y cómo facilita la gestión de inventario, ventas y atención por WhatsApp de mi negocio.</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td colspan="2"><strong>User Story</strong></td>
    </tr>
    <tr>
      <td>US-84</td>
      <td colspan="2">Visualizar la propuesta de valor</td>
    </tr>
    <tr>
      <td>US-85</td>
      <td colspan="2">Explorar las funciones principales</td>
    </tr>
    <tr>
      <td>US-86</td>
      <td colspan="2">Revisar los planes de suscripción</td>
    </tr>
    <tr>
      <td>US-87</td>
      <td colspan="2">Consultar las preguntas frecuentes</td>
    </tr>
    <tr>
      <td>US-88</td>
      <td colspan="2">Acceder a la aplicación móvil desde la landing page</td>
    </tr>
    <tr>
      <td>US-89</td>
      <td colspan="2">Descargar la aplicación mediante el botón de acción principal</td>
    </tr>
  </tbody>
</table>

### User Stories

A continuación se detalla cada User Story con su épica relacionada, descripción y criterios de aceptación.

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>01</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Agregar productos</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero agregar productos para gestionar mi inventario de manera eficiente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Agregar producto unitario correctamente</strong><br>
      Dado que el comerciante está en el formulario de productos en la pantalla "Productos" de la aplicación móvil, cuando ingresa nombre, descripción, precio por unidad, stock inicial, categoría y tipo "unitario" y presiona "Guardar", entonces el producto se registra en el inventario y aparece en el listado con tipo "Unit Product".<br><br>
      <strong>Scenario 2: Agregar producto por peso correctamente</strong><br>
      Dado que el comerciante está en el formulario de productos, cuando selecciona tipo "por peso" e ingresa precio por kg y stock en kg, entonces el producto se registra y aparece en el listado con tipo "Weight Product" mostrando el stock en kilogramos.<br><br>
      <strong>Scenario 3: Validación de campos obligatorios</strong><br>
      Dado que el comerciante está en el formulario de productos, cuando deje campos obligatorios vacíos y presione "Guardar", entonces el sistema resalta cada campo omitido con el mensaje "Este campo es obligatorio" y no registra el producto.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>02</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Editar lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero editar los lotes para actualizar los datos del inventario.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Editar lote correctamente</strong><br>
      Dado que el usuario está en la sección de lotes y selecciona un lote existente, cuando modifique los datos correctamente y presione "Guardar", entonces los cambios del lote se actualizarán exitosamente.<br><br>
      <strong>Scenario 2: Validación al editar lote</strong><br>
      Dado que el usuario está editando un lote, cuando ingrese datos inválidos o deje campos obligatorios vacíos y presione "Guardar", entonces el sistema mostrará mensajes de error y no guardará los cambios.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>03</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Agregar lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero agregar lotes para gestionar correctamente las cantidades y fechas de vencimiento.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Agregar lote correctamente</strong><br>
      Dado que el usuario está en la sección de lotes y selecciona un lote existente, cuando ingrese una cantidad y fecha válida y presione "Agregar", entonces el nuevo lote se agregará exitosamente.<br><br>
      <strong>Scenario 2: Intento de registro de lote con información incompleta</strong><br>
      Dado que el usuario se encuentra en el formulario de Agregación de Lotes, cuando intenta procesar la solicitud dejando uno o más campos obligatorios vacíos, entonces el sistema debe impedir el registro y resaltar cada campo omitido con el mensaje: "Este campo es obligatorio".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>04</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Eliminar lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero eliminar lotes para deshacerme de los lotes que no me sirvan.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Eliminar lote correctamente</strong><br>
      Dado que el usuario está en la sección de lotes y selecciona un lote existente, cuando presione "Eliminar", entonces el lote se eliminará exitosamente.<br><br>
      <strong>Scenario 2: Validación al eliminar lote</strong><br>
      Dado que el usuario está en la sección de lotes y no selecciona un lote existente, cuando presione "Eliminar", entonces saldrá un mensaje de error de no haber seleccionado un lote.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>05</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Editar productos</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero editar productos para actualizar los datos en el inventario.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Producto editado correctamente</strong><br>
      Dado que el usuario está en la sección de productos y selecciona un producto existente, cuando presione "Editar", entonces el producto se actualizará exitosamente.<br><br>
      <strong>Scenario 2: Validación al editar productos</strong><br>
      Dado que el usuario se encuentra en la lista de inventario y ha seleccionado un producto existente, cuando el usuario intenta cambiar el "Tipo de Producto" y presiona el botón de guardar, entonces el sistema debe impedir la acción y mostrar un mensaje de error indicando: "Este campo no se puede modificar".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>06</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar detalles de lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero visualizar los detalles de los lotes para gestionar mejor el inventario.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Detalles de lote mostrados correctamente</strong><br>
      Dado que el usuario está en la sección de lotes y selecciona un lote existente, cuando presione "Ver Detalles", entonces los detalles se mostrarán exitosamente.<br><br>
      <strong>Scenario 2: Error al recuperar los detalles del lote</strong><br>
      Dado que el usuario visualiza la tarjeta de un producto con lotes existentes, cuando el usuario presiona "Ver Detalles" pero ocurre un error de comunicación con el servidor (timeout o error 500), entonces el sistema debe mostrar un mensaje de error indicando: "No se pudieron cargar los detalles en este momento. Inténtelo más tarde".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>07</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar detalles de producto</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero visualizar la información detallada de cada producto en el listado para conocer rápidamente sus características, stock disponible y precio sin necesidad de ingresar a otra pantalla.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visualización de información del producto</strong><br>
      Dado que el usuario accede al listado de productos, cuando se carga la información, entonces cada producto debe mostrar: tipo, nombre, descripción, código QR, stock total y precio.<br><br>
      <strong>Scenario 2: Manejo de información incompleta del producto</strong><br>
      Dado que un producto no cuenta con algún dato, cuando se carga la información, entonces el sistema muestra los datos disponibles y los campos faltantes aparecen como "-".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>08</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Buscar productos</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero tener un buscador de productos para perder menos tiempo buscando en el inventario.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Búsqueda de productos por nombre</strong><br>
      Dado que el usuario está en el listado de productos, cuando ingresa el nombre de un producto en el campo de búsqueda, entonces el sistema filtra y muestra los productos que coincidan.<br><br>
      <strong>Scenario 2: Búsqueda de productos por categoría</strong><br>
      Dado que el usuario está en el listado de productos, cuando selecciona o ingresa una categoría, entonces el sistema filtra y muestra los productos de esa categoría.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>09</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Crear lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero crear lotes de productos para controlar mejor el stock y la caducidad en el inventario.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Creación de lote exitosa</strong><br>
      Dado que el usuario está en la sección de productos, cuando presiona "Crear Lote", selecciona un producto y completa los datos correctamente, entonces el sistema registra el nuevo lote y lo muestra en la lista.<br><br>
      <strong>Scenario 2: Validación al crear lote</strong><br>
      Dado que el usuario no selecciona un producto o ingresa datos incompletos, cuando intenta guardar el lote, entonces el sistema muestra mensajes de error y no permite su creación.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>10</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Escanear código QR en inventario</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario de inventario, quiero escanear códigos QR desde los formularios de productos y lotes para completar el código del registro sin ingresarlo manualmente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Escaneo de QR exitoso</strong><br>
      Dado que el usuario se encuentra en un formulario de producto o lote con el componente de escaneo disponible, cuando presiona el botón con ícono de cámara y escanea un código QR válido, entonces el sistema completa el campo de código QR con el valor detectado y cierra el panel de escaneo.<br><br>
      <strong>Scenario 2: Permiso de cámara denegado</strong><br>
      Dado que el usuario presiona el botón de escaneo, cuando el sistema operativo deniega el permiso de acceso a la cámara, entonces el sistema muestra el mensaje de permiso denegado y no modifica el campo de código QR.<br><br>
      <strong>Scenario 3: Cámara no disponible</strong><br>
      Dado que el usuario intenta abrir el escáner y el dispositivo no permite iniciar la cámara, cuando el sistema recibe el error, entonces muestra el mensaje "No se pudo acceder a la cámara" y permite cerrar el panel.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>11</td>
      <td><strong>Epic ID</strong></td>
      <td>02</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Detectar stock agotado</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero recibir alertas cuando el stock esté bajo o agotado para reponer los productos a tiempo.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Alerta de stock próximo a agotarse</strong><br>
      Dado que uno o más productos tienen stock total mayor a cero pero igual o menor a 5 unidades o kilogramos, cuando el usuario presiona el botón de campana de alertas en el dashboard móvil de lotes, entonces el panel de alertas muestra una alerta de stock bajo indicando el número de lotes a punto de quedarse sin stock, junto con el producto y el lote afectados.<br><br>
      <strong>Scenario 2: Alerta de stock agotado</strong><br>
      Dado que uno o más lotes tienen cantidad igual a cero o un producto no tiene stock en ninguno de sus lotes, cuando el usuario accede al dashboard móvil de lotes, entonces el indicador "Sin Stock" muestra el número de casos agotados y el panel de alertas lista cada lote sin stock indicando el producto afectado.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>12</td>
      <td><strong>Epic ID</strong></td>
      <td>02</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Mostrar alertas de estado al visualizar detalles</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero visualizar alertas de estado al ver el detalle de un lote para identificar rápidamente si tiene stock bajo, está agotado o próximo a vencer.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Alertas de estado mostradas en el detalle</strong><br>
      Dado que el producto consultado tiene lotes con stock bajo, agotados, vencidos o próximos a vencer, cuando el usuario presiona "Ver detalles", entonces la pantalla móvil muestra alertas agrupadas por tipo y una lista de lotes; los lotes vencidos se identifican con la etiqueta "Vencido" y la fecha de caducidad resaltada.<br><br>
      <strong>Scenario 2: Sin alertas si el estado es normal</strong><br>
      Dado que los lotes del producto no presentan condiciones críticas, cuando el usuario presiona "Ver detalles", entonces el sistema muestra la lista de lotes sin alertas ni etiquetas de estado crítico.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>13</td>
      <td><strong>Epic ID</strong></td>
      <td>02</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar dashboard móvil de lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero visualizar un dashboard móvil de lotes con indicadores y alertas para conocer rápidamente el estado de mi inventario al ingresar al módulo de lotes.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visualización de resumen de lotes</strong><br>
      Dado que el usuario ingresa al módulo de lotes, cuando se carga la pantalla, entonces se muestran los indicadores "Total de Lotes" (contando solo lotes asociados a productos existentes), "Lotes Vencidos" y "Sin Stock", las tarjetas por producto con su stock total y número de lotes registrados, y el botón de campana con el contador de alertas activas.<br><br>
      <strong>Scenario 2: Sin alertas si no hay condiciones críticas</strong><br>
      Dado que no existen lotes vencidos, agotados, con stock bajo ni próximos a vencer, cuando se carga el dashboard móvil, entonces el contador de la campana no se muestra y, al abrir el panel de alertas, se indica el mensaje "No hay alertas pendientes.".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>14</td>
      <td><strong>Epic ID</strong></td>
      <td>02</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Recibir notificación de caducidad de lote</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero recibir una notificación push cuando un lote esté próximo a vencer o ya haya vencido para tomar acciones como priorizar su venta o descartarlo.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Notificación de lote próximo a vencer</strong><br>
      Dado que uno o más lotes vencerán dentro de los próximos 5 días y el usuario autorizó las notificaciones, cuando el sistema procesa las fechas de caducidad, entonces envía una notificación push que indica el producto afectado, los días restantes y la fecha de vencimiento.<br><br>
      <strong>Scenario 2: Alerta de lote vencido dentro de la aplicación</strong><br>
      Dado que uno o más lotes tienen una fecha de caducidad anterior a la fecha actual, cuando el usuario abre el panel de alertas, entonces se muestra una alerta de lotes vencidos con el producto y la fecha correspondiente, se le asigna la mayor prioridad y el indicador "Lotes Vencidos" refleja el total.<br><br>
      <strong>Scenario 3: Navegación desde la alerta al lote afectado</strong><br>
      Dado que el usuario toca una notificación o una alerta de caducidad, cuando Entreprenly procesa la acción, entonces abre el detalle de los lotes del producto afectado para que pueda revisar o gestionar el lote correspondiente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>15</td>
      <td><strong>Epic ID</strong></td>
      <td>03</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Seleccionar plan de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con Plan Free, quiero presionar el botón "Elegir plan" en la tarjeta del Plan Control para definir el plan que deseo contratar y continuar con el proceso de suscripción.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Selección de plan realizada correctamente</strong><br>
      Dado que el usuario visualiza los planes disponibles en la landing o en la sección "Suscripción", cuando presiona el botón "Elegir plan" de la tarjeta "Plan Control", entonces el sistema registra el plan seleccionado, resalta visualmente la tarjeta y habilita el botón "Continuar con la suscripción".<br><br>
      <strong>Scenario 2: Intento de continuar sin seleccionar un plan</strong><br>
      Dado que el usuario no ha presionado el botón "Elegir plan" en ninguna tarjeta, cuando intenta tocar "Continuar con la suscripción", entonces el sistema no permite avanzar y muestra un mensaje indicando que debe seleccionar un plan primero.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>16</td>
      <td><strong>Epic ID</strong></td>
      <td>03</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Iniciar proceso de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con un plan seleccionado, quiero presionar el botón "Continuar con la suscripción" para abrir el formulario de facturación y comenzar formalmente la contratación del plan elegido.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Proceso de suscripción iniciado correctamente</strong><br>
      Dado que el usuario ya seleccionó el Plan Control, cuando presiona el botón "Continuar con la suscripción", entonces el sistema registra el inicio del proceso y lo redirige al formulario de facturación.<br><br>
      <strong>Scenario 2: Intento sin plan seleccionado</strong><br>
      Dado que el usuario no ha seleccionado un plan, cuando presiona el botón "Continuar con la suscripción", entonces el sistema no permite iniciar el proceso y muestra un mensaje solicitando seleccionar un plan primero.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>17</td>
      <td><strong>Epic ID</strong></td>
      <td>03</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registrar datos de facturación</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero completar el formulario de facturación y presionar el botón "Continuar al pago" para que el sistema pueda preparar el cobro correspondiente a la suscripción.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Datos de facturación registrados correctamente</strong><br>
      Dado que el usuario completa correctamente los campos obligatorios del formulario de facturación y presiona el botón "Continuar al pago", cuando el sistema valida la información, entonces registra los datos y habilita el resumen previo al cobro.<br><br>
      <strong>Scenario 2: Datos de facturación inválidos</strong><br>
      Dado que el usuario ingresa datos incompletos o inválidos en el formulario, cuando presiona el botón "Continuar al pago", entonces el sistema no registra la información, resalta los campos con error y muestra un mensaje de validación.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>18</td>
      <td><strong>Epic ID</strong></td>
      <td>03</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Procesar cobro de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero revisar el resumen de cobro y presionar el botón "Pagar y activar suscripción" para validar el pago del Plan Control seleccionado.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cobro procesado exitosamente</strong><br>
      Dado que el usuario ya registró correctamente sus datos de facturación, cuando presiona el botón "Pagar y activar suscripción" y el cobro es aprobado, entonces el sistema registra el pago exitoso y habilita la activación de la suscripción.<br><br>
      <strong>Scenario 2: Error durante el procesamiento del cobro</strong><br>
      Dado que el usuario presionó el botón "Pagar y activar suscripción", cuando ocurre un error durante el cobro (tarjeta rechazada o datos inválidos), entonces el sistema no activa la suscripción y muestra el motivo del error dentro de la misma vista.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>19</td>
      <td><strong>Epic ID</strong></td>
      <td>03</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Activar suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero que al confirmarse el pago el sistema active automáticamente el Plan Control y me redirija al panel de suscripción para acceder a las funcionalidades premium.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Activación de suscripción exitosa</strong><br>
      Dado que el cobro fue procesado correctamente, cuando el sistema confirma el pago, entonces activa el Plan Control, actualiza el estado de la suscripción a "Activa" y redirige al usuario al panel de suscripción con acceso a funcionalidades premium.<br><br>
      <strong>Scenario 2: Suscripción no activada por pago no confirmado</strong><br>
      Dado que el cobro no fue confirmado, cuando el sistema intenta activar la suscripción, entonces el Plan Control no se activa, la cuenta permanece en Plan Free y el usuario no accede a funcionalidades premium.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>20</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar panel de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero abrir la opción "Suscripción" desde la navegación móvil para consultar mi plan actual, su estado, la fecha de renovación, la facturación y las acciones disponibles.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Panel de suscripción mostrado correctamente</strong><br>
      Dado que el usuario presiona la opción "Suscripción" en el menú de navegación móvil, cuando el sistema carga la pantalla, entonces muestra los datos generales del plan actual y las acciones relacionadas.<br><br>
      <strong>Scenario 2: Usuario con Plan Free por defecto</strong><br>
      Dado que el usuario solo tiene el Plan Free asignado por defecto, cuando carga la vista de "Suscripción", entonces el panel muestra el estado del Plan Free y la opción para actualizar al Plan Control.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>21</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar estado de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero ver una etiqueta de estado en el panel de suscripción para saber si mi plan se encuentra en estado "Activa", "Cancelación programada", "Cancelada" o "Plan Free".</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Estado activa mostrado correctamente</strong><br>
      Dado que el usuario tiene una suscripción vigente de pago, cuando ingresa al panel de "Suscripción", entonces el sistema muestra una etiqueta visible con el estado "Activa".<br><br>
      <strong>Scenario 2: Estado no activa mostrado correctamente</strong><br>
      Dado que el usuario tiene una suscripción cancelada, con cancelación programada o solo el Plan Free, cuando ingresa al panel de "Suscripción", entonces el sistema muestra la etiqueta correspondiente al estado real del plan.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>22</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Renovar suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con una suscripción de pago activa o próxima a vencer, quiero presionar el botón "Renovar suscripción" para extender la vigencia de mi acceso a la plataforma.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Renovación realizada correctamente</strong><br>
      Dado que el usuario tiene una suscripción activa o próxima a vencer, cuando presiona el botón "Renovar suscripción" y confirma la acción, entonces el sistema registra la renovación y actualiza la nueva fecha de vencimiento en el panel.<br><br>
      <strong>Scenario 2: Renovación no permitida</strong><br>
      Dado que el usuario se encuentra en Plan Free o no cuenta con una suscripción renovable, cuando presiona el botón "Renovar suscripción", entonces el sistema muestra un mensaje indicando que primero debe contratar o reactivar un plan de pago.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>23</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Solicitar cancelación de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con una suscripción de pago activa, quiero presionar el botón "Solicitar cancelación" y luego "Confirmar cancelación" para detener la renovación automática al finalizar el periodo vigente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Solicitud de cancelación registrada correctamente</strong><br>
      Dado que el usuario tiene una suscripción activa, cuando presiona el botón "Solicitar cancelación" y confirma la acción, entonces el sistema registra la solicitud y mantiene el acceso hasta la fecha de vencimiento.<br><br>
      <strong>Scenario 2: Usuario cancela la operación antes de confirmar</strong><br>
      Dado que el usuario inició el proceso de cancelación, cuando presiona el botón "Volver" o cierra el diálogo antes de confirmar, entonces el sistema no registra la cancelación y la suscripción continúa sin cambios.<br><br>
      <strong>Scenario 3: Mantener plan vigente</strong><br>
      Dado que el usuario visualiza el diálogo de confirmación para cancelar su suscripción, cuando presiona el botón "Mantener plan", entonces el sistema cierra el diálogo, no registra ninguna solicitud de cancelación y conserva el Plan Control activo con su fecha de renovación original.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>24</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cancelar suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero cancelar la suscripción de pago al finalizar su periodo vigente para retirar el acceso premium y devolver la cuenta del usuario al Plan Free.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cancelación ejecutada correctamente</strong><br>
      Dado que existe una solicitud de cancelación registrada y la fecha de vencimiento ha sido alcanzada, cuando el sistema procesa el fin del periodo, entonces la suscripción de pago es cancelada, el acceso premium es retirado y la cuenta vuelve automáticamente al Plan Free.<br><br>
      <strong>Scenario 2: Suscripción aún dentro del periodo vigente</strong><br>
      Dado que la fecha de vencimiento aún no ha llegado, cuando el sistema verifica el estado, entonces la suscripción continúa activa, mantiene acceso premium y conserva el estado "Cancelación programada" hasta el final del periodo.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>25</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Agregar método de pago de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con acceso al panel "Suscripción", quiero presionar el botón "Agregar método de pago" dentro de la sección "Método de pago y datos fiscales" para registrar un medio de cobro que pueda usarse en pagos y renovaciones del Plan Control.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Formulario de método de pago abierto</strong><br>
      Dado que el usuario se encuentra en la sección "Método de pago y datos fiscales", cuando presiona el botón "Agregar método de pago", entonces el sistema muestra un formulario o diálogo para registrar los datos del medio de pago.<br><br>
      <strong>Scenario 2: Método de pago registrado correctamente</strong><br>
      Dado que el usuario completa los datos requeridos del método de pago y presiona "Guardar método de pago", cuando el sistema valida la información, entonces el método queda asociado a la suscripción y se muestra en el panel como método disponible para futuros cobros.<br><br>
      <strong>Scenario 3: Método de pago inválido o cancelado</strong><br>
      Dado que el usuario ingresa datos incompletos, inválidos o cierra el formulario antes de guardar, cuando el sistema valida la acción, entonces no registra cambios y mantiene el estado anterior del método de pago.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>26</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Completar datos fiscales de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario con una cuenta registrada, quiero presionar el botón "Completar datos" dentro de "Método de pago y datos fiscales" para registrar mi RUC o DNI, razón social o nombre, dirección fiscal y correo de facturación.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Formulario de datos fiscales mostrado</strong><br>
      Dado que el usuario se encuentra en la sección "Método de pago y datos fiscales", cuando presiona el botón "Completar datos", entonces el sistema muestra un formulario con los campos fiscales requeridos para la facturación de la suscripción.<br><br>
      <strong>Scenario 2: Datos fiscales guardados correctamente</strong><br>
      Dado que el usuario completa los campos fiscales obligatorios y presiona "Guardar datos fiscales", cuando el sistema valida la información, entonces registra los datos y actualiza la sección mostrando que la información fiscal está completa.<br><br>
      <strong>Scenario 3: Datos fiscales incompletos o inválidos</strong><br>
      Dado que el usuario deja campos obligatorios vacíos o ingresa un documento inválido, cuando presiona "Guardar datos fiscales", entonces el sistema no guarda la información, resalta los campos con error y muestra un mensaje de validación.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>27</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Descargar historial de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario, quiero presionar el botón "Descargar historial" dentro de "Actividad de la suscripción" para obtener un archivo con los eventos de mi plan, pagos, renovaciones, cambios y cancelaciones.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Historial descargado correctamente</strong><br>
      Dado que existen eventos registrados en la actividad de la suscripción, cuando el usuario presiona el botón "Descargar historial", entonces el sistema genera y descarga un archivo con el historial de actividad visible para el usuario.<br><br>
      <strong>Scenario 2: Historial sin actividad suficiente</strong><br>
      Dado que la suscripción aún no tiene eventos relevantes registrados, cuando el usuario presiona "Descargar historial", entonces el sistema muestra un mensaje indicando que no hay actividad suficiente para descargar.<br><br>
      <strong>Scenario 3: Error al generar descarga</strong><br>
      Dado que ocurre un error al preparar el archivo, cuando el usuario intenta descargar el historial, entonces el sistema muestra un mensaje de error y mantiene disponible el botón para volver a intentarlo.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>28</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Buscar productos en el inventario y validar su tipo de medida</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero buscar productos del inventario para que el sistema valide si son por cantidad o peso, para abrir la interfaz de ingreso correspondiente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Búsqueda con autocompletado y validación por peso</strong><br>
      Dado que el cajero está en la pantalla "Ventas" de la aplicación móvil y escribe en el campo de búsqueda, cuando el texto coincide con un producto del inventario, entonces el sistema muestra una lista de sugerencias en tiempo real; al seleccionar un producto con tipo "Weight Product", el sistema cierra el buscador y abre el diálogo "Registrar Peso".<br><br>
      <strong>Scenario 2: Búsqueda con autocompletado y validación por cantidad</strong><br>
      Dado que el cajero escribe en el campo de búsqueda, cuando selecciona un producto con tipo "Unit Product" de la lista de sugerencias, entonces el sistema cierra el buscador y abre el diálogo "Registrar Cantidad".<br><br>
      <strong>Scenario 3: Producto no encontrado</strong><br>
      Dado que el cajero ingresa un término que no coincide con ningún producto del inventario, cuando el sistema evalúa las coincidencias, entonces la lista de sugerencias muestra el mensaje "Producto no encontrado" y no permite seleccionar ningún ítem.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>29</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registrar la cantidad de unidades en el Ticket de Venta</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero ingresar el número de unidades de un producto seleccionado, para añadirlo al detalle de la venta.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Confirmación de cantidad unitaria</strong><br>
      Dado que el diálogo "Registrar Cantidad" está abierto y muestra el nombre del producto y el stock disponible, cuando el cajero usa el teclado numérico del diálogo para ingresar un número entero (p. ej. "3") y presiona "Confirmar cantidad", entonces el sistema calcula el subtotal (precio × 3), cierra el diálogo y añade el ítem al ticket de venta con nombre, cantidad y subtotal visibles.<br><br>
      <strong>Scenario 2: Validación de stock insuficiente por cantidad</strong><br>
      Dado que el diálogo "Registrar Cantidad" está abierto, cuando el cajero ingresa una cantidad mayor al stock disponible del producto y presiona "Confirmar cantidad", entonces el sistema muestra una alerta de "Stock insuficiente" dentro del diálogo y no añade el producto al ticket, manteniendo el diálogo abierto para que el cajero corrija la cantidad.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>30</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Capturar el peso mediante balanza IoT o ingreso manual</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero obtener el peso del producto automáticamente o por teclado para procesar la venta de productos al granel.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Captura automática con balanza IoT</strong><br>
      Dado que el diálogo "Registrar Peso" está abierto y el endpoint "/api/v1/iot-scale" retorna <code>connected: true</code>, cuando el sistema obtiene la lectura de la balanza, entonces muestra el peso en el campo del diálogo; después de 800 ms de mostrar el valor, el sistema confirma automáticamente y añade el producto al ticket de venta sin que el cajero deba pulsar ningún botón.<br><br>
      <strong>Scenario 2: Registro de peso manual (sin balanza)</strong><br>
      Dado que el diálogo "Registrar Peso" está abierto y el endpoint "/api/v1/iot-scale" retorna <code>connected: false</code>, cuando el cajero usa el teclado decimal del diálogo para ingresar el peso observado físicamente y presiona "Confirmar Peso", entonces el sistema calcula el subtotal (precio/kg × peso), cierra el diálogo y añade el producto al ticket.<br><br>
      <strong>Scenario 3: Validación de stock insuficiente por peso</strong><br>
      Dado que el diálogo "Registrar Peso" está abierto, cuando el peso ingresado o capturado es mayor al stock disponible en kg del producto, entonces el sistema muestra una alerta "Stock insuficiente" dentro del diálogo y no añade el producto al ticket.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>31</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Gestionar el desglose y cálculo del Ticket de Venta</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero visualizar el desglose de productos (nombre, cantidad/peso, precio unitario y subtotal) para verificar que la información sea correcta antes de proceder al pago.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Actualización del detalle y monto total</strong><br>
      Dado que se han añadido productos al ticket de venta, cuando el sistema procesa cada ítem de la lista y calcula automáticamente el subtotal multiplicando el precio por la cantidad o peso y suma todos los subtotales, entonces el sistema muestra el desglose detallado y el monto total acumulado de la venta en la interfaz.<br><br>
      <strong>Scenario 2: Eliminación de un ítem del detalle</strong><br>
      Dado que un producto ya se encuentra registrado en el ticket de venta, cuando el cajero presiona el ícono de basurero (eliminar) que aparece junto al ítem, entonces el sistema elimina el producto del ticket de forma inmediata y recalcula el subtotal y el conteo de ítems sin requerir confirmación adicional.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>32</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Seleccionar el método de pago para la transacción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero elegir el medio por el cual está pagando el cliente (Efectivo o Tarjeta/Yape/Plin), para que el ingreso se registre en la categoría contable correcta.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Selección de método de pago exitosa</strong><br>
      Dado que el ticket de venta tiene al menos un producto, cuando el cajero toca "Efectivo" o "Tarjeta / Yape / Plin" (digital), entonces el sistema marca visualmente la opción seleccionada; el método "digital" agrupa Tarjeta, Yape y Plin como un único canal y lo registra como ingreso digital en la caja.<br><br>
      <strong>Scenario 2: Intento de finalización sin método de pago</strong><br>
      Dado que el cajero ha terminado de agregar productos al ticket pero no seleccionó método de pago, cuando presiona "Finalizar Venta", entonces el sistema muestra el mensaje "Por favor, seleccione un método de pago" que desaparece automáticamente después de 3 segundos, y no procesa la venta.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>33</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Finalizar la venta y emitir el comprobante de pago</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero procesar el pago y finalizar la venta en un solo paso, para registrar la transacción en el sistema y entregar el comprobante al cliente de forma inmediata.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Procesamiento exitoso del cierre de venta</strong><br>
      Dado que el ticket de venta tiene al menos un producto y el método de pago está seleccionado, cuando el cajero presiona "Finalizar Venta", entonces el sistema registra la venta en el endpoint "/api/v1/sales", actualiza el resumen de caja en "/api/v1/cash-registers" sumando el monto al canal correspondiente, y muestra el diálogo "Venta Exitosa"; el diálogo se cierra automáticamente después de 2 segundos o manualmente con el botón "X", y el ticket queda vacío listo para una nueva venta.<br><br>
      <strong>Scenario 2: Bloqueo por ticket vacío</strong><br>
      Dado que el cajero se encuentra en la pantalla de ventas con el ticket sin productos, cuando presiona "Finalizar Venta", entonces el sistema muestra el mensaje "No hay productos en el ticket" que desaparece automáticamente después de 3 segundos, y no procesa la venta.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>34</td>
      <td><strong>Epic ID</strong></td>
      <td>05</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cancelar venta en curso</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero cancelar la venta en curso para limpiar el ticket y empezar una nueva transacción sin procesar el cobro.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cancelación exitosa del ticket</strong><br>
      Dado que el cajero tiene productos en el ticket de venta en la pantalla "Ventas" de la aplicación móvil, cuando presiona el botón de cancelar venta, entonces el sistema elimina todos los ítems del ticket, limpia el método de pago seleccionado y deja la interfaz lista para una nueva venta sin registrar ninguna transacción.<br><br>
      <strong>Scenario 2: Cancelación con ticket vacío</strong><br>
      Dado que el cajero no tiene productos en el ticket, cuando el sistema evalúa la acción de cancelar, entonces no realiza ninguna operación ya que el ticket ya está vacío.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>35</td>
      <td><strong>Epic ID</strong></td>
      <td>06</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Clasificar automáticamente los ingresos según el medio de pago</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero que cada venta finalizada sume su monto al acumulado del método correspondiente, para tener visibilidad inmediata de cuánto dinero hay en efectivo y cuánto en digital.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Actualización del acumulado por método de pago</strong><br>
      Dado que se ha finalizado una venta exitosamente, cuando el sistema procesa el registro de la transacción con método "CASH" o "DIGITAL", entonces el sistema suma el monto al campo <code>totalCash</code> o <code>totalDigital</code> del registro de caja del día en el endpoint "/api/v1/cash-registers" y actualiza visualmente el panel "Resumen de Caja" de forma inmediata.<br><br>
      <strong>Scenario 2: Visualización del total general de ingresos</strong><br>
      Dado que existen ingresos registrados en efectivo y/o digital, cuando el comerciante visualiza el panel "Resumen de Caja" en la pantalla de Ventas, entonces el sistema muestra "Efectivo", "Tarjeta / Yape / Plin" y "Total del Día" como la suma de ambos canales, expresados en la moneda configurada en las preferencias del perfil.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>36</td>
      <td><strong>Epic ID</strong></td>
      <td>06</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Monitorear el Resumen de Caja en tiempo real dentro del panel de ventas</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cajero, quiero visualizar de forma centralizada los ingresos acumulados por método de pago, para tener un control inmediato de los saldos del día sin salir de la interfaz principal.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visualización dinámica de ingresos operativos</strong><br>
      Dado que el cajero se encuentra en la pantalla "Ventas" de la aplicación móvil, cuando finaliza transacciones de forma sucesiva, entonces el sistema actualiza automáticamente los valores de "Efectivo", "Tarjeta / Yape / Plin" y "Total del día" en el panel "Resumen de Caja" sin requerir una actualización manual.<br><br>
      <strong>Scenario 2: Carga de saldos persistidos al ingresar a ventas</strong><br>
      Dado que el comerciante tiene ventas registradas en el día, cuando accede o regresa a la pantalla "Ventas" de la aplicación móvil, entonces el sistema consulta el endpoint "/api/v1/cash-registers" y muestra los saldos acumulados del día correspondiente a la fecha actual, sin perder datos al navegar entre secciones o actualizar manualmente la pantalla.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>37</td>
      <td><strong>Epic ID</strong></td>
      <td>07</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Vincular cuenta de WhatsApp Business desde el dispositivo móvil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero vincular mi cuenta de WhatsApp Business desde el celular para activar el chatbot de atención a clientes en Entreprenly.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Vinculación mediante enlace seguro</strong><br>
      Dado que el comerciante no tiene una cuenta vinculada y WhatsApp Business está instalado en su dispositivo, cuando presiona "Vincular WhatsApp", entonces Entreprenly abre un enlace seguro en WhatsApp Business para autorizar la conexión y permite regresar a la aplicación móvil.<br><br>
      <strong>Scenario 2: Vinculación alternativa mediante código QR</strong><br>
      Dado que el comerciante elige vincular su cuenta mediante un código QR, cuando escanea desde WhatsApp Business el código mostrado por Entreprenly en otro dispositivo y el sistema confirma la conexión, entonces registra la vinculación, activa el chatbot y habilita la visualización de conversaciones en la aplicación móvil.<br><br>
      <strong>Scenario 3: Vinculación fallida por código QR expirado</strong><br>
      Dado que el comerciante está en el proceso de vinculación de WhatsApp Business, cuando el código QR expira sin haber sido escaneado y el sistema detecta que la sesión no fue establecida en el tiempo límite, entonces el sistema descarta el código expirado, muestra un mensaje indicando que el código expiró y genera un nuevo código QR automáticamente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>38</td>
      <td><strong>Epic ID</strong></td>
      <td>07</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar estado de vinculación del chatbot</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero conocer el estado de conexión de mi WhatsApp Business para saber si el chatbot se encuentra activo o requiere reconexión.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Estado activo cuando la cuenta está vinculada</strong><br>
      Dado que el comerciante tiene una cuenta vinculada, cuando accede a la sección de chatbot, entonces el sistema muestra el estado como activo junto al número vinculado.<br><br>
      <strong>Scenario 2: Estado desconectado cuando la sesión expiró</strong><br>
      Dado que la sesión ha expirado o fue cerrada externamente, cuando el comerciante accede a la sección de chatbot, entonces el sistema muestra el estado como desconectado y habilita la opción de volver a vincular.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>39</td>
      <td><strong>Epic ID</strong></td>
      <td>08</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar conversaciones de clientes en la aplicación móvil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero ver en la aplicación móvil los chats que el bot ha mantenido con mis clientes para conocer todas las conversaciones activas sin abrir WhatsApp.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Conversaciones cargadas cuando existe actividad</strong><br>
      Dado que el comerciante tiene su WhatsApp Business vinculado, cuando accede a la sección de chatbot, entonces el sistema muestra la lista de conversaciones ordenada por la más reciente con el último mensaje visible.<br><br>
      <strong>Scenario 2: Mensaje informativo cuando no hay conversaciones</strong><br>
      Dado que ningún cliente ha iniciado una conversación con el bot, cuando el comerciante accede a la sección, entonces el sistema indica que aún no existen conversaciones registradas.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>40</td>
      <td><strong>Epic ID</strong></td>
      <td>08</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Responder mensajes de clientes desde la aplicación móvil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero enviar mensajes a mis clientes directamente desde la aplicación móvil para gestionar las conversaciones sin abrir WhatsApp.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Mensaje enviado correctamente al cliente</strong><br>
      Dado que el comerciante selecciona una conversación activa y redacta un mensaje, cuando confirma el envío, entonces el sistema envía el mensaje al cliente a través de WhatsApp y lo registra en el hilo de conversación.<br><br>
      <strong>Scenario 2: Envío bloqueado cuando el mensaje está vacío</strong><br>
      Dado que el comerciante no ha redactado ningún contenido, cuando intenta confirmar el envío, entonces el sistema no procesa el mensaje y mantiene la conversación sin cambios.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>41</td>
      <td><strong>Epic ID</strong></td>
      <td>09</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Responder consulta de producto disponible</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero que el chatbot responda automáticamente al cliente con la información del producto solicitado cuando este existe en el inventario para iniciar el proceso de pedido sin intervención del comerciante.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot informa disponibilidad del producto solicitado</strong><br>
      Dado que el cliente envía el nombre de un producto, cuando el sistema lo encuentra con stock mayor a cero, entonces el bot responde con el nombre, el precio y el stock disponible, y ofrece agregarlo al pedido.<br><br>
      <strong>Scenario 2: Bot registra selección confirmada por el cliente</strong><br>
      Dado que el bot informó la disponibilidad del producto, cuando el cliente confirma la cantidad deseada, entonces el sistema registra la selección en el pedido en curso y consulta si desea agregar más productos.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>42</td>
      <td><strong>Epic ID</strong></td>
      <td>09</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Sugerir alternativas ante producto no disponible</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero que el chatbot informe al cliente cuando un producto no está disponible y le sugiera otros productos del inventario para evitar que la conversación quede sin respuesta útil.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot sugiere alternativas cuando el producto no existe</strong><br>
      Dado que el producto solicitado no se encuentra o tiene stock igual a cero, cuando el sistema verifica la disponibilidad, entonces el bot informa que no está disponible y presenta alternativas con stock.<br><br>
      <strong>Scenario 2: Bot notifica cuando el inventario completo está agotado</strong><br>
      Dado que todos los productos tienen stock igual a cero, cuando el sistema verifica la disponibilidad general, entonces el bot informa que no hay productos disponibles e invita al cliente a intentarlo más tarde.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>43</td>
      <td><strong>Epic ID</strong></td>
      <td>09</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Confirmar pedido con el cliente</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero que el chatbot presente un resumen del pedido al cliente y solicite confirmación antes de proceder al pago para asegurar que los productos y cantidades sean correctos.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot envía resumen y solicita confirmación</strong><br>
      Dado que el cliente indicó todos los productos y su dirección de entrega, cuando indica que no desea agregar más, entonces el sistema genera un resumen con productos, cantidades, total y dirección, y solicita confirmación.<br><br>
      <strong>Scenario 2: Sistema registra pedido tras confirmación del cliente</strong><br>
      Dado que el bot envió el resumen del pedido, cuando el cliente confirma que es correcto, entonces el sistema registra el pedido con estado pendiente y envía las instrucciones de pago.<br><br>
      <strong>Scenario 3: Solicitar dirección de entrega al cliente</strong><br>
      Dado que el cliente confirmó los productos de su pedido, cuando el chatbot verifica que aún no se registró una dirección de entrega, entonces solicita al cliente que indique su dirección antes de continuar y no genera el resumen del pedido hasta que el cliente la proporcione.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>44</td>
      <td><strong>Epic ID</strong></td>
      <td>10</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Recibir instrucciones de pago por WhatsApp</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cliente, quiero recibir las instrucciones de pago a través del chatbot para saber cómo realizar la transferencia y completar mi pedido.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot envía instrucciones tras confirmación del pedido</strong><br>
      Dado que el cliente confirmó su pedido y el stock fue validado, cuando el sistema procesa la confirmación, entonces el bot envía el número Yape/Plin del comerciante, el monto total y el número de pedido como referencia.<br><br>
      <strong>Scenario 2: Sistema registra el evento de instrucción enviada</strong><br>
      Dado que el bot entrega las instrucciones de pago, cuando el sistema confirma la entrega del mensaje, entonces registra el evento con marca de tiempo para trazabilidad.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>45</td>
      <td><strong>Epic ID</strong></td>
      <td>10</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Reportar comprobante de pago digital</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cliente, quiero enviar el comprobante de mi pago al chatbot para que el comerciante pueda verificarlo y confirmar mi pedido.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sistema registra comprobante recibido y notifica al comerciante</strong><br>
      Dado que el cliente realizó el pago por Yape o Plin, cuando envía el comprobante al chatbot, entonces el sistema lo registra, actualiza el estado del pedido a pendiente de validación y notifica al comerciante.<br><br>
      <strong>Scenario 2: Bot envía recordatorio ante ausencia de reporte</strong><br>
      Dado que el cliente recibió las instrucciones de pago, cuando transcurren treinta minutos sin que reporte el comprobante, entonces el sistema envía un recordatorio y mantiene el pedido en estado esperando pago.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>46</td>
      <td><strong>Epic ID</strong></td>
      <td>10</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Validar comprobante de pago desde la aplicación móvil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero revisar el comprobante reportado por el cliente y aprobarlo o rechazarlo desde la aplicación móvil para confirmar que el dinero fue recibido correctamente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Comerciante visualiza comprobante y detalles del pedido</strong><br>
      Dado que el cliente reportó su comprobante, cuando el comerciante revisa el pedido, entonces el sistema muestra el comprobante, el monto y los detalles del pedido asociado.<br><br>
      <strong>Scenario 2: Sistema registra validación manual al aprobar el pago</strong><br>
      Dado que el comerciante verifica que el comprobante es correcto, cuando aprueba el pago, entonces el sistema registra la validación con marca de tiempo y continúa el flujo de confirmación.<br><br>
      <strong>Scenario 3: Sistema notifica al cliente al rechazar el pago</strong><br>
      Dado que el comerciante detecta que el comprobante es incorrecto, cuando lo rechaza indicando el motivo, entonces el sistema registra el rechazo y el bot notifica al cliente con los pasos a seguir.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>47</td>
      <td><strong>Epic ID</strong></td>
      <td>10</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Notificar resultado de validación al cliente</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cliente, quiero recibir una notificación sobre el resultado de la validación de mi pago para saber si mi pedido fue confirmado o si debo realizar alguna acción adicional.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot confirma al cliente que el pago fue aprobado</strong><br>
      Dado que el comerciante aprueba el comprobante, cuando el sistema actualiza el estado del pedido, entonces el bot envía al cliente un mensaje confirmando que el pago fue recibido y el pedido está en proceso.<br><br>
      <strong>Scenario 2: Bot informa al cliente que el pago fue rechazado</strong><br>
      Dado que el comerciante rechaza el comprobante, cuando el sistema actualiza el estado, entonces el bot informa al cliente que el pago no fue validado, indica el motivo y solicita que reintente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>48</td>
      <td><strong>Epic ID</strong></td>
      <td>11</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Confirmar pedido y descontar stock</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero confirmar el pedido automáticamente al aprobar el pago para actualizar el inventario en tiempo real y reflejar el consumo de stock.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sistema actualiza inventario al confirmar el pedido</strong><br>
      Dado que el comerciante aprueba el comprobante de pago, cuando el sistema confirma el pedido, entonces actualiza el estado a confirmado y descuenta la cantidad correspondiente del stock de cada producto.<br><br>
      <strong>Scenario 2: Sistema sincroniza peso con balanza IoT para productos por peso</strong><br>
      Dado que el pedido incluye productos vendidos por peso, cuando el sistema descuenta el stock, entonces actualiza el peso disponible registrado en la balanza IoT.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>49</td>
      <td><strong>Epic ID</strong></td>
      <td>11</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registrar venta en el sistema</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero que cada pedido confirmado quede registrado como venta en el sistema para mantener un control financiero preciso y trazable.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sistema crea registro de venta al confirmar pedido</strong><br>
      Dado que el pedido ha sido confirmado tras la validación del pago, cuando el sistema procesa el cierre de la transacción, entonces crea un registro de venta con monto total, método de pago, productos vendidos y marca de tiempo.<br><br>
      <strong>Scenario 2: Sistema separa ingresos digitales de los ingresos en efectivo</strong><br>
      Dado que el método de pago fue Yape o Plin, cuando el sistema registra la venta, entonces asocia el monto al canal de pagos digitales, manteniéndolo separado del efectivo en caja.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>50</td>
      <td><strong>Epic ID</strong></td>
      <td>12</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Manejar stock insuficiente en pedido</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como cliente, quiero ser notificado cuando un producto no tiene stock suficiente para ajustar mi pedido antes de proceder al pago.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Bot notifica al cliente sobre stock insuficiente</strong><br>
      Dado que el cliente solicita una cantidad mayor al stock disponible, cuando el sistema valida el inventario, entonces el bot informa qué producto no tiene stock suficiente y ofrece ajustar la cantidad o eliminarlo del pedido.<br><br>
      <strong>Scenario 2: Sistema actualiza el pedido con la nueva cantidad</strong><br>
      Dado que el bot informó al cliente sobre el stock insuficiente, cuando el cliente confirma una nueva cantidad menor o igual al stock disponible, entonces el sistema actualiza el pedido y continúa el flujo de forma normal.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>51</td>
      <td><strong>Epic ID</strong></td>
      <td>12</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cancelar pedido por expiración de tiempo de pago</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como sistema, quiero cancelar automáticamente un pedido cuando el cliente no reporta el comprobante de pago en el tiempo establecido para liberar el stock reservado.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sistema cancela el pedido y libera el stock al expirar el tiempo</strong><br>
      Dado que el cliente recibió las instrucciones de pago, cuando transcurren sesenta minutos sin que reporte el comprobante, entonces el sistema cancela el pedido, libera el stock reservado y notifica al cliente.<br><br>
      <strong>Scenario 2: Sistema registra el evento de cancelación para trazabilidad</strong><br>
      Dado que el pedido es cancelado por expiración, cuando el sistema actualiza el estado, entonces registra el evento de cancelación con el motivo y marca de tiempo correspondientes.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>52</td>
      <td><strong>Epic ID</strong></td>
      <td>12</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Rechazar comprobante de pago inválido</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero rechazar un comprobante de pago cuando sea incorrecto o sospechoso para proteger el negocio de transacciones fraudulentas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sistema revierte el estado del pedido al rechazar el comprobante</strong><br>
      Dado que el comerciante identifica un comprobante sospechoso o incorrecto, cuando lo rechaza indicando el motivo, entonces el sistema devuelve el pedido al estado "esperando pago" y el bot notifica al cliente.<br><br>
      <strong>Scenario 2: Sistema alerta al comerciante ante rechazos repetidos del mismo cliente</strong><br>
      Dado que el mismo cliente presenta comprobantes rechazados en dos ocasiones consecutivas, cuando el sistema detecta el patrón, entonces alerta al comerciante y bloquea el pedido para revisión manual.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>53</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Conocer propuesta de valor en landing page</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como visitante, quiero entender qué hace Entreprenly y cómo puede beneficiar a mi negocio para decidir si me interesa adquirirlo.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visitante visualiza la propuesta de valor al cargar la página</strong><br>
      Dado que el visitante accede a la landing page, cuando la página termina de cargar, entonces el sistema muestra el headline principal, la propuesta de valor y los beneficios clave del producto.<br><br>
      <strong>Scenario 2: Visitante accede a la sección de funcionalidades</strong><br>
      Dado que el visitante navega por la landing page, cuando llega a la sección de funcionalidades, entonces el sistema presenta las características principales: chatbot WhatsApp, inventario, balanza IoT y dashboard móvil financiero.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>54</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Gestionar ciclo de vida de pedidos mediante API</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como integrante del equipo de desarrollo, quiero endpoints para crear y actualizar pedidos para que el chatbot y la aplicación móvil intercambien información del pedido de forma automática y consistente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Creación exitosa de pedido</strong><br>
      Dado que un cliente autorizado envía una solicitud de creación con datos válidos, cuando el servidor valida el cuerpo, entonces el sistema responde con HTTP 201, retorna el ID del pedido, el estado pendiente y la marca de tiempo.<br><br>
      <strong>Scenario 2: Actualización de estado de pedido existente</strong><br>
      Dado que un cliente autorizado envía una solicitud de actualización con un estado válido, cuando el servidor procesa la solicitud, entonces el sistema responde con HTTP 200 y retorna el pedido actualizado.<br><br>
      <strong>Scenario 3: Solicitud sobre pedido inexistente</strong><br>
      Dado que un cliente autorizado referencia un ID de pedido inexistente, cuando el servidor busca el recurso, entonces el sistema responde con HTTP 404 indicando que el pedido no fue encontrado.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>55</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Validar y registrar pagos mediante API</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como integrante del equipo de desarrollo, quiero un endpoint para aprobar o rechazar pagos desde la aplicación móvil para que el sistema actualice el inventario y notifique al cliente de forma automática.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Aprobación de pago con descuento de stock</strong><br>
      Dado que un cliente autorizado envía una solicitud de aprobación, cuando el servidor procesa la validación, entonces el sistema responde con HTTP 200, actualiza el pedido a confirmado y descuenta el stock correspondiente.<br><br>
      <strong>Scenario 2: Rechazo de pago con registro de motivo</strong><br>
      Dado que un cliente autorizado envía una solicitud de rechazo con un motivo, cuando el servidor procesa el rechazo, entonces el sistema responde con HTTP 200 y registra el motivo en el historial del pago.<br><br>
      <strong>Scenario 3: Solicitud sobre pago inexistente</strong><br>
      Dado que un cliente autorizado referencia un ID de pago inexistente, cuando el servidor busca el recurso, entonces el sistema responde con HTTP 404 indicando que el pago no fue encontrado.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>56</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registrar cuenta con email</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario anónimo, quiero registrarme con mi email y contraseña para crear una cuenta en Entreprenly y obtener automáticamente el Plan Free.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Registro exitoso</strong><br>
      Dado que el usuario ingresa un email no registrado y una contraseña válida, cuando envía el formulario, entonces el sistema crea la cuenta, asigna automáticamente el Plan Free, envía un email de verificación y muestra un mensaje de confirmación.<br><br>
      <strong>Scenario 2: Email ya registrado</strong><br>
      Dado que el usuario ingresa un email que ya existe, cuando envía el formulario, entonces el sistema muestra un mensaje de error indicando que el email ya está en uso.<br><br>
      <strong>Scenario 3: Datos inválidos</strong><br>
      Dado que la contraseña no cumple los requisitos mínimos, cuando envía el formulario, entonces el sistema muestra los errores de validación sin crear la cuenta.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>57</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Verificar email</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario registrado, quiero verificar mi email mediante el enlace enviado a mi correo para activar mi cuenta.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Verificación exitosa</strong><br>
      Dado que el usuario toca un enlace de verificación válido desde su correo, cuando Entreprenly valida el token mediante un enlace profundo, entonces la cuenta queda activa y la aplicación muestra la pantalla "Inicio".<br><br>
      <strong>Scenario 2: Token expirado</strong><br>
      Dado que el token ha expirado, cuando el sistema intenta validarlo, entonces muestra un mensaje de error y ofrece la opción de reenviar el email de verificación.<br><br>
      <strong>Scenario 3: Token inválido</strong><br>
      Dado que el token está malformado, cuando el sistema intenta procesarlo, entonces muestra un mensaje de error indicando que el enlace no es válido.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>58</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Iniciar sesión con credenciales</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario registrado, quiero iniciar sesión con mi email y contraseña desde el celular para acceder al dashboard móvil de Entreprenly.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Inicio de sesión exitoso</strong><br>
      Dado que el usuario ingresa credenciales válidas, cuando envía el formulario, entonces el sistema genera un JWT, inicia la sesión y muestra la pantalla "Inicio" de la aplicación móvil.<br><br>
      <strong>Scenario 2: Credenciales inválidas</strong><br>
      Dado que el usuario ingresa una contraseña incorrecta, cuando envía el formulario, entonces el sistema muestra un mensaje de error sin revelar cuál campo es incorrecto.<br><br>
      <strong>Scenario 3: Cuenta bloqueada por intentos fallidos</strong><br>
      Dado que el usuario ha fallado 5 intentos consecutivos, cuando intenta iniciar sesión nuevamente, entonces el sistema bloquea la cuenta y notifica al usuario por email.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>59</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Iniciar sesión con Google OAuth</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario anónimo, quiero iniciar sesión con mi cuenta de Google para acceder a Entreprenly sin necesidad de crear credenciales nuevas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: OAuth exitoso con cuenta nueva</strong><br>
      Dado que el usuario selecciona una cuenta desde el proveedor de identidad de Google del dispositivo y esta no se encuentra registrada, cuando Google autoriza el acceso, entonces el sistema crea una nueva cuenta vinculada al proveedor e inicia la sesión en la aplicación móvil.<br><br>
      <strong>Scenario 2: OAuth exitoso con cuenta existente</strong><br>
      Dado que el usuario selecciona una cuenta de Google cuyo email ya está registrado, cuando Google devuelve el token, entonces el sistema vincula el proveedor a la cuenta existente e inicia la sesión en la aplicación móvil.<br><br>
      <strong>Scenario 3: OAuth denegado por el usuario</strong><br>
      Dado que el usuario cancela la autorización en la pantalla de Google, cuando el flujo es interrumpido, entonces el sistema redirige al usuario a la pantalla de login sin crear ninguna cuenta.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>60</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Recuperar contraseña</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario registrado, quiero recuperar el acceso a mi cuenta mediante un enlace enviado a mi email para restablecer mi contraseña.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Reset exitoso</strong><br>
      Dado que el usuario solicita el restablecimiento con un email registrado y abre el enlace recibido, cuando Entreprenly valida el token mediante un enlace profundo y el usuario confirma la nueva contraseña, entonces actualiza la contraseña, invalida las sesiones anteriores y muestra la pantalla de inicio de sesión.<br><br>
      <strong>Scenario 2: Token de reset expirado</strong><br>
      Dado que el usuario accede al enlace después de que el token ha expirado, cuando el sistema intenta validarlo, entonces muestra un mensaje de error y solicita generar un nuevo enlace.<br><br>
      <strong>Scenario 3: Email no registrado</strong><br>
      Dado que el usuario solicita el reset con un email que no existe, cuando envía el formulario, entonces el sistema responde con un mensaje genérico sin confirmar ni negar la existencia del email.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>61</td>
      <td><strong>Epic ID</strong></td>
      <td>14</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cerrar sesión</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero cerrar mi sesión para que el sistema revoque mi token y me redirija a la pantalla de login.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cierre de sesión exitoso</strong><br>
      Dado que el usuario toca la opción de cerrar sesión, cuando el sistema procesa la solicitud, entonces revoca el JWT activo y muestra la pantalla de inicio de sesión.<br><br>
      <strong>Scenario 2: Intento de acceso tras cerrar sesión</strong><br>
      Dado que el usuario ha cerrado su sesión y el token ha sido revocado, cuando intenta abrir una pantalla protegida, entonces el sistema rechaza la solicitud y muestra la pantalla de inicio de sesión.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>62</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar perfil actual</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero visualizar mi perfil actual para revisar mis datos registrados en la plataforma.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visualización exitosa</strong><br>
      Dado que el usuario navega a la sección de perfil, cuando el sistema carga los datos, entonces muestra nombre, bio, foto de perfil, email y preferencias actuales del usuario.<br><br>
      <strong>Scenario 2: Sesión expirada</strong><br>
      Dado que la sesión del usuario ha expirado, cuando intenta acceder a la sección de perfil, entonces el sistema redirige al login.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>63</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Actualizar nombre y biografía</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero actualizar mi nombre y biografía para mantener mi perfil al día.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Actualización exitosa</strong><br>
      Dado que el usuario edita su nombre y/o bio con datos válidos, cuando guarda los cambios, entonces el sistema actualiza los datos y muestra el perfil con la información nueva.<br><br>
      <strong>Scenario 2: Campo obligatorio vacío</strong><br>
      Dado que el usuario deja el campo de nombre vacío, cuando intenta guardar, entonces el sistema muestra un error de validación sin guardar los cambios.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>64</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Subir foto de perfil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero tomar o elegir una foto desde mi dispositivo móvil para personalizar mi perfil.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Selección exitosa desde la galería</strong><br>
      Dado que el usuario concede acceso a sus imágenes y selecciona una con formato y tamaño permitidos, cuando confirma la selección, entonces el servicio de almacenamiento guarda el archivo y muestra la nueva foto en el perfil.<br><br>
      <strong>Scenario 2: Captura exitosa con la cámara</strong><br>
      Dado que el usuario concede permiso para usar la cámara, cuando toma y confirma una fotografía, entonces Entreprenly la carga y actualiza la imagen del perfil.<br><br>
      <strong>Scenario 3: Permiso denegado</strong><br>
      Dado que el usuario deniega el permiso de cámara o galería, cuando intenta elegir ese origen, entonces la aplicación explica cómo habilitarlo desde la configuración del dispositivo y conserva la foto actual.<br><br>
      <strong>Scenario 4: Formato de imagen no permitido</strong><br>
      Dado que el usuario intenta subir un archivo con formato no soportado, cuando el sistema valida el archivo, entonces muestra un mensaje de error indicando los formatos aceptados sin guardar el archivo.<br><br>
      <strong>Scenario 5: Tamaño de archivo excedido</strong><br>
      Dado que el usuario intenta subir una imagen que supera el tamaño máximo (5120 KB), cuando el sistema valida el archivo, entonces muestra un mensaje de error indicando el límite de tamaño.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>65</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cambiar email con re-verificación</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero cambiar mi email y verificarlo para mantener mis datos de contacto actualizados.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cambio de email exitoso</strong><br>
      Dado que el usuario solicitó cambiar su email a uno no registrado previamente, cuando confirma el cambio desde el enlace enviado y el sistema valida el token, entonces se actualiza el email y queda marcado como verificado.<br><br>
      <strong>Scenario 2: Nuevo email ya en uso</strong><br>
      Dado que el usuario ingresa un email que ya pertenece a otra cuenta, cuando intenta guardar el cambio, entonces el sistema muestra un mensaje de error sin actualizar el email.<br><br>
      <strong>Scenario 3: Confirmación desde enlace expirado</strong><br>
      Dado que el usuario toca un enlace de confirmación expirado desde su dispositivo, cuando el sistema valida el token, entonces muestra un mensaje de error y ofrece reenviar el email de confirmación.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>66</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cambiar contraseña</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero cambiar mi contraseña para mantener la seguridad de mi cuenta.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cambio exitoso</strong><br>
      Dado que el usuario ingresa su contraseña actual correcta y una nueva contraseña válida, cuando guarda el cambio, entonces el sistema actualiza la contraseña e invalida todas las sesiones activas excepto la actual.<br><br>
      <strong>Scenario 2: Contraseña actual incorrecta</strong><br>
      Dado que el usuario ingresa una contraseña actual incorrecta, cuando intenta guardar, entonces el sistema muestra un error de validación sin actualizar la contraseña.<br><br>
      <strong>Scenario 3: Nueva contraseña no cumple requisitos</strong><br>
      Dado que el usuario ingresa una nueva contraseña que no cumple los requisitos mínimos, cuando intenta guardar, entonces el sistema muestra los requisitos incumplidos sin aplicar el cambio.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>67</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Configurar preferencias de idioma, zona horaria, tema y moneda</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante autenticado, quiero configurar mi idioma, zona horaria, tema visual y moneda para adaptar la plataforma a mis preferencias operativas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cambio de idioma exitoso</strong><br>
      Dado que el comerciante está en la sección "Preferencias" de la pantalla "Perfil" y selecciona "Español" o "English", cuando el sistema aplica el cambio mediante el servicio de traducción, entonces todos los textos traducibles de la interfaz se actualizan de forma inmediata sin reiniciar la aplicación.<br><br>
      <strong>Scenario 2: Cambio de zona horaria exitoso</strong><br>
      Dado que el comerciante selecciona una zona horaria de la lista disponible (p. ej. "America/Lima (UTC-05:00)"), cuando el sistema persiste la preferencia, entonces las fechas y horas mostradas en la plataforma se ajustan a la zona horaria seleccionada.<br><br>
      <strong>Scenario 3: Cambio de tema exitoso</strong><br>
      Dado que el comerciante selecciona el tema "light" u "dark", cuando el sistema aplica el cambio, entonces la interfaz cambia de tema de forma inmediata y persiste la preferencia para futuras sesiones.<br><br>
      <strong>Scenario 4: Cambio de moneda exitoso</strong><br>
      Dado que el comerciante selecciona "S/ Sol (PEN)" o "$ Dollar (USD)" en el selector de moneda, cuando el sistema persiste la preferencia, entonces los montos en el Resumen de Caja y en el ticket de ventas se formatean con el símbolo de la moneda seleccionada.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>68</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Configurar notificaciones</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero configurar mis preferencias de notificaciones push para recibir en mi dispositivo solo los avisos que me sean relevantes.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Guardado exitoso de preferencias</strong><br>
      Dado que el usuario concedió el permiso de notificaciones y activa o desactiva tipos de aviso, cuando guarda los cambios, entonces el sistema almacena las preferencias y las aplica a las notificaciones push futuras.<br><br>
      <strong>Scenario 2: Permiso de notificaciones denegado</strong><br>
      Dado que el permiso de notificaciones está desactivado en el dispositivo, cuando el usuario intenta habilitar las notificaciones push, entonces Entreprenly explica por qué las necesita y ofrece abrir la configuración del sistema sin cambiar el permiso automáticamente.<br><br>
      <strong>Scenario 3: Sin cambios realizados</strong><br>
      Dado que el usuario accede a la sección de notificaciones sin modificar nada, cuando sale de la sección, entonces el sistema mantiene las preferencias anteriores sin alteración.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>69</td>
      <td><strong>Epic ID</strong></td>
      <td>15</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registrar y verificar número de teléfono</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante autenticado, quiero registrar y verificar mi número de teléfono en el perfil para tener un canal de contacto adicional vinculado a mi cuenta.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Número de teléfono registrado correctamente</strong><br>
      Dado que el comerciante está en la tarjeta "Verificar Teléfono" de la pantalla "Perfil" de la aplicación móvil e ingresa un número con formato válido (entre 7 y 20 dígitos, opcionalmente con prefijo internacional "+"), cuando presiona "Verificar teléfono", entonces el sistema registra el número y muestra confirmación del envío del código de verificación.<br><br>
      <strong>Scenario 2: Formato de teléfono inválido</strong><br>
      Dado que el comerciante ingresa un número con menos de 7 dígitos o caracteres no permitidos, cuando el sistema valida el campo, entonces muestra un mensaje de error de formato y no envía el código de verificación.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>70</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar resumen de ventas del día</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero visualizar un resumen de las ventas del día en el panel de inicio para conocer el rendimiento de mi negocio sin ingresar al módulo de ventas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Resumen de ventas cargado correctamente</strong><br>
      Dado que el comerciante accede al panel de inicio y existen ventas registradas en el día, cuando el sistema carga la información, entonces se muestra la tarjeta "Ingresos del día" con el total acumulado, el total en efectivo y el total digital correspondiente a Yape, Plin o tarjeta.<br><br>
      <strong>Scenario 2: Sin ventas registradas en el día</strong><br>
      Dado que el comerciante accede al panel de inicio y no se ha registrado ninguna venta en el día actual, cuando el sistema carga la información, entonces la tarjeta muestra S/0.00 en el total del día, efectivo y digital.<br><br>
      <strong>Scenario 3: Acceso al módulo de ventas</strong><br>
      Dado que el comerciante visualiza la tarjeta "Ingresos del día", cuando presiona el enlace "Ir a Ventas", entonces el sistema navega a la pantalla "Ventas" de la aplicación móvil.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>71</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar estado del chatbot en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero visualizar el estado de conexión del chatbot y los chats activos desde el panel de inicio para saber si mi canal de ventas por WhatsApp está operativo sin ingresar al módulo de chatbot.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Chatbot conectado con actividad reciente</strong><br>
      Dado que el comerciante accede al panel de inicio y el chatbot se encuentra vinculado y activo, cuando el sistema carga la vista, entonces se muestra el estado "WhatsApp Conectado" y el texto que indica que el chatbot está activo y recibiendo mensajes.<br><br>
      <strong>Scenario 2: Chatbot desconectado</strong><br>
      Dado que el comerciante accede al panel de inicio y el chatbot no está vinculado o su sesión expiró, cuando el sistema carga la vista, entonces se muestra el estado "WhatsApp Desconectado", una descripción del problema y el botón "Conectar ahora".<br><br>
      <strong>Scenario 3: Pedidos pendientes visibles desde el estado del chatbot</strong><br>
      Dado que existen pedidos esperando validación de pago, cuando el sistema carga la tarjeta de estado del chatbot, entonces se muestra un aviso con el número de pedidos pendientes.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>72</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar alertas de inventario en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero ver las alertas críticas de inventario directamente en el panel de inicio para identificar rápidamente productos agotados o lotes próximos a vencer sin ingresar al módulo de lotes.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Alertas de inventario mostradas en la pantalla de Inicio</strong><br>
      Dado que el comerciante accede al panel de inicio y existen productos sin stock, con stock bajo, vencidos o próximos a vencer, cuando el sistema carga la vista, entonces se muestra un banner de alerta y una lista con el producto afectado y el tipo de alerta correspondiente.<br><br>
      <strong>Scenario 2: Sin alertas activas de inventario</strong><br>
      Dado que el comerciante accede al panel de inicio y no existen condiciones críticas en el inventario, cuando el sistema carga la vista, entonces la sección de alertas muestra el mensaje "Todo en orden" e indica que no hay alertas de inventario.<br><br>
      <strong>Scenario 3: Acceso al inventario desde una alerta</strong><br>
      Dado que el comerciante visualiza alertas en la pantalla de Inicio, cuando presiona "Ver inventario", entonces el sistema navega a la pantalla "Lotes" de la aplicación móvil.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>73</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar contador de pedidos pendientes en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero ver el número de pedidos que están pendientes de atención en el panel de inicio para priorizar mi respuesta sin necesidad de ingresar al módulo de chatbot.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Pedidos pendientes mostrados correctamente</strong><br>
      Dado que el comerciante accede al panel de inicio y existen pedidos pendientes de validación de pago, cuando el sistema carga la vista, entonces se muestra un aviso dentro de la tarjeta de chatbot con el número de pedidos esperando validación.<br><br>
      <strong>Scenario 2: Sin pedidos pendientes</strong><br>
      Dado que el comerciante accede al panel de inicio y todos los pedidos han sido atendidos o no existe ninguno, cuando el sistema carga la vista, entonces no se muestra el aviso de pedidos pendientes.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>74</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar pedidos recientes en la pantalla de Inicio</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero ver los pedidos más recientes con su estado actual en el panel de inicio para hacer seguimiento sin ingresar al módulo de pedidos.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Pedidos recientes mostrados correctamente</strong><br>
      Dado que el comerciante accede al panel de inicio y existen pedidos registrados, cuando el sistema carga la vista, entonces se muestran los pedidos recientes con número de pedido, fecha, monto total y estado actual.<br><br>
      <strong>Scenario 2: Sin pedidos registrados en el día</strong><br>
      Dado que el comerciante accede al panel de inicio y no se ha registrado ningún pedido, cuando el sistema carga la vista, entonces la sección de pedidos recientes muestra el mensaje "Sin pedidos todavía".<br><br>
      <strong>Scenario 3: Resumen por estado</strong><br>
      Dado que existen pedidos recientes, cuando el sistema carga la sección, entonces muestra contadores de pedidos aprobados y pendientes.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>75</td>
      <td><strong>Epic ID</strong></td>
      <td>16</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Acceder a módulos desde accesos directos de la pantalla de Inicio</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero contar con accesos directos a los módulos principales desde la pantalla de Inicio para navegar rápidamente sin abrir el menú de navegación móvil.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Acceso directo navega al módulo correcto</strong><br>
      Dado que el comerciante se encuentra en el panel de inicio, cuando presiona un acceso directo, entonces el sistema lo redirige al módulo correspondiente entre Ventas, Chatbot, Pedidos, Inventario o Ayuda.<br><br>
      <strong>Scenario 2: Accesibilidad de accesos directos</strong><br>
      Dado que el comerciante utiliza un lector de pantalla, cuando recorre los accesos directos, entonces cada control anuncia el nombre del módulo de destino y dispone de un área táctil accesible.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>76</td>
      <td><strong>Epic ID</strong></td>
      <td>17</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar el centro de soporte</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero visualizar el centro de soporte al presionar el botón de Ayuda para acceder de forma rápida a las opciones de asistencia disponibles.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Centro de soporte cargado correctamente</strong><br>
      Dado que el comerciante presiona el botón de Ayuda en el menú de navegación móvil, cuando el sistema carga la vista de soporte, entonces se muestran el buscador de ayuda, artículos más consultados, todos los artículos, categorías y acceso directo a reportar un problema.<br><br>
      <strong>Scenario 2: Centro de soporte sin artículos disponibles</strong><br>
      Dado que el comerciante accede al centro de soporte y no existen artículos de ayuda configurados, cuando el sistema carga la vista, entonces se muestra un mensaje indicando que el contenido de ayuda no está disponible aún y se mantiene visible la opción de reportar un problema.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>77</td>
      <td><strong>Epic ID</strong></td>
      <td>17</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Buscar artículo de ayuda</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero buscar artículos de ayuda por palabras clave para encontrar rápidamente la información que necesito sin revisar todas las categorías.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Búsqueda con resultados encontrados</strong><br>
      Dado que el comerciante está en el centro de soporte, cuando ingresa una palabra clave en el buscador y confirma la búsqueda, entonces el sistema muestra la cantidad de resultados encontrados, el término buscado, las categorías relacionadas y los artículos que coinciden con la consulta.<br><br>
      <strong>Scenario 2: Búsqueda sin resultados</strong><br>
      Dado que el comerciante ingresa un término en el buscador y no existen artículos que coincidan con la búsqueda, cuando el sistema procesa la consulta, entonces se muestra un mensaje indicando que no se encontraron resultados y se sugiere reformular la búsqueda o reportar el problema directamente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>78</td>
      <td><strong>Epic ID</strong></td>
      <td>17</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar artículo de ayuda</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero abrir y leer un artículo de ayuda para entender cómo usar una funcionalidad de la plataforma o resolver un problema específico.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Artículo cargado correctamente</strong><br>
      Dado que el comerciante selecciona un artículo desde el listado o los resultados de búsqueda, cuando el sistema carga el artículo, entonces se muestra el breadcrumb de ayuda, categoría, título, tiempo de lectura, pasos del artículo y artículos relacionados cuando existan.<br><br>
      <strong>Scenario 2: Artículo marcado como útil o no útil</strong><br>
      Dado que el comerciante leyó el artículo de ayuda, cuando selecciona la opción "¿Te fue útil este artículo?" y elige "Sí" o "No", entonces el sistema registra la respuesta y si elige "No", muestra la opción de reportar el problema directamente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>79</td>
      <td><strong>Epic ID</strong></td>
      <td>17</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Reportar un problema</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero reportar un problema o incidencia desde el centro de soporte para que el equipo de Entreprenly pueda revisarlo y darle seguimiento.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Reporte enviado correctamente</strong><br>
      Dado que el comerciante está en el formulario de reporte de problema y completa los campos obligatorios: categoría, descripción y módulo afectado, cuando presiona el botón "Enviar reporte", entonces el sistema registra el reporte y muestra una confirmación indicando que fue recibido.<br><br>
      <strong>Scenario 2: Intento de envío con campos incompletos</strong><br>
      Dado que el comerciante está en el formulario de reporte y deja campos obligatorios vacíos, cuando presiona el botón "Enviar reporte", entonces el sistema no registra el reporte y muestra mensajes de error indicando los campos que deben completarse.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>80</td>
      <td><strong>Epic ID</strong></td>
      <td>17</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Confirmar envío del reporte</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero recibir una confirmación visual tras enviar un reporte para tener la certeza de que mi solicitud fue registrada correctamente.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Confirmación mostrada correctamente</strong><br>
      Dado que el comerciante envió un reporte de problema exitosamente, cuando el sistema procesa el envío, entonces se muestra una pantalla de confirmación con el número de ticket generado, fecha, resumen del reporte y la opción de volver al centro de soporte.<br><br>
      <strong>Scenario 2: Error en el envío del reporte</strong><br>
      Dado que el comerciante intentó enviar un reporte y ocurre un error en el sistema durante el procesamiento, cuando el sistema detecta el fallo, entonces no se genera el ticket y se muestra un mensaje indicando que hubo un error e invita a intentarlo nuevamente.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>81</td>
      <td><strong>Epic ID</strong></td>
      <td>18</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Navegar entre módulos desde el menú de navegación móvil</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario autenticado, quiero utilizar el menú de navegación de la aplicación móvil para ingresar rápidamente a Inicio, Productos, Lotes, Ventas, Suscripción, Pedidos, Chatbot y Ayuda.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Navegación a módulo correcto</strong><br>
      Dado que el usuario se encuentra dentro de la aplicación móvil, cuando toca una opción del menú de navegación, entonces el sistema abre la pantalla correspondiente y marca la opción activa visualmente.<br><br>
      <strong>Scenario 2: Acceso al perfil desde el bloque de usuario</strong><br>
      Dado que el usuario visualiza el bloque de perfil del menú de navegación móvil, cuando presiona dicho bloque, entonces el sistema navega a la pantalla "Perfil" de la aplicación móvil.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>82</td>
      <td><strong>Epic ID</strong></td>
      <td>18</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Cambiar idioma de la interfaz</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario de la aplicación móvil, quiero alternar entre español e inglés para visualizar los textos de la interfaz en el idioma que prefiera.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Cambio de idioma a español</strong><br>
      Dado que el usuario visualiza el selector de idioma, cuando presiona la opción "ES", entonces el sistema actualiza el idioma activo a español mediante el servicio de traducción y refresca los textos traducibles de la interfaz.<br><br>
      <strong>Scenario 2: Cambio de idioma a inglés</strong><br>
      Dado que el usuario visualiza el selector de idioma, cuando presiona la opción "EN", entonces el sistema actualiza el idioma activo a inglés y mantiene resaltada la opción seleccionada.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>83</td>
      <td><strong>Epic ID</strong></td>
      <td>18</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Gestionar destinos de navegación no disponibles</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como usuario de la aplicación móvil, quiero recibir una pantalla informativa cuando intento abrir un destino no disponible para comprender lo ocurrido y regresar a una sección válida.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Enlace profundo inválido</strong><br>
      Dado que el usuario abre un enlace profundo cuyo destino no existe o ya no está disponible, cuando Entreprenly procesa el enlace, entonces muestra una pantalla informativa con una acción para regresar al Inicio.<br><br>
      <strong>Scenario 2: Destino inicial sin especificar</strong><br>
      Dado que el usuario autenticado abre la aplicación sin un destino específico, cuando el sistema resuelve la navegación inicial, entonces muestra automáticamente la pantalla "Inicio".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>84</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Visualizar la propuesta de valor</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante que visita la web, quiero ver el headline y la propuesta de valor en el Hero para entender rápidamente qué problemas resuelve Entreprenly.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Visualización del Hero completo</strong><br>
      Dado que el comerciante carga la URL principal de la landing page, cuando la página termina de renderizar, entonces el sistema muestra el mensaje "Controla inventario, pedidos y cobros de tu negocio" y el botón de acción principal visible en pantalla.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>85</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Explorar las funciones principales</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante interesado, quiero conocer los pilares técnicos (Inventario, Finanzas, Chatbot, Balanza) para evaluar si las herramientas se ajustan a mis necesidades operativas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Sección de funciones visible al hacer scroll</strong><br>
      Dado que el comerciante hace scroll hacia abajo en la landing page, cuando llega a la sección de funciones, entonces el sistema muestra los iconos y las descripciones detalladas de cada uno de los 4 pilares clave: Inventario, Finanzas, Chatbot y Balanza IoT.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>86</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Revisar los planes de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante potencial, quiero ver la tabla comparativa de precios y beneficios para seleccionar el plan que mejor se adapte a mi presupuesto (Free o Control).</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Tarjetas de planes mostradas correctamente</strong><br>
      Dado que el comerciante navega a la sección de precios en la landing page, cuando visualiza las tarjetas de planes, entonces el sistema muestra el costo mensual y la lista de funcionalidades incluidas en cada nivel: Plan Free y Plan Control.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>87</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar las preguntas frecuentes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante con dudas, quiero leer la sección de FAQ para resolver inquietudes comunes sobre la integración de la balanza IoT o el uso del chatbot sin contactar a soporte.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Acordeón de FAQ funciona correctamente</strong><br>
      Dado que el comerciante se encuentra en la sección FAQ de la Landing Page, cuando selecciona una pregunta, entonces el sistema expande la respuesta correspondiente de forma fluida y colapsa las demás preguntas abiertas.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>88</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Acceder a la aplicación móvil desde la landing page</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante registrado, quiero utilizar el botón de ingreso de la Landing Page para abrir Entreprenly y acceder rápidamente a mi dashboard móvil.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Aplicación instalada</strong><br>
      Dado que el comerciante tiene Entreprenly instalado en su dispositivo móvil, cuando selecciona el botón "Ingresar" de la Landing Page, entonces el sistema abre la pantalla de inicio de sesión de la aplicación mediante un enlace profundo.<br><br>
      <strong>Scenario 2: Aplicación no instalada</strong><br>
      Dado que el comerciante no tiene Entreprenly instalado, cuando selecciona el botón "Ingresar", entonces la Landing Page muestra las opciones disponibles para descargar la aplicación móvil.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>89</td>
      <td><strong>Epic ID</strong></td>
      <td>19</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Descargar la aplicación mediante el botón de acción principal</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante nuevo, quiero utilizar el botón "Empezar gratis" del Hero para descargar Entreprenly e iniciar mi registro desde el celular.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Acceso a la descarga desde el llamado a la acción</strong><br>
      Dado que el comerciante selecciona el botón "Empezar gratis" del Hero, cuando la Landing Page identifica el sistema operativo del dispositivo, entonces muestra el enlace de descarga compatible para instalar Entreprenly.<br><br>
      <strong>Scenario 2: Registro con la aplicación instalada</strong><br>
      Dado que Entreprenly ya está instalado en el dispositivo, cuando el comerciante selecciona "Empezar gratis", entonces el sistema abre mediante un enlace profundo la pantalla de registro de una cuenta nueva.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>90</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Eliminar productos</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero eliminar productos para deshacerme de los productos que no me sirvan.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Eliminar producto correctamente</strong><br>
      Dado que el usuario está en la sección de productos y selecciona un producto existente, cuando presione "Eliminar", entonces el producto se eliminará exitosamente.<br><br>
      <strong>Scenario 2: Validación al eliminar lote</strong><br>
      Dado que el usuario está en la sección de productos y no selecciona un producto existente, cuando presione "Eliminar", entonces saldrá un mensaje de error de no haber seleccionado un producto.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>91</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Autenticar y autorizar usuarios mediante JWT</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como equipo de desarrollo, queremos proteger los endpoints de la API mediante autenticación basada en JWT para que solo los usuarios autenticados accedan a los recursos del comerciante.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Generación de token al iniciar sesión</strong><br>
      Dado que un usuario envía credenciales válidas al endpoint de autenticación, cuando el servidor las valida, entonces responde con HTTP 200 y retorna un token JWT firmado con su tiempo de expiración.<br><br>
      <strong>Scenario 2: Acceso autorizado con token válido</strong><br>
      Dado que el cliente incluye un token JWT válido en la cabecera Authorization, cuando solicita un recurso protegido, entonces el servidor valida el token y responde con HTTP 200 y los datos solicitados.<br><br>
      <strong>Scenario 3: Rechazo de token inválido o ausente</strong><br>
      Dado que el cliente solicita un recurso protegido sin token o con un token inválido o expirado, cuando el servidor evalúa la solicitud, entonces responde con HTTP 401 indicando que la autenticación es requerida.
      </td>
    </tr>
  </tbody>
</table>
<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>92</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Containerizar y desplegar la API mediante Docker y CI/CD</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como equipo de desarrollo, queremos empaquetar el backend en una imagen Docker y automatizar su construcción y despliegue mediante un pipeline de CI/CD para garantizar entregas reproducibles y consistentes.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Construcción de imagen Docker</strong><br>
      Dado que el código fuente está en la rama principal, cuando se ejecuta la construcción definida en el Dockerfile, entonces el sistema genera una imagen ejecutable del backend sin errores.<br><br>
      <strong>Scenario 2: Pipeline de integración continua exitoso</strong><br>
      Dado que se realiza un push o merge a la rama integradora, cuando el pipeline de GitHub Actions se ejecuta, entonces compila el proyecto, ejecuta las pruebas y construye la imagen automáticamente.<br><br>
      <strong>Scenario 3: Fallo de build detiene el despliegue</strong><br>
      Dado que la compilación o las pruebas fallan, cuando el pipeline se ejecuta, entonces el sistema detiene el proceso y no publica una imagen defectuosa.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>93</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Persistir datos mediante JPA por bounded context</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como equipo de desarrollo, queremos mapear las entidades de dominio a la base de datos mediante JPA respetando los límites de cada bounded context para mantener la integridad y separación de los datos.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Persistencia de entidad de dominio</strong><br>
      Dado que se ejecuta una operación de creación sobre un agregado, cuando el repositorio JPA persiste la entidad, entonces los datos quedan almacenados y son recuperables por su identificador.<br><br>
      <strong>Scenario 2: Generación automática del esquema</strong><br>
      Dado que la aplicación arranca con un nuevo bounded context, cuando se inicializa la capa de persistencia, entonces el sistema crea las tablas correspondientes según el mapeo definido.<br><br>
      <strong>Scenario 3: Aislamiento entre contextos</strong><br>
      Dado que dos bounded contexts definen entidades distintas, cuando se persisten sus datos, entonces cada contexto gestiona sus tablas sin interferir con los demás.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>94</td>
      <td><strong>Epic ID</strong></td>
      <td>13</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Desplegar la Landing Page en Firebase Hosting</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como equipo de desarrollo, queremos desplegar la Landing Page en Firebase Hosting para presentar el producto y facilitar el acceso a la aplicación móvil de forma escalable.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Build de producción de la Landing Page</strong><br>
      Dado que el código de la Landing Page está listo para una versión, cuando se ejecuta el build de producción, entonces el sistema genera los artefactos optimizados sin errores.<br><br>
      <strong>Scenario 2: Despliegue exitoso en Firebase</strong><br>
      Dado que existe un build de producción válido, cuando se ejecuta el despliegue a Firebase Hosting, entonces la Landing Page queda publicada y accesible mediante su URL.<br><br>
      <strong>Scenario 3: Reversión ante despliegue fallido</strong><br>
      Dado que un despliegue presenta errores, cuando el equipo lo detecta, entonces Firebase Hosting permite revertir a la versión estable previamente publicada.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>95</td>
      <td><strong>Epic ID</strong></td>
      <td>01</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Buscar lotes</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante quiero contar con un buscador en el módulo móvil de Lotes para localizar rápidamente los lotes de un producto por su nombre o marca sin recorrer toda la lista.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Búsqueda de lotes por nombre de producto</strong><br>
      Dado que el usuario está en la pantalla "Lotes" de la aplicación móvil, cuando ingresa el nombre de un producto en el campo de búsqueda, entonces el sistema filtra en tiempo real y muestra únicamente las tarjetas de los productos cuyo nombre coincide con el texto ingresado.<br><br>
      <strong>Scenario 2: Búsqueda de lotes por marca</strong><br>
      Dado que el usuario está en la pantalla "Lotes", cuando ingresa la marca de un producto en el campo de búsqueda, entonces el sistema filtra y muestra las tarjetas cuyos productos coinciden con esa marca.<br><br>
      <strong>Scenario 3: Búsqueda sin coincidencias</strong><br>
      Dado que el usuario ingresa un término en el campo de búsqueda, cuando ningún producto coincide con el texto, entonces el sistema no muestra tarjetas hasta que se ajuste o se limpie la búsqueda.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>96</td>
      <td><strong>Epic ID</strong></td>
      <td>04</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Gestionar métodos de pago de suscripción</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante con acceso al panel "Suscripción", quiero visualizar mis métodos de pago registrados y seleccionar cuál será el principal para que los pagos y renovaciones del Plan Control usen el medio correcto.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Lista de métodos de pago mostrada correctamente</strong><br>
      Dado que el comerciante tiene uno o más métodos de pago registrados, cuando presiona "Ver métodos de pago" en la sección de facturación, entonces el sistema muestra un diálogo con las tarjetas disponibles, identifica el método principal y permite seleccionar otra tarjeta como principal.<br><br>
      <strong>Scenario 2: Registro de nuevo método desde la lista</strong><br>
      Dado que el comerciante se encuentra en el diálogo de métodos de pago, cuando presiona "Agregar método de pago", completa los datos requeridos y guarda los cambios, entonces el sistema registra el nuevo método, lo muestra en la lista y lo deja disponible para pagos y renovaciones.
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>97</td>
      <td><strong>Epic ID</strong></td>
      <td>06</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar el historial de ventas del día</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero consultar el listado de las ventas registradas en un día seleccionado, para revisar la actividad comercial y verificar las transacciones sin salir del panel de ventas.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Historial cargado con las ventas del día</strong><br>
      Dado que el comerciante se encuentra en la pantalla "Ventas" de la aplicación móvil y existen ventas registradas en el día actual, cuando el sistema consulta el endpoint "/api/v1/sales" filtrando por la fecha seleccionada, entonces muestra en el panel "Historial de ventas" cada transacción ordenada de la más reciente a la más antigua, indicando la hora, el método de pago, la cantidad de productos y el total formateado en la moneda configurada en el perfil.<br><br>
      <strong>Scenario 2: Consulta de otro día mediante el selector de fecha</strong><br>
      Dado que el comerciante visualiza el panel "Historial de ventas", cuando selecciona una fecha distinta en el selector de fecha, entonces el sistema consulta las ventas correspondientes a ese día de negocio y actualiza la lista sin actualizar manualmente la pantalla.<br><br>
      <strong>Scenario 3: Día sin ventas o carga en curso</strong><br>
      Dado que el comerciante selecciona un día sin ventas registradas, cuando el sistema termina de consultar la información después de mostrar el estado "Cargando ventas…", entonces presenta el mensaje "No hay ventas registradas para este día".
      </td>
    </tr>
  </tbody>
</table>

<table>
  <tbody>
    <tr>
      <td><strong>User Story</strong></td>
      <td>98</td>
      <td><strong>Epic ID</strong></td>
      <td>06</td>
    </tr>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Consultar el detalle de una venta registrada</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td colspan="3">Como comerciante, quiero abrir el detalle de una venta del historial, para revisar los productos vendidos con sus cantidades o pesos y sus montos.</td>
    </tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3">
      <strong>Scenario 1: Apertura del detalle de la venta</strong><br>
      Dado que el comerciante visualiza el panel "Historial de ventas" con al menos una venta, cuando toca una venta de la lista, entonces el sistema abre la pantalla "Detalle de venta" y muestra la fecha, la hora, el método de pago, cada producto con su cantidad o peso, el precio unitario, el subtotal y el total de la venta.<br><br>
      <strong>Scenario 2: Regreso al historial</strong><br>
      Dado que la pantalla "Detalle de venta" está abierta, cuando el comerciante utiliza la acción de regresar, entonces el sistema vuelve al historial sin modificar la venta consultada.
      </td>
    </tr>
  </tbody>
</table>

### 2.4.2. Impact Mapping

Por completar.

### 2.4.3. Product Backlog

Por completar.

## 2.5. Strategic-Level Domain-Driven Design

Por completar.

### 2.5.1. EventStorming

Por completar.

#### 2.5.1.1. Candidate Context Discovery

Por completar.

#### 2.5.1.2. Domain Message Flows Modeling

Por completar.

#### 2.5.1.3. Bounded Context Canvases

Por completar.

### 2.5.2. Context Mapping

Por completar.

### 2.5.3. Software Architecture

Por completar.

#### 2.5.3.1. Software Architecture Context Level Diagrams

Por completar.

#### 2.5.3.2. Software Architecture Container Level Diagrams

Por completar.

#### 2.5.3.3. Software Architecture Deployment Diagrams

Por completar.

## 2.6. Tactical-Level Domain-Driven Design

Por completar.

### 2.6.1. Bounded Context: Profile

Por completar.

#### 2.6.1.1. Domain Layer

Por completar.

#### 2.6.1.2. Interface Layer

Por completar.

#### 2.6.1.3. Application Layer

Por completar.

#### 2.6.1.4. Infrastructure Layer

Por completar.

#### 2.6.1.5. Bounded Context Software Architecture Component Level Diagrams

Por completar.

#### 2.6.1.6. Bounded Context Software Architecture Code Level Diagrams

Por completar.

##### 2.6.1.6.1. Bounded Context Domain Layer Class Diagrams

Por completar.

##### 2.6.1.6.2. Bounded Context Database Design Diagram

Por completar.

### 2.6.2. Bounded Context: Inventory

Este Bounded Context es responsable de la administración del inventario del comerciante: catálogo de productos y gestión de lotes para productos perecederos. Está diseñado bajo Clean Architecture y DDD táctico, separando dominio, aplicación, infraestructura e interfaz. Soporta dos jerarquías paralelas según tipo de medida —productos por unidad y productos por peso— para evitar columnas nulas estructurales, integra la validación física con balanza inteligente (IoT) con fallback manual, y expone una fachada ACL (`InventoryContextFacade`) que provee el catálogo por propietario y permite el descuento de stock a otros contextos, principalmente Chatbot (pedidos por WhatsApp) y Sales (venta presencial). El aislamiento multitenant se logra con `owner_email` como referencia lógica al propietario, sin FK física entre Bounded Contexts.

#### 2.6.2.1. Domain Layer

**Sub-capa Model - Aggregates:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr>
    <td>Aggregate Root</td><td>UnitProduct</td>
    <td>Producto vendido por unidad (ej. gaseosa, galleta). Extiende `AbstractDomainAggregateRoot`.</td>
    <td>Mantener invariantes de catálogo: `name` requerido, `code_qr` UNIQUE, `price >= 0`, `owner_email` obligatorio. El borrado elimina en cascada sus `UnitLot`.</td>
    <td>Agrega `UnitLot` vía `productId` lógico. Leído por `StockAlertGenerator` y expuesto vía Facade como `CatalogItem`.</td>
  </tr>
  <tr>
    <td>Aggregate Root</td><td>WeightProduct</td>
    <td>Producto vendido al peso (ej. manzana, pollo). Precio por kilogramo.</td>
    <td>Mantener `price_per_kg >= 0`, `code_qr` UNIQUE, `owner_email`. Soporta captura IoT de peso con fallback manual.</td>
    <td>Agrega `WeightLot`. Relacionado con Sales para validación Unidad/Peso y con Chatbot para descuento de stock.</td>
  </tr>
  <tr>
    <td>Aggregate Root</td><td>UnitLot</td>
    <td>Lote de un producto unitario. Trazabilidad de perecederos.</td>
    <td>Validar `quantity >= 0`, `entry_date <= expiry_date`, `expiry_date` no pasada al crear. Orden por defecto ascendente por vencimiento.</td>
    <td>Referencia lógica `product_id` a `UnitProduct`. Genera alertas vía `StockAlertGenerator`.</td>
  </tr>
  <tr>
    <td>Aggregate Root</td><td>WeightLot</td>
    <td>Lote de un producto por peso. Stock en `quantity_kg` decimal.</td>
    <td>Validar `quantity_kg >= 0`, fechas coherentes. Soporta ajuste por balanza IoT.</td>
    <td>Referencia lógica `product_id` a `WeightProduct`.</td>
  </tr>
</table>

**Sub-capa Model - Entities (lectura y alertas):**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr>
    <td>Entity</td><td>Lot</td>
    <td>Vista unificada de lectura de lotes (unitarios y por peso) para listados y panel resumen.</td>
    <td>Servir a `LotQueryService` (`GetAllLotsQuery`, `GetLotByIdQuery`) sin lógica de escritura.</td>
    <td>Derivada de `UnitLot` y `WeightLot`.</td>
  </tr>
  <tr>
    <td>Entity</td><td>StockAlert</td>
    <td>Alerta de monitoreo: stock bajo, agotado o lote por vencer/vencido.</td>
    <td>Almacenar `type`, `severity`, producto/lote afectado y mensaje para dashboard móvil y Toasts.</td>
    <td>Generada por `StockAlertGenerator`. Consultada por `StockAlertQueryService`.</td>
  </tr>
</table>

**Sub-capa Model - Commands:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Command</td><td>CreateUnitProductCommand</td><td>Crear producto unitario (`name, description, code_qr, price, weight_grams, brand, owner_email`).</td><td>Validar unicidad de `code_qr` y precio válido.</td><td>Manejado por `UnitProductCommandService`. Publica `ProductCreated`.</td></tr>
  <tr><td>Command</td><td>UpdateUnitProductCommand</td><td>Actualizar datos de producto unitario.</td><td>Mantener invariantes sin cambiar `owner_email`.</td><td>Manejado por `UnitProductCommandService`.</td></tr>
  <tr><td>Command</td><td>DeleteUnitProductCommand</td><td>Eliminar producto unitario y sus lotes.</td><td>Ejecutar borrado en cascada.</td><td>Requiere confirmación diálogo en UI.</td></tr>
  <tr><td>Command</td><td>CreateWeightProductCommand</td><td>Crear producto por peso (`price_per_kg`).</td><td>Validar precio por kg y `code_qr` único.</td><td>Manejado por `WeightProductCommandService`.</td></tr>
  <tr><td>Command</td><td>CreateUnitLotCommand</td><td>Crear lote unitario (`product_id, code_qr, entry_date, expiry_date, quantity`).</td><td>Validar que `expiry_date` no sea pasada y que el producto exista.</td><td>Manejado por `UnitLotCommandService`. Publica `StockAdjusted`.</td></tr>
  <tr><td>Command</td><td>CreateWeightLotCommand</td><td>Crear lote por peso (`quantity_kg`).</td><td>Validar peso inicial y fechas.</td><td>Manejado por `WeightLotCommandService`.</td></tr>
</table>

**Sub-capa Model - Queries:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Query</td><td>GetAllUnitProductsQuery</td><td>Listar productos unitarios del propietario autenticado.</td><td>Filtrar por `owner_email` con búsqueda en tiempo real por nombre/categoría.</td><td>Manejada por `UnitProductQueryService`.</td></tr>
  <tr><td>Query</td><td>GetUnitProductByIdQuery</td><td>Obtener detalle de un producto unitario.</td><td>Retornar con sus lotes ordenados por vencimiento.</td><td>Manejada por `UnitProductQueryService`.</td></tr>
  <tr><td>Query</td><td>GetAllLotsQuery / GetLotByIdQuery</td><td>Consulta unificada de lotes.</td><td>Servir tabla de lotes y panel `Activos / Próximos 7 días / Vencidos`.</td><td>Manejadas por `LotQueryService`.</td></tr>
  <tr><td>Query</td><td>GetAllWeightLotsQuery / GetWeightLotByIdQuery</td><td>Consulta de lotes por peso.</td><td>Servir validación de stock en POS y Chatbot.</td><td>Manejadas por `WeightLotQueryService`.</td></tr>
  <tr><td>Query</td><td>GetAllStockAlertsQuery / GetStockAlertByIdQuery</td><td>Consultar alertas generadas.</td><td>Alimentar KPIs del dashboard móvil y banners inline.</td><td>Manejadas por `StockAlertQueryService`.</td></tr>
</table>

**Sub-capa Model - Events (mejora respecto a la guía, que los omite):**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Event</td><td>ProductCreated</td><td>Se emite al crear `UnitProduct` o `WeightProduct`.</td><td>Permitir seeding y sincronización de catálogo.</td><td>Consumido internamente para generar alerta inicial si aplica.</td></tr>
  <tr><td>Event</td><td>StockAdjusted</td><td>Se emite al crear lote o descontar stock (venta o pedido Chatbot).</td><td>Disparar re-evaluación de alertas.</td><td>Entrada de `StockAlertGenerator`.</td></tr>
  <tr><td>Event</td><td>LowStockDetected / StockDepleted</td><td>Stock bajo umbral o en cero.</td><td>Generar `StockAlert` con severidad `WARNING` / `CRITICAL`.</td><td>Mostrado en dashboard móvil, tarjeta y Toast.</td></tr>
  <tr><td>Event</td><td>LotExpiringSoon / LotExpired</td><td>Lote próximo a vencer (7 días) o vencido.</td><td>Generar alerta amarilla/roja con banner inline.</td><td>Ordena tabla de lotes por `expiry_date` asc.</td></tr>
</table>

**Sub-capa Model - Value Objects:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Value Object</td><td>ProductType</td><td>Enum `UNIT`, `WEIGHT`.</td><td>Decidir jerarquía, badge, filtro y diálogo POS (`Registrar Cantidad[int]` vs `Registrar Peso[decimal + balanza]`).</td><td>Usado por `UnitProduct`, `WeightProduct`, `Lot` y `StockAlert`.</td></tr>
  <tr><td>Value Object</td><td>AlertType</td><td>Tipo de alerta: `LOW_STOCK`, `OUT_OF_STOCK`, `EXPIRING_SOON`, `EXPIRED`.</td><td>Clasificar la causa de la alerta.</td><td>Atributo de `StockAlert`.</td></tr>
  <tr><td>Value Object</td><td>AlertSeverity</td><td>Severidad: `INFO`, `WARNING`, `CRITICAL` (verde/amarillo/rojo).</td><td>Mapear a color y a tarjeta KPI con borde izquierdo de 4px.</td><td>Atributo de `StockAlert`.</td></tr>
  <tr><td>Value Object</td><td>QrCode / Money</td><td>`code_qr` UNIQUE por producto/lote; `price` y `price_per_kg >= 0`.</td><td>Garantizar unicidad e invariantes monetarios.</td><td>Embebidos en agregados.</td></tr>
</table>

**Sub-capa Services:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr>
    <td>Domain Service</td><td>StockAlertGenerator</td>
    <td>Servicio de monitoreo que lee productos y lotes y genera alertas.</td>
    <td>Evaluar umbrales de stock y vencimiento; crear `StockAlert` sin acoplarse a persistencia.</td>
    <td>Lee `UnitProduct`, `WeightProduct`, `UnitLot`, `WeightLot`; genera `StockAlert`. Se ejecuta tras `StockAdjusted`.</td>
  </tr>
</table>

**Sub-capa Repositories:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Repository</td><td>UnitProductRepository</td><td>Interfaz de persistencia de productos unitarios.</td><td>CRUD filtrado por `owner_email`.</td><td>Implementada en Infrastructure (JPA).</td></tr>
  <tr><td>Repository</td><td>WeightProductRepository</td><td>Interfaz de persistencia de productos por peso.</td><td>CRUD filtrado por `owner_email`.</td><td>Implementada en Infrastructure.</td></tr>
  <tr><td>Repository</td><td>UnitLotRepository</td><td>Persistencia de lotes unitarios.</td><td>CRUD + consulta por `product_id` con cascade delete.</td><td>Implementada en Infrastructure.</td></tr>
  <tr><td>Repository</td><td>WeightLotRepository</td><td>Persistencia de lotes por peso.</td><td>CRUD + consulta por `product_id`.</td><td>Implementada en Infrastructure.</td></tr>
</table>

#### 2.6.2.2. Interface Layer

**REST - Controllers:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Controller</td><td>UnitProductsController</td><td>Expone CRUD de productos unitarios. Métodos: `getAll`, `getById`, `create`, `update`, `delete` con `userDetails` para multitenancy.</td><td>Validar `owner_email` del token JWT y delegar a `UnitProductCommandService` / `UnitProductQueryService`.</td><td>Endpoints `GET/POST /api/v1/inventory/unit-products`, `GET/PUT/DELETE /api/v1/inventory/unit-products/{id}`.</td></tr>
  <tr><td>Controller</td><td>WeightProductsController</td><td>CRUD de productos por peso.</td><td>Delegar a `WeightProductCommandService` / `WeightProductQueryService`.</td><td>Endpoints `.../weight-products`.</td></tr>
  <tr><td>Controller</td><td>UnitLotsController / WeightLotsController</td><td>Gestión de lotes por tipo.</td><td>Validar `expiry_date` no pasada y existencia del producto.</td><td>Endpoints `.../unit-lots`, `.../weight-lots`.</td></tr>
  <tr><td>Controller</td><td>LotsController</td><td>Lectura unificada. Método `getAll`.</td><td>Servir tabla ordenada por vencimiento.</td><td>Usa `LotQueryService`. Endpoint `GET /api/v1/inventory/lots`.</td></tr>
  <tr><td>Controller</td><td>StockAlertsController</td><td>Lectura de alertas. Método `getAll`.</td><td>Servir KPIs y banners.</td><td>Usa `StockAlertQueryService`. Endpoint `GET /api/v1/inventory/stock-alerts`.</td></tr>
</table>

**REST - Resources y Transform (assemblers):**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Resource</td><td>CreateUnitProductResource / UnitProductResource</td><td>DTOs de entrada/salida (`name, description, code_qr, price, weight_grams, brand`).</td><td>Desacoplar API del dominio y validar formato.</td><td>Convertidos a `CreateUnitProductCommand` vía assembler.</td></tr>
  <tr><td>Resource</td><td>CreateWeightProductResource / CreateLotResource</td><td>DTOs para productos por peso y lotes (`price_per_kg`, `quantity / quantity_kg`, `entry_date`, `expiry_date`).</td><td>Validar tipos (int vs decimal) y fechas.</td><td>Usados por controllers de peso y lotes.</td></tr>
  <tr><td>Assembler</td><td>*ResourceFromEntityAssembler / *CommandFromResourceAssembler</td><td>Transformadores bidireccionales.</td><td>Evitar filtrado de entidades de dominio al exterior.</td><td>Puente entre Interface y Application.</td></tr>
</table>

**ACL - Fachada anticorrupción:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr>
    <td>Facade</td><td>InventoryContextFacade</td>
    <td>Fachada para otros BCs. Métodos: `fetchCatalogByOwner(ownerEmail): List&lt;CatalogItem&gt;`, `decrementStockForItems(ownerEmail, items): void`.</td>
    <td>Proveer catálogo aislado por propietario y descontar stock de forma transaccional (bloquea venta si `Stock insuficiente. Disponible: X`).</td>
    <td>Usa `UnitProductQueryService`, `WeightProductQueryService`, `UnitLotCommandService` y `WeightLotCommandService`. Consumida por Chatbot y Sales.</td>
  </tr>
  <tr><td>Record</td><td>CatalogItem (`name, price, byWeight, stock`)</td><td>Ítem de catálogo expuesto.</td><td>Unificar unidad y peso para Chatbot.</td><td>Retornado por `fetchCatalogByOwner`.</td></tr>
  <tr><td>Record</td><td>StockDeductionItem (`productName, quantity`)</td><td>Solicitud de descuento.</td><td>Representar ítems confirmados de venta/pedido.</td><td>Parámetro de `decrementStockForItems`.</td></tr>
</table>

#### 2.6.2.3. Application Layer

**Internal - CommandServices:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Service</td><td>UnitProductCommandService</td><td>Implementa `handle(Create/Update/DeleteUnitProductCommand)`.</td><td>Orquestar validaciones, persistencia y publicación de `ProductCreated`.</td><td>Usa `UnitProductRepository`. Llamado por `UnitProductsController` y Facade.</td></tr>
  <tr><td>Service</td><td>WeightProductCommandService</td><td>Maneja comandos de productos por peso.</td><td>Garantizar `price_per_kg` y unicidad de QR.</td><td>Usa `WeightProductRepository`.</td></tr>
  <tr><td>Service</td><td>UnitLotCommandService / WeightLotCommandService</td><td>Manejan `CreateUnitLotCommand` / `CreateWeightLotCommand` y descuento de stock.</td><td>Validar fechas y stock disponible; emitir `StockAdjusted`.</td><td>Usan `UnitLotRepository` / `WeightLotRepository`.</td></tr>
</table>

**Internal - QueryServices:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Service</td><td>UnitProductQueryService / WeightProductQueryService</td><td>Implementan `handle(GetAll... / Get...ByIdQuery)`.</td><td>Consultas filtradas por `owner_email`.</td><td>Usados por controllers y Facade.</td></tr>
  <tr><td>Service</td><td>UnitLotQueryService / WeightLotQueryService / LotQueryService</td><td>Consultas de lotes.</td><td>Retornar ordenados por `expiry_date` asc para gestión de perecederos.</td><td>Usados por `LotsController` y dashboard móvil.</td></tr>
  <tr><td>Service</td><td>StockAlertQueryService</td><td>Implementa `handle(GetAllStockAlertsQuery, GetStockAlertByIdQuery)`.</td><td>Exponer alertas para KPIs y Toasts.</td><td>Usado por `StockAlertsController`.</td></tr>
</table>

#### 2.6.2.4. Infrastructure Layer

**Persistence:**
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th>
  </tr>
  <tr><td>Repository JPA</td><td>JpaUnitProductRepository / JpaWeightProductRepository / JpaUnitLotRepository / JpaWeightLotRepository</td><td>Implementaciones JPA de las interfaces de dominio sobre PostgreSQL compartida (esquema `public`).</td><td>Persistir con herencia `AuditableAbstractPersistenceEntity(id BIGINT PK, created_at, updated_at)` y `SnakeCaseWithPluralizedTablePhysicalNamingStrategy`. `owner_email` como referencia lógica sin FK inter-BC; `product_id` con FK y cascade delete de lotes.</td><td>Respaldan a los Command/QueryServices. Siembra productos y lotes demo al arranque.</td></tr>
</table>

**Reglas de infraestructura y validación física:**
- Monolito modular Spring Boot con despliegue único; base PostgreSQL compartida en 3FN.
- Balanza inteligente (IoT): si el producto es `WEIGHT` y la balanza responde, captura automática del peso (valor grande en tiempo real); si no hay respuesta, fallback manual permitido. Funcionalidad premium ligada al Plan Control.
- Bloqueo de venta sin stock: si cantidad/peso solicitado supera disponible, se retorna error y no se agrega el ítem al ticket. Búsqueda y filtrado en tiempo real por nombre/categoría con estado vacío controlado.

#### 2.6.2.5. Bounded Context Software Architecture Component Level Diagrams

<p align="center">
  <img src="images/capitulo2/inventory-component.png" alt="Diagrama de componentes del Bounded Context Inventory" width="800"/>
</p>

**Figura 2.6.2.1:** Diagrama de componentes de Inventory. Muestra controllers, command/query services, `InventoryContextFacade`, `StockAlertGenerator` y persistencia en PostgreSQL compartida, con seeding demo y borrado en cascada. Fuente: adaptado de `structurizr-104049-InventoryComponent` del proyecto original.

#### 2.6.2.6. Bounded Context Software Architecture Code Level Diagrams

##### 2.6.2.6.1. Bounded Context Domain Layer Class Diagrams

<p align="center">
  <img src="images/capitulo2/inventory-class-diagram.svg" alt="Diagrama de clases del dominio Inventory" width="800"/>
</p>

**Figura 2.6.2.2:** Diagrama de clases del dominio Inventory con paquetes `domain.model (aggregates, entities, commands, queries, valueobjects)`, `application (commandservices, queryservices)`, `interfaces (rest, acl)` e `infrastructure (persistence)`. Los agregados extienden `AbstractDomainAggregateRoot` y los lotes referencian a productos por `productId` lógico.

##### 2.6.2.6.2. Bounded Context Database Design Diagram

<p align="center">
  <img src="images/capitulo2/inventory-database-diagram.png" alt="Diagrama de base de datos del Bounded Context Inventory" width="800"/>
</p>

**Figura 2.6.2.3:** Diagrama de base de datos (vista general del modelo con énfasis en BC4 Inventory). Fuente: `Entreprenly_database_diagram` del proyecto original.

**Diccionario BC4 — Inventory (4 tablas, mejora respecto a la guía que solo muestra imagen):**

<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse: collapse;">
  <tr style="background-color:#2c3e50; color:white;">
    <th>Tabla</th><th>Campo</th><th>Key</th><th>Descripción</th>
  </tr>
  <tr>
    <td rowspan="7" style="vertical-align:middle; text-align:center;"><code>inventory_unit_products</code></td>
    <td><code>id</code></td><td style="vertical-align:middle; text-align:center;">PK</td><td>Identificador autoincremental.</td>
  </tr>
  <tr>
    <td><code>created_at</code>, <code>updated_at</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Auditoría heredada.</td>
  </tr>
  <tr>
    <td><code>owner_email</code></td><td style="vertical-align:middle; text-align:center;">IDX</td><td>Email del propietario (lógico, sin FK inter-BC). Aísla catálogo por comerciante.</td>
  </tr>
  <tr>
    <td><code>name</code>, <code>description</code>, <code>brand</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Datos de catálogo.</td>
  </tr>
  <tr>
    <td><code>code_qr</code></td><td style="vertical-align:middle; text-align:center;">UNIQUE</td><td>Código QR único del producto.</td>
  </tr>
  <tr>
    <td><code>price</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Precio unitario <code>&gt;= 0</code>.</td>
  </tr>
  <tr>
    <td><code>weight_grams</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Peso referencial en gramos.</td>
  </tr>
  <tr>
    <td rowspan="3" style="vertical-align:middle; text-align:center;"><code>inventory_weight_products</code></td>
    <td><code>id</code></td><td style="vertical-align:middle; text-align:center;">PK</td><td>Identificador.</td>
  </tr>
  <tr>
    <td><code>owner_email</code>, <code>name</code>, <code>description</code>, <code>code_qr</code></td><td style="vertical-align:middle; text-align:center;">UNIQUE en <code>code_qr</code></td><td>Igual semántica que unitarios.</td>
  </tr>
  <tr>
    <td><code>price_per_kg</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Precio por kilogramo <code>&gt;= 0</code>.</td>
  </tr>
  <tr>
    <td rowspan="6" style="vertical-align:middle; text-align:center;"><code>inventory_unit_lots</code></td>
    <td><code>id</code></td><td style="vertical-align:middle; text-align:center;">PK</td><td>Identificador.</td>
  </tr>
  <tr>
    <td><code>owner_email</code></td><td style="vertical-align:middle; text-align:center;">IDX</td><td>Propietario lógico.</td>
  </tr>
  <tr>
    <td><code>product_id</code></td><td style="vertical-align:middle; text-align:center;">FK → <code>inventory_unit_products.id</code></td><td>Lote pertenece a un producto. Cascade delete.</td>
  </tr>
  <tr>
    <td><code>code_qr</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>QR del lote para trazabilidad.</td>
  </tr>
  <tr>
    <td><code>entry_date</code>, <code>expiry_date</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Ingreso y vencimiento (<code>expiry_date</code> no pasada al crear).</td>
  </tr>
  <tr>
    <td><code>quantity</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Cantidad entera <code>&gt;= 0</code>.</td>
  </tr>
  <tr>
    <td rowspan="4" style="vertical-align:middle; text-align:center;"><code>inventory_weight_lots</code></td>
    <td><code>id</code></td><td style="vertical-align:middle; text-align:center;">PK</td><td>Identificador.</td>
  </tr>
  <tr>
    <td><code>product_id</code></td><td style="vertical-align:middle; text-align:center;">FK → <code>inventory_weight_products.id</code></td><td>Relación con producto por peso.</td>
  </tr>
  <tr>
    <td><code>code_qr</code>, <code>entry_date</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Trazabilidad e ingreso.</td>
  </tr>
  <tr>
    <td><code>quantity_kg</code></td><td style="vertical-align:middle; text-align:center;">—</td><td>Stock decimal en kg <code>&gt;= 0</code>, ajustable por balanza IoT.</td>
  </tr>
</table>

**Relaciones:** `inventory_unit_lots.product_id` → `inventory_unit_products.id`; `inventory_weight_lots.product_id` → `inventory_weight_products.id`. Sin FK físicas hacia otros BCs para preservar autonomía; `owner_email` referencia lógica a `users.email`.

### 2.6.3. Bounded Context: Chatbot

Por completar.

#### 2.6.3.1. Domain Layer

Por completar.

#### 2.6.3.2. Interface Layer

Por completar.

#### 2.6.3.3. Application Layer

Por completar.

#### 2.6.3.4. Infrastructure Layer

Por completar.

#### 2.6.3.5. Bounded Context Software Architecture Component Level Diagrams

Por completar.

#### 2.6.3.6. Bounded Context Software Architecture Code Level Diagrams

Por completar.

##### 2.6.3.6.1. Bounded Context Domain Layer Class Diagrams

Por completar.

##### 2.6.3.6.2. Bounded Context Database Design Diagram

Por completar.

### 2.6.4. Bounded Context: Subscription

Por completar.

#### 2.6.4.1. Domain Layer

Por completar.

#### 2.6.4.2. Interface Layer

Por completar.

#### 2.6.4.3. Application Layer

Por completar.

#### 2.6.4.4. Infrastructure Layer

Por completar.

#### 2.6.4.5. Bounded Context Software Architecture Component Level Diagrams

Por completar.

#### 2.6.4.6. Bounded Context Software Architecture Code Level Diagrams

Por completar.

##### 2.6.4.6.1. Bounded Context Domain Layer Class Diagrams

Por completar.

##### 2.6.4.6.2. Bounded Context Database Design Diagram

Por completar.

### 2.6.5. Bounded Context: Sales

Por completar.

#### 2.6.5.1. Domain Layer

Por completar.

#### 2.6.5.2. Interface Layer

Por completar.

#### 2.6.5.3. Application Layer

Por completar.

#### 2.6.5.4. Infrastructure Layer

Por completar.

#### 2.6.5.5. Bounded Context Software Architecture Component Level Diagrams

Por completar.

#### 2.6.5.6. Bounded Context Software Architecture Code Level Diagrams

Por completar.

##### 2.6.5.6.1. Bounded Context Domain Layer Class Diagrams

Por completar.

##### 2.6.5.6.2. Bounded Context Database Design Diagram

Por completar.
