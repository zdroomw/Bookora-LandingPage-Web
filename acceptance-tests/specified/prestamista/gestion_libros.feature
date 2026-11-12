Característica: Gestión de libros y publicaciones
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-22 — Registrar libro para venta o alquiler
    Como prestamista o vendedor
    Quiero registrar un libro y sus modalidades
    Para ofrecerlo en venta, alquiler o ambas

    @US-22
    Escenario: Guardar una publicación con sus datos y modalidades
      Dado que el ofertante ingresa título, autor, editorial y categoría
      Y selecciona "Venta", "Alquiler" o ambas opciones
      Cuando guarda el libro
      Entonces el libro aparece inmediatamente en el catálogo público


  Regla: US-23 — Editar información del libro
    Como vendedor
    Quiero editar la descripción del libro
    Para informar cambios en su estado físico

    @US-23
    Escenario: Editar un libro publicado
      Dado que el vendedor selecciona un libro publicado
      Cuando modifica campos de descripción y estado físico
      Entonces los cambios se reflejan en tiempo real en la tienda


  Regla: US-24 — Fotos probatorias del libro
    Como prestamista
    Quiero subir fotos claras del estado del libro
    Para evitar reclamos falsos de daños

    @US-24
    Escenario: Cargar entre una y cinco fotos del libro
      Dado que el prestamista selecciona fotos desde la cámara o galería
      Cuando carga entre una y cinco fotos para el libro
      Entonces las fotos se muestran en alta calidad en el perfil del libro


  Regla: US-25 — Precios de venta y alquiler
    Como prestamista o vendedor
    Quiero fijar precios
    Para establecer mi margen de ganancia

    @US-25
    Escenario: Habilitar precios según las modalidades elegidas
      Dado que el ofertante activa la modalidad de venta o alquiler
      Entonces se habilita el campo "Precio de Venta" si activó venta
      Y se habilita el campo "Tarifa de Alquiler" si activó alquiler

    @US-25
    Escenario: Rechazar montos negativos
      Dado que el ofertante ingresa un monto negativo
      Cuando intenta guardar el precio
      Entonces el sistema no acepta ese monto


  Regla: US-26 — Plazo del alquiler
    Como prestamista
    Quiero configurar por cuánto tiempo alquilo el libro
    Para comunicar claramente el plazo al lector

    @US-26
    Escenario: Configurar y mostrar un plazo predefinido
      Dado que el prestamista selecciona un plazo predefinido, como una semana o un mes
      Cuando el libro se presenta al lector
      Entonces el plazo de alquiler es claro para el lector


  Regla: US-27 — Pausar una publicación
    Como vendedor
    Quiero pausar temporalmente una publicación
    Para indicar que no puedo entregar el libro

    @US-27
    Escenario: Pausar, ocultar y reactivar una publicación
      Dado que el vendedor cambia el interruptor de la publicación a "No Disponible"
      Entonces el libro se oculta de las búsquedas de lectores
      Cuando el vendedor reactiva la publicación con un toque
      Entonces el libro puede volver a estar disponible
