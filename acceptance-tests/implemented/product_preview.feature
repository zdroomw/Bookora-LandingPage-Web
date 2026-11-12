Característica: Interacciones verificables de la landing page
  La suite comprueba únicamente interacciones que existen en el código de la landing page.

  Regla: Selección de pestañas de vistas previas
    @US-03 @alcance_informativo
    Escenario: Mostrar la pestaña de búsqueda seleccionada inicialmente
      Dado que el visitante abre la sección "Explora la app"
      Entonces la pestaña "Buscar libros" está seleccionada
      Y el panel de búsqueda está visible
    @US-03 @US-10 @US-11 @US-13 @alcance_informativo
    Escenario: Mostrar el panel de compra o alquiler al seleccionar su pestaña
      Dado que el panel de búsqueda está visible
      Cuando el visitante selecciona la pestaña "Comprar o alquilar"
      Entonces esa pestaña queda seleccionada
      Y su panel queda visible
      Y el panel de búsqueda queda oculto
    @US-03 @US-10 @US-11 @US-13 @alcance_informativo
    Escenario: Mostrar el panel de seguimiento al seleccionar su pestaña
      Dado que el panel de compra o alquiler está visible
      Cuando el visitante selecciona la pestaña "Seguir pedido"
      Entonces esa pestaña queda seleccionada
      Y su panel queda visible
      Y el panel de compra o alquiler queda oculto

  Regla: Acordeón de preguntas frecuentes
    @US-10 @US-11 @US-13 @alcance_informativo
    Escenario: Expandir las preguntas sobre compra, alquiler y Garantía Retenida
      Dado que el visitante llega a la sección "Preguntas frecuentes"
      Cuando abre la pregunta sobre comprar y alquilar libros
      Entonces se muestra su respuesta informativa
      Cuando abre la pregunta sobre la Garantía Retenida
      Entonces se muestra su respuesta informativa
      Y la respuesta anterior queda cerrada
    @US-10 @US-11 @US-13 @alcance_informativo
    Escenario: Expandir la pregunta sobre la entrega
      Dado que el visitante llega a la sección "Preguntas frecuentes"
      Cuando abre la pregunta sobre cómo se realiza la entrega de un libro
      Entonces se muestra su respuesta informativa
