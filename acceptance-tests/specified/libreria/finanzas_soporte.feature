Característica: Finanzas y soporte de librerías
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-49 — Liquidaciones semanales
    Como librería aliada
    Quiero recibir liquidaciones semanales detalladas
    Para conocer cuánto recibiré por mis ventas

    @US-49
    Escenario: Consultar liquidación semanal
      Dado que el sistema genera la liquidación semanal
      Entonces muestra el total de ventas realizadas
      Y muestra los montos de cada operación
      Y muestra el monto total que recibirá la librería


  Regla: US-50 — Soporte de Bookora para librería
    Como librería aliada
    Quiero comunicarme con soporte
    Para resolver problemas de pedidos, pagos o entregas

    @US-50
    Escenario: Enviar una solicitud de soporte
      Dado que la librería selecciona o indica el motivo del problema
      Cuando describe el inconveniente y envía la solicitud
      Entonces el sistema confirma el envío de la solicitud de soporte
