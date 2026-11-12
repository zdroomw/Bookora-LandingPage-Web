Característica: Seguimiento y devoluciones
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-13 — Seguimiento del pedido
    Como joven lector
    Quiero ver el seguimiento del motorizado
    Para conocer el estado y tiempo estimado de llegada del libro

    @US-13
    Escenario: Consultar cambios de estado del pedido
      Dado que el pedido está siendo entregado
      Entonces el sistema muestra el estado actual en tiempo real mediante tracking GPS
      Y permite visualizar los estados "En camino", "Cerca" y "Entregado"
      Y el estudiante recibe notificaciones push en cada cambio de estado


  Regla: US-15 — Fecha límite de devolución
    Como estudiante universitario
    Quiero recibir alertas sobre la fecha límite de devolución
    Para no perder el dinero de mi garantía retenida

    @US-15
    Escenario: Consultar fecha límite y recibir recordatorios
      Dado que el usuario tiene un libro alquilado
      Entonces el perfil muestra la fecha límite de devolución
      Y el sistema envía recordatorios push automáticos 48 y 24 horas antes del vencimiento
