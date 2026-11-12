Característica: Logística de librerías
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-46 — Solicitar motorizado
    Como librería aliada
    Quiero solicitar un motorizado desde Bookora
    Para realizar entregas sin personal propio

    @US-46
    Escenario: Solicitar entrega para un pedido confirmado
      Dado que existe un pedido confirmado
      Cuando la librería solicita un motorizado e ingresa la dirección de entrega
      Entonces el sistema confirma la solicitud del servicio
      Y asocia el motorizado al pedido cuando sea asignado


  Regla: US-47 — Estado de entrega para la librería
    Como librería aliada
    Quiero conocer el estado de entrega de un pedido
    Para saber cuándo llegará al cliente

    @US-47
    Escenario: Consultar y actualizar el estado de entrega
      Dado que la librería consulta un pedido desde su cuenta
      Entonces el sistema muestra si está pendiente, en camino o entregado
      Cuando cambia el estado del pedido
      Entonces el estado de entrega se actualiza


  Regla: US-48 — Comunicación con el motorizado
    Como librería aliada
    Quiero comunicarme con el motorizado
    Para coordinar problemas de entrega

    @US-48
    Escenario: Enviar mensajes sobre un pedido durante la entrega activa
      Dado que hay un motorizado asignado y la entrega está activa
      Cuando la librería abre la comunicación e identifica el pedido
      Entonces puede contactar al motorizado
      Y puede enviar mensajes relacionados con el pedido
