Característica: Finanzas del prestamista o vendedor
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-33 — Billetera de ganancias
    Como prestamista o vendedor
    Quiero consultar mis ganancias
    Para retirarlas a mi banco

    @US-33
    Escenario: Consultar saldo e historial y solicitar retiro
      Dado que el vendedor abre la sección "Billetera/Wallet"
      Entonces ve el saldo disponible, retenido y el historial detallado de ingresos
      Cuando solicita retirar fondos a una cuenta bancaria
      Entonces el sistema permite solicitar el retiro
