Característica: Solicitudes de transacción
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-28 — Notificación de solicitud
    Como prestamista o vendedor
    Quiero recibir una notificación cuando soliciten mi libro
    Para conocer la solicitud de inmediato

    @US-28
    Escenario: Recibir alerta con título y modalidad de solicitud
      Dado que un usuario solicita comprar o alquilar un libro
      Entonces el dueño recibe una notificación push inmediata en el celular
      Y la notificación indica el título del libro y si es compra o alquiler


  Regla: US-29 — Validar perfil del solicitante
    Como prestamista
    Quiero ver la calificación del usuario solicitante
    Para evaluar el cuidado de sus libros

    @US-29
    Escenario: Consultar perfil, calificación y reseñas del solicitante
      Dado que el prestamista revisa una solicitud
      Entonces el sistema muestra el perfil público del solicitante
      Y destaca su calificación promedio y las reseñas de otros dueños


  Regla: US-30 — Aceptar o rechazar una solicitud
    Como prestamista
    Quiero decidir si acepto un alquiler
    Para gestionar las solicitudes recibidas

    @US-30
    Escenario: Aceptar una solicitud
      Dado que la bandeja de entrada muestra una solicitud
      Cuando el prestamista la acepta
      Entonces se activa la coordinación con el motorizado
      Y el solicitante recibe la decisión final

    @US-30
    Escenario: Rechazar una solicitud
      Dado que la bandeja de entrada muestra una solicitud
      Cuando el prestamista la rechaza
      Entonces el solicitante recibe la decisión final
