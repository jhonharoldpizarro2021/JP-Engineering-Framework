# Changelog

Todos los cambios relevantes de este estándar serán registrados en este archivo.

## [1.1.0] - 2026-07-24

### Added

- Regla obligatoria de separación entre desarrollo y producción.
- Regla de reproducibilidad universal independiente del equipo anfitrión.
- Arquitectura de capa transversal y capa tecnológica.
- Estructura mínima con `compose.yml`, `compose.dev.yml` y `compose.prod.yml`.
- Soporte para Dockerfile multietapa o Dockerfiles separados.
- Directorios `docker/` y `scripts/`.
- Comandos mínimos mediante `Makefile`.
- Validaciones específicas para desarrollo y producción.
- Plantilla base actualizada.
- Guía de actualización desde v1.0.0.

### Changed

- La separación de entornos cambia de recomendada a obligatoria.
- Se amplían los criterios de aceptación, evidencias y reconstrucción.
- Se actualiza el estado documental a listo para integración.

### Deprecated

- `templates/base/compose.devcontainer.yml` queda reemplazado por:
  - `templates/base/compose.yml`
  - `templates/base/compose.dev.yml`
  - `templates/base/compose.prod.yml`

## [1.0.0] - 2026-07-24

### Added

- Definición del Docker Development Standard.
- Regla obligatoria de contenedor con nombre explícito y estable.
- Apertura de Visual Studio Code dentro del contenedor.
- Identificación del contenedor activo en Docker Desktop.
- Sincronización del código mediante montaje del proyecto.
- Aislamiento de dependencias y herramientas.
- Configuración de extensiones por proyecto.
- Criterios de aceptación y evidencias.
- Plantillas base y ejemplos para WordPress, Laravel y Go.
- Reconocimiento del estándar como pilar de escalabilidad.
