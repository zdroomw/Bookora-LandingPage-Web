# Acceptance Tests de Bookora

## Suites

### `implemented/`

Incluye cinco escenarios de interfaz respaldados por el HTML, CSS y JS entregados: selección de pestañas que muestra u oculta paneles y expansión de preguntas frecuentes. El texto de vistas previas y FAQ es informativo; las pruebas comprueban sus controles, no las operaciones descritas.

### `specified/`

Documenta las 50 HU oficiales mediante 64 escenarios derivados de sus criterios de aceptación. Cada archivo representa un módulo funcional con una sola `Característica`; cada historia se agrupa en su propia `Regla` y sus escenarios conservan la etiqueta `@US-XX`.

- Estudiante: `specified/estudiante/` (US-01 a US-18).
- Prestamista: `specified/prestamista/` (US-19 a US-34).
- Librería: `specified/libreria/` (US-35 a US-50).

Los escenarios especificados describen comportamiento esperado; no afirman que esté implementado ni que haya sido probado. No se añadieron reglas que no estén respaldadas por los criterios del informe.

## Idioma Gherkin

Todos los archivos `.feature` usan palabras clave en español y omiten la directiva `# language: es`. El idioma se configura globalmente en `cucumber.cjs`, dentro del perfil predeterminado mediante `language: 'es'`; la configuración también limita las rutas a `implemented/**/*.feature` y `specified/**/*.feature`.

Se usa [Cucumber.js](https://github.com/cucumber/cucumber-js), declarado como dependencia de desarrollo en `package.json`. Desde esta carpeta se instalan las dependencias con `npm install` y se valida el parseo con `npm run validate:gherkin`.

## Trazabilidad, fuentes y limitaciones

`TRACEABILITY_MATRIX.md` relaciona las 50 HU con el módulo, ruta de feature, escenarios y estado de implementación. Las historias se contrastaron con la sección 3.2 del informe PDF adjunto; el HTML, CSS y JS estaban incluidos en el requerimiento como texto, no como archivos del workspace.

La landing implementa navegación, pestañas de vista previa y preguntas frecuentes, pero no los flujos funcionales del Product Backlog. La suite `implemented/` solo cubre cinco interacciones presentes en el código. La suite `specified/` es documentación del comportamiento esperado. La validación con Cucumber.js se ejecuta en modo `--dry-run`: el parser reconoce los archivos, pero los escenarios no tienen definiciones de pasos (`step definitions`) y no se ejecutan acciones de la aplicación.
