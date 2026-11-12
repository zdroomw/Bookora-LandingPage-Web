Característica: Historial y soporte para estudiantes
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-17 — Historial de operaciones
    Como estudiante
    Quiero ver mi historial de libros leídos
    Para llevar control de mis lecturas del semestre

    @US-17
    Escenario: Consultar libros comprados y alquilados
      Dado que el usuario abre la sección "Mis Libros"
      Entonces el sistema diferencia visualmente libros comprados y alquilados
      Y muestra la fecha y el monto de cada operación histórica


  Regla: US-18 — Soporte al usuario lector
    Como joven lector
    Quiero contactar a soporte si el libro recibido no coincide con lo publicado
    Para reportar el problema

    @US-18
    Escenario: Enviar un ticket de soporte con fotos de evidencia
      Dado que el usuario abre "Ayuda/Reportar problema"
      Cuando adjunta fotos como prueba y envía el reclamo
      Entonces el sistema confirma la recepción del ticket de soporte
