Característica: Reputación del prestatario
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-34 — Calificar al prestatario
    Como prestamista
    Quiero dejar una reseña al lector
    Para ayudar a la comunidad P2P

    @US-34
    Escenario: Calificar el estado de retorno y mostrarlo en el perfil
      Dado que finaliza un alquiler
      Cuando el prestamista califica el estado de retorno
      Entonces el sistema requiere esa calificación mediante estrellas
      Y la calificación se agrega al perfil del lector
