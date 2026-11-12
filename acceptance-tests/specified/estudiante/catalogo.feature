Característica: Catálogo de libros para estudiantes
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-03 — Búsqueda de libros
    Como joven lector
    Quiero buscar libros por nombre, autor o género literario
    Para encontrarlos rápidamente

    @US-03
    Escenario: Buscar libros y filtrar por categoría y género
      Dado que el usuario ingresa el nombre de un libro y selecciona una categoría y un género
      Cuando realiza la búsqueda
      Entonces el sistema muestra los libros que coinciden con la búsqueda

    @US-03
    Escenario: Informar que no hay coincidencias
      Dado que la búsqueda no tiene libros coincidentes
      Cuando el sistema presenta los resultados
      Entonces muestra un mensaje informativo


  Regla: US-04 — Precio y distancia de una opción
    Como estudiante universitario
    Quiero conocer el precio y la distancia del prestamista o vendedor
    Para elegir la opción que más me conviene logísticamente

    @US-04
    Escenario: Consultar precio y distancia aproximada
      Dado que el usuario consulta resultados o detalles de un libro
      Entonces el sistema muestra el precio de venta o alquiler
      Y muestra la distancia aproximada del vendedor o prestamista


  Regla: US-05 — Disponibilidad del libro
    Como joven lector
    Quiero saber si un libro está disponible
    Para decidir si puedo comprarlo o alquilarlo

    @US-05
    Escenario: Consultar el estado de disponibilidad
      Dado que el usuario consulta un libro
      Entonces el sistema indica si está disponible o no disponible

    @US-05
    Escenario: Impedir una solicitud para un libro no disponible
      Dado que el libro no está disponible
      Cuando el usuario intenta iniciar una solicitud de transacción
      Entonces el sistema no permite iniciar la solicitud


  Regla: US-06 — Detalles y fotografías del libro
    Como estudiante
    Quiero ver detalles y fotos reales de libros usados
    Para verificar su estado físico

    @US-06
    Escenario: Consultar la información y fotografías de un libro
      Dado que el usuario abre los detalles de un libro
      Entonces el sistema muestra su título, autor y categoría
      Y muestra sinopsis, precio y modalidad de venta o alquiler
      Y permite visualizar fotografías reales subidas por el dueño
