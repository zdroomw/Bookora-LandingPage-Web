Característica: Pedidos y ventas de librerías
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-44 — Consultar pedidos
    Como librería aliada
    Quiero consultar los pedidos recibidos
    Para gestionar las ventas

    @US-44
    Escenario: Consultar lista y detalles de pedidos
      Dado que la librería abre sus pedidos recibidos
      Entonces el sistema muestra una lista de pedidos
      Y cada pedido indica el libro solicitado y su estado
      Cuando la librería consulta un pedido
      Entonces puede consultar sus detalles


  Regla: US-45 — Consultar ventas
    Como librería aliada
    Quiero consultar mis ventas realizadas
    Para llevar el control de mis operaciones

    @US-45
    Escenario: Consultar ventas y detalles de cada operación
      Dado que la librería abre sus ventas realizadas
      Entonces el sistema muestra el libro vendido, su precio y la fecha
      Cuando consulta una operación
      Entonces puede ver sus detalles
