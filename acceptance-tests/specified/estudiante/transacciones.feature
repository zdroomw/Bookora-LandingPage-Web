Característica: Transacciones y contacto
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-10 — Compra o alquiler de libros
    Como estudiante o joven lector
    Quiero elegir entre comprar un libro de segunda mano o alquilarlo
    Para ajustarme a mi presupuesto

    @US-10
    Escenario: Confirmar una operación en una modalidad disponible
      Dado que el libro está disponible para venta, alquiler o ambas modalidades
      Entonces el sistema muestra si está disponible para venta, alquiler o ambas
      Cuando el estudiante selecciona una modalidad disponible
      Entonces el sistema muestra el precio correspondiente
      Y permite confirmar la operación


  Regla: US-11 — Métodos de pago y Garantía Retenida
    Como joven lector
    Quiero pagar con tarjeta o billetera virtual y aceptar el hold bancario
    Para alquilar de forma segura

    @US-11
    Escenario: Consultar opciones y registrar un pago exitoso
      Dado que el usuario está realizando una operación
      Entonces el sistema muestra las opciones de pago disponibles
      Cuando el pago se registra exitosamente
      Entonces el sistema confirma el registro del pago

    @US-11
    Escenario: Aplicar Garantía Retenida en un alquiler
      Dado que el usuario realiza un alquiler
      Cuando se procesa la operación
      Entonces el sistema explica y aplica la Garantía Retenida


  Regla: US-12 — Contacto con el dueño del libro
    Como estudiante
    Quiero chatear con el vendedor o prestamista
    Para resolver dudas sobre la edición antes del envío

    @US-12
    Escenario: Enviar y recibir mensajes en el chat temporal de una solicitud
      Dado que el estudiante realizó una solicitud
      Cuando abre el chat temporal seguro dentro de la aplicación
      Entonces puede enviar mensajes de texto
      Y puede recibir mensajes de texto


  Regla: US-14 — Confirmación de operación
    Como estudiante
    Quiero recibir una boleta digital
    Para tener constancia del dinero gastado

    @US-14
    Escenario: Consultar la confirmación y boleta de la operación
      Dado que una compra o alquiler se completó
      Entonces el sistema muestra una pantalla de éxito
      Y la boleta indica el libro, la modalidad y el importe exacto cobrado o retenido
