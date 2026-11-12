# Matriz de trazabilidad — Acceptance Tests Bookora

La suite `implemented/` contiene verificaciones de controles actualmente observables en la landing page. Sus etiquetas indican el tema de la HU relacionada, pero `@alcance_informativo` deja claro que no valida el flujo funcional descrito en el backlog. La suite `specified/` expresa los criterios de aceptación del Product Backlog; no certifica que estén implementados ni que se hayan ejecutado.

Cada archivo `.feature` tiene una sola `Característica` por módulo. En `specified/`, cada HU está agrupada en una `Regla: US-XX` dentro de su archivo funcional. El idioma español está definido globalmente en `cucumber.cjs`; los archivos `.feature` no llevan cabecera `# language: es`.

| User Story | Funcionalidad | Suite | Estado en el código suministrado | Feature | Escenarios |
|---|---|---|---|---|---|
| US-01 | Registro de estudiante/lector | specified | No verificable en la landing | `specified/estudiante/cuentas.feature` | Registrar una cuenta con correo válido no registrado; Validar el formato del correo electrónico |
| US-02 | Inicio de sesión de estudiante/lector | specified | No verificable en la landing | `specified/estudiante/cuentas.feature` | Acceder con credenciales correctas; Informar credenciales incorrectas |
| US-03 | Búsqueda de libros | implemented; specified | Parcial: vista previa y pestaña; búsqueda real no implementada en la superficie revisada | `implemented/product_preview.feature`; `specified/estudiante/catalogo.feature` | implemented: Mostrar la pestaña de búsqueda seleccionada inicialmente. specified: Buscar libros y filtrar por categoría y género; Informar que no hay coincidencias |
| US-04 | Precio y distancia | specified | No verificable en la landing | `specified/estudiante/catalogo.feature` | Consultar precio y distancia aproximada |
| US-05 | Disponibilidad del libro | specified | No verificable en la landing | `specified/estudiante/catalogo.feature` | Consultar el estado de disponibilidad; Impedir una solicitud para un libro no disponible |
| US-06 | Detalles y fotos del libro | specified | No verificable en la landing | `specified/estudiante/catalogo.feature` | Consultar la información y fotografías de un libro |
| US-07 | Favoritos | specified | No verificable en la landing | `specified/estudiante/interacciones.feature` | Agregar y retirar un libro de favoritos |
| US-08 | Reseñas del vendedor/prestamista | specified | No verificable en la landing | `specified/estudiante/interacciones.feature` | Consultar reseñas y promedio del vendedor |
| US-09 | Calificación del lector | specified | No verificable en la landing | `specified/estudiante/interacciones.feature` | Recibir y mostrar una calificación después de devolver un libro |
| US-10 | Compra o alquiler | implemented; specified | Parcial: copy de vista previa/FAQ y control de pestañas; transacción no implementada en la superficie revisada | `implemented/product_preview.feature`; `specified/estudiante/transacciones.feature` | implemented: Mostrar el panel de compra o alquiler al seleccionar su pestaña; Expandir las preguntas sobre compra, alquiler y Garantía Retenida. specified: Confirmar una operación en una modalidad disponible |
| US-11 | Métodos de pago y Garantía Retenida | implemented; specified | Parcial: explicación informativa; pago y retención no implementados en la superficie revisada | `implemented/product_preview.feature`; `specified/estudiante/transacciones.feature` | implemented: Expandir las preguntas sobre compra, alquiler y Garantía Retenida. specified: Consultar opciones y registrar un pago exitoso; Aplicar Garantía Retenida en un alquiler |
| US-12 | Contactar al dueño del libro | specified | No verificable en la landing | `specified/estudiante/transacciones.feature` | Enviar y recibir mensajes en el chat temporal de una solicitud |
| US-13 | Seguimiento del pedido | implemented; specified | Parcial: copy de vista previa/FAQ y control de pestañas; tracking real no implementado en la superficie revisada | `implemented/product_preview.feature`; `specified/estudiante/seguimiento.feature` | implemented: Mostrar el panel de seguimiento al seleccionar su pestaña; Expandir la pregunta sobre la entrega. specified: Consultar cambios de estado del pedido |
| US-14 | Confirmación/boleta de operación | specified | No verificable en la landing | `specified/estudiante/transacciones.feature` | Consultar la confirmación y boleta de la operación |
| US-15 | Fecha y alertas de devolución | specified | No verificable en la landing | `specified/estudiante/seguimiento.feature` | Consultar fecha límite y recibir recordatorios |
| US-16 | Calificar al dueño del libro | specified | No verificable en la landing | `specified/estudiante/reputacion.feature` | Calificar al dueño al completar una compra o devolución |
| US-17 | Historial de operaciones | specified | No verificable en la landing | `specified/estudiante/historial_soporte.feature` | Consultar libros comprados y alquilados |
| US-18 | Soporte al usuario lector | specified | No verificable en la landing | `specified/estudiante/historial_soporte.feature` | Enviar un ticket de soporte con fotos de evidencia |
| US-19 | Registro de ofertante | specified | No verificable en la landing | `specified/prestamista/cuentas.feature` | Registrarse con correo o cuenta de Google y validar identidad básica |
| US-20 | Inicio de sesión de vendedor/prestamista | specified | No verificable en la landing | `specified/prestamista/cuentas.feature` | Acceder al Dashboard con credenciales correctas; Mostrar error con credenciales incorrectas |
| US-21 | Perfil público del vendedor | specified | No verificable en la landing | `specified/prestamista/perfil.feature` | Configurar y consultar el perfil público |
| US-22 | Registrar libro para venta/alquiler | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Guardar una publicación con sus datos y modalidades |
| US-23 | Editar información del libro | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Editar un libro publicado |
| US-24 | Agregar fotos probatorias | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Cargar entre una y cinco fotos del libro |
| US-25 | Establecer precios | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Habilitar precios según las modalidades elegidas; Rechazar montos negativos |
| US-26 | Establecer tiempo de alquiler | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Configurar y mostrar un plazo predefinido |
| US-27 | Pausar publicación | specified | No verificable en la landing | `specified/prestamista/gestion_libros.feature` | Pausar, ocultar y reactivar una publicación |
| US-28 | Notificación de solicitud | specified | No verificable en la landing | `specified/prestamista/solicitudes.feature` | Recibir alerta con título y modalidad de solicitud |
| US-29 | Validar perfil del solicitante | specified | No verificable en la landing | `specified/prestamista/solicitudes.feature` | Consultar perfil, calificación y reseñas del solicitante |
| US-30 | Aceptar o rechazar solicitud | specified | No verificable en la landing | `specified/prestamista/solicitudes.feature` | Aceptar una solicitud; Rechazar una solicitud |
| US-31 | Confirmar devolución o entrega | specified | No verificable en la landing | `specified/prestamista/operaciones.feature` | Marcar la transacción como finalizada |
| US-32 | Alerta de fin de alquiler | specified | No verificable en la landing | `specified/prestamista/operaciones.feature` | Recibir alerta y resumen de retorno 24 horas antes |
| US-33 | Billetera de ganancias | specified | No verificable en la landing | `specified/prestamista/finanzas.feature` | Consultar saldo e historial y solicitar retiro |
| US-34 | Calificar al prestatario | specified | No verificable en la landing | `specified/prestamista/reputacion.feature` | Calificar el estado de retorno y mostrarlo en el perfil |
| US-35 | Registro de librería | specified | No verificable en la landing | `specified/libreria/cuentas.feature` | Validar datos y registrar una librería; Validar que los campos obligatorios estén completos |
| US-36 | Inicio de sesión de librería | specified | No verificable en la landing | `specified/libreria/cuentas.feature` | Acceder con credenciales correctas; Informar credenciales incorrectas |
| US-37 | Información de librería | specified | No verificable en la landing | `specified/libreria/perfil.feature` | Consultar, modificar y guardar los datos de la librería |
| US-38 | Registrar libros en inventario | specified | No verificable en la landing | `specified/libreria/inventario.feature` | Registrar un libro con cantidad válida; Rechazar una cantidad negativa o inválida |
| US-39 | Actualizar stock | specified | No verificable en la landing | `specified/libreria/inventario.feature` | Actualizar la cantidad disponible; Validar la cantidad de stock |
| US-40 | Actualización automática del stock | specified | No verificable en la landing | `specified/libreria/inventario.feature` | Descontar stock después de una compra confirmada; Impedir una venta superior al stock disponible |
| US-41 | Marcar libro no disponible | specified | No verificable en la landing | `specified/libreria/inventario.feature` | Deshabilitar y volver a habilitar un libro |
| US-42 | Publicar libros de librería | specified | No verificable en la landing | `specified/libreria/catalogo.feature` | Publicar libros disponibles del inventario |
| US-43 | Visibilidad geolocalizada | specified | No verificable en la landing | `specified/libreria/catalogo.feature` | Consultar libros según ubicación y distancia; Actualizar la visibilidad al cambiar la ubicación |
| US-44 | Consultar pedidos | specified | No verificable en la landing | `specified/libreria/pedidos_ventas.feature` | Consultar lista y detalles de pedidos |
| US-45 | Consultar ventas | specified | No verificable en la landing | `specified/libreria/pedidos_ventas.feature` | Consultar ventas y detalles de cada operación |
| US-46 | Solicitar motorizado | specified | No verificable en la landing | `specified/libreria/logistica.feature` | Solicitar entrega para un pedido confirmado |
| US-47 | Estado de entrega para librería | specified | No verificable en la landing | `specified/libreria/logistica.feature` | Consultar y actualizar el estado de entrega |
| US-48 | Comunicación con motorizado | specified | No verificable en la landing | `specified/libreria/logistica.feature` | Enviar mensajes sobre un pedido durante la entrega activa |
| US-49 | Liquidaciones semanales | specified | No verificable en la landing | `specified/libreria/finanzas_soporte.feature` | Consultar liquidación semanal |
| US-50 | Soporte de Bookora para librería | specified | No verificable en la landing | `specified/libreria/finanzas_soporte.feature` | Enviar una solicitud de soporte |

## Cobertura y limitaciones

- Se identifican las 50 HU oficiales (US-01 a US-50), organizadas en estudiante (US-01 a US-18), prestamista (US-19 a US-34) y librería (US-35 a US-50).
- Las 50 HU tienen al menos un escenario en `specified/`. Se añadieron escenarios separados cuando los criterios incluyen resultados distintos, por ejemplo éxito y error.
- No se encontró una HU sin criterios suficientes en la sección 3.2 del informe consultado; por ello no se excluyeron historias. Los pasos se limitan a los criterios enumerados allí y no agregan reglas de campos, mensajes, permisos ni estados no especificados.
- La implementación suministrada solo respalda 5 escenarios de interfaz en `implemented/`: interacción con tres pestañas y dos preguntas frecuentes. Los textos describen una propuesta; no comprueban las funciones del producto móvil.
- Se inspeccionó el contenido HTML, CSS y JS pegado en el requerimiento; no había archivos de implementación separados en el workspace. El reporte PDF aportó las HU y sus criterios. No se ejecutaron pruebas.
