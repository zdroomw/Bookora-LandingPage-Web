Característica: Catálogo y visibilidad de librerías
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-42 — Publicar libros de librería
    Como librería aliada
    Quiero publicar libros de mi inventario
    Para llegar a nuevos clientes cercanos

    @US-42
    Escenario: Publicar libros disponibles del inventario
      Dado que la librería selecciona libros del inventario para publicarlos
      Cuando se muestran las publicaciones a los usuarios
      Entonces los libros publicados son visibles
      Y cada publicación muestra información básica
      Y solo aparecen como disponibles los libros con stock


  Regla: US-43 — Visibilidad geolocalizada
    Como librería aliada
    Quiero que mis libros aparezcan según la ubicación del usuario
    Para llegar a estudiantes cercanos

    @US-43
    Escenario: Consultar libros según ubicación y distancia
      Dado que la librería tiene una ubicación registrada
      Cuando un usuario consulta libros disponibles según su ubicación
      Entonces el sistema muestra los libros según la ubicación del usuario
      Y muestra la distancia aproximada a la librería

    @US-43
    Escenario: Actualizar la visibilidad al cambiar la ubicación
      Dado que la librería cambia su ubicación registrada
      Cuando el usuario consulta los libros según su ubicación
      Entonces la información se actualiza con la nueva ubicación
