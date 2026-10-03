# Conclusiones

- La separación del inventario en dos jerarquías paralelas por unidad y por peso evita columnas nulas y ordena el catálogo por tipo de medida.
- La gestión de lotes por fecha de vencimiento y las alertas de stock bajo, agotado y por vencer permiten priorizar la rotación de perecederos; su efecto sobre la merma requiere validación con usuarios y datos de operación.
- La exposición del catálogo mediante fachada hacia venta presencial y pedidos por WhatsApp con validación de balanza inteligente mantiene la consistencia entre el stock digital y el físico.

## Avance del TB1

- La adaptación de Entreprenly a Android conserva la identidad del producto y establece una referencia compartida de estilo para los contextos. La navegación táctil, los formularios de una columna y el tratamiento de permisos del dispositivo orientan el diseño hacia las condiciones de uso del comerciante.
- La selección de 33 HUs y 82 story points distribuye el Sprint 1 entre Profile y navegación, Inventory, Chatbot, Subscription y Sales. La trazabilidad entre Product Backlog, responsables y Work-items permite revisar el avance respecto del alcance acordado.
- La reutilización de la Landing Page, el backend y el avance previo de IAM proporciona una base para la implementación móvil. El cumplimiento del objetivo del TB1, incluido el alcance desplegado del backend, se determina con las evidencias de ejecución, servicios y despliegue del Sprint Review.
- La elaboración y corrección de los diagramas de Profile fortalece la distinción entre estructura de pantallas, acciones de navegación y decisiones del usuario. La separación por HU facilita relacionar cada recorrido con los criterios de aceptación.

## Recomendaciones

- Mantener el aislamiento por propietario sin llaves foráneas entre contextos.
- Conservar el borrado en cascada de lotes al eliminar su producto.
- Sostener el monitoreo con umbral de vencimiento a 7 días para priorizar la rotación.
- Consolidar los contratos y estados de carga, error y recuperación entre módulos antes de aceptar las HUs del Sprint 1.
- Registrar por separado el código reutilizado, el esfuerzo planificado y las funcionalidades aceptadas para que las métricas del sprint reflejen el avance verificable.
