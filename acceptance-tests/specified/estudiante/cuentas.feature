Característica: Cuentas de estudiantes y lectores
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-01 — Registro del estudiante o joven lector
    Como estudiante universitario o joven lector
    Quiero registrarme con mi correo electrónico
    Para buscar los libros que necesito

    @US-01
    Escenario: Registrar una cuenta con correo válido no registrado
      Dado que el usuario ingresa un correo electrónico con formato válido que no está registrado
      Cuando solicita crear su cuenta
      Entonces el sistema permite crear la cuenta
      Y muestra un mensaje de confirmación

    @US-01
    Escenario: Validar el formato del correo electrónico
      Dado que el usuario ingresa un correo electrónico con formato inválido
      Cuando intenta registrarse
      Entonces el sistema valida el formato del correo


  Regla: US-02 — Inicio de sesión del estudiante o joven lector
    Como estudiante o joven lector
    Quiero iniciar sesión
    Para realizar acciones dentro de la aplicación

    @US-02
    Escenario: Acceder con credenciales correctas
      Dado que el usuario ingresa credenciales correctas
      Cuando inicia sesión
      Entonces el sistema permite el acceso

    @US-02
    Escenario: Informar credenciales incorrectas
      Dado que el usuario ingresa credenciales incorrectas
      Cuando intenta iniciar sesión
      Entonces el sistema muestra un mensaje de error
