Característica: Interacciones y confianza del lector
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-07 — Libros favoritos
    Como joven lector
    Quiero guardar libros en favoritos
    Para alquilarlos o comprarlos en el futuro

    @US-07
    Escenario: Agregar y retirar un libro de favoritos
      Dado que el usuario consulta un libro
      Cuando lo agrega a favoritos
      Entonces el libro aparece en la sección dedicada a favoritos
      Cuando lo elimina de favoritos
      Entonces el libro deja de aparecer entre los libros guardados


  Regla: US-08 — Reseñas del vendedor o prestamista
    Como estudiante
    Quiero conocer reseñas de otros usuarios
    Para tomar una decisión segura

    @US-08
    Escenario: Consultar reseñas y promedio del vendedor
      Dado que el usuario consulta el perfil de un vendedor o prestamista
      Entonces puede visualizar las reseñas asociadas a ese perfil
      Y puede consultar la calificación promedio mediante estrellas


  Regla: US-09 — Calificación del lector
    Como joven lector
    Quiero construir una buena calificación en mi perfil
    Para que los prestamistas confíen en alquilarme sus libros

    @US-09
    Escenario: Recibir y mostrar una calificación después de devolver un libro
      Dado que el lector devuelve un libro alquilado
      Cuando recibe una calificación mediante estrellas
      Entonces la calificación se muestra en su perfil público
      Y se actualiza tras cada operación
