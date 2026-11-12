Característica: Inventario de librerías
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-38 — Registrar libros en inventario
    Como librería aliada
    Quiero registrar libros y cantidades
    Para mostrar mi inventario en Bookora

    @US-38
    Escenario: Registrar un libro con cantidad válida
      Dado que la librería ingresa título, autor, categoría y cantidad válida
      Cuando guarda el libro
      Entonces el libro aparece en el inventario

    @US-38
    Escenario: Rechazar una cantidad negativa o inválida
      Dado que la librería ingresa una cantidad negativa o inválida
      Cuando intenta guardar el libro
      Entonces el sistema no permite registrar esa cantidad


  Regla: US-39 — Actualizar stock
    Como librería aliada
    Quiero actualizar la cantidad disponible de cada libro
    Para mantener sincronizado mi inventario

    @US-39
    Escenario: Actualizar la cantidad disponible
      Dado que la librería selecciona un libro del inventario
      Cuando ingresa una cantidad válida y guarda
      Entonces el nuevo stock se muestra inmediatamente

    @US-39
    Escenario: Validar la cantidad de stock
      Dado que la librería ingresa una cantidad inválida
      Cuando intenta guardar el cambio
      Entonces el sistema valida la cantidad ingresada


  Regla: US-40 — Actualización automática del stock
    Como librería aliada
    Quiero que el stock se actualice al realizar una compra
    Para evitar la sobreventa

    @US-40
    Escenario: Descontar stock después de una compra confirmada
      Dado que se confirma una compra de un libro
      Cuando el sistema actualiza el inventario
      Entonces disminuye automáticamente la cantidad disponible
      Y el nuevo stock se refleja en el inventario

    @US-40
    Escenario: Impedir una venta superior al stock disponible
      Dado que la cantidad solicitada supera el stock disponible
      Cuando se intenta confirmar la compra
      Entonces el sistema no permite vender más unidades que las disponibles


  Regla: US-41 — Marcar libro no disponible
    Como librería aliada
    Quiero marcar un libro como no disponible
    Para evitar solicitudes sin stock

    @US-41
    Escenario: Deshabilitar y volver a habilitar un libro
      Dado que la librería cambia el estado del libro a no disponible
      Entonces ese estado se muestra en la publicación
      Y los usuarios no pueden realizar una solicitud
      Cuando la librería vuelve a habilitar el libro con un toque al tener stock
      Entonces el libro vuelve a estar habilitado
