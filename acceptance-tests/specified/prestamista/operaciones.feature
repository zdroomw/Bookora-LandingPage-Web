Característica: Operaciones y devoluciones
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-31 — Confirmar devolución o entrega
    Como prestamista o vendedor
    Quiero confirmar que el libro regresó o fue entregado
    Para cerrar la operación

    @US-31
    Escenario: Marcar la transacción como finalizada
      Dado que el libro alquilado regresó o la venta fue entregada
      Cuando el dueño marca la transacción como "Finalizada/Libro Devuelto"
      Entonces se libera la Garantía Retenida del lector si fue alquiler
      Y se liberan los fondos a la billetera del vendedor si fue venta


  Regla: US-32 — Alerta de fin de alquiler
    Como prestamista
    Quiero recibir una notificación antes del fin del alquiler
    Para estar atento al retorno del libro

    @US-32
    Escenario: Recibir alerta y resumen de retorno 24 horas antes
      Dado que el plazo de alquiler vencerá en 24 horas
      Entonces el dueño recibe una alerta
      Y la alerta muestra la dirección y el horario estimado de retorno
