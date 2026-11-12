Característica: Cuentas de prestamistas y vendedores
  Agrupa las historias de usuario de este módulo funcional.

  Regla: US-19 — Registro de ofertante
    Como prestamista o vendedor
    Quiero registrarme en la aplicación
    Para monetizar libros que ya no utilizo

    @US-19
    Escenario: Registrarse con correo o cuenta de Google y validar identidad básica
      Dado que el ofertante inicia el registro con correo o cuenta de Google
      Cuando completa el proceso de registro
      Entonces el sistema valida su identidad básica


  Regla: US-20 — Inicio de sesión de vendedor o prestamista
    Como prestamista o vendedor
    Quiero iniciar sesión
    Para gestionar publicaciones, ventas y alquileres activos

    @US-20
    Escenario: Acceder al Dashboard con credenciales correctas
      Dado que el ofertante ingresa credenciales correctas
      Cuando inicia sesión
      Entonces el sistema lo redirige al Dashboard del vendedor

    @US-20
    Escenario: Mostrar error con credenciales incorrectas
      Dado que el ofertante ingresa datos incorrectos
      Cuando intenta iniciar sesión
      Entonces el sistema muestra un mensaje de error
