Característica: Cuentas de librerías aliadas
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-35 — Registro de librería aliada
    Como librería aliada
    Quiero registrarme con los datos de mi negocio
    Para ofrecer libros a los usuarios de la plataforma

    @US-35
    Escenario: Validar datos y registrar una librería
      Dado que la librería ingresa sus datos
      Cuando completa los campos obligatorios y envía el registro
      Entonces el sistema confirma el registro exitoso
      Y no permite registrar datos que ya estén registrados

    @US-35
    Escenario: Validar que los campos obligatorios estén completos
      Dado que la librería deja incompleto al menos un campo obligatorio
      Cuando intenta enviar el registro
      Entonces el sistema valida que los campos obligatorios estén completos


  Regla: US-36 — Inicio de sesión de librería aliada
    Como librería aliada
    Quiero iniciar sesión
    Para gestionar mi inventario y ventas

    @US-36
    Escenario: Acceder con credenciales correctas
      Dado que la librería ingresa credenciales correctas
      Cuando inicia sesión
      Entonces el sistema permite el acceso

    @US-36
    Escenario: Informar credenciales incorrectas
      Dado que la librería ingresa credenciales incorrectas
      Cuando intenta iniciar sesión
      Entonces el sistema muestra un mensaje de error
