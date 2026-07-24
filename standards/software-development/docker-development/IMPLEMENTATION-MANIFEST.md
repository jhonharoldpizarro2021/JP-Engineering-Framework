# Implementation Manifest

## Objetivo

Registrar los archivos de Docker Development Standard v1.1.0 y facilitar su integración.

## Ruta oficial

`standards/software-development/docker-development/`

## Archivos normativos

- `STANDARD.md`
- `README.md`
- `CHANGELOG.md`
- `metadata.yml`

## Archivos de soporte

- `VALIDATION-CHECKLIST.md`
- `UPGRADE-GUIDE.md`
- `IDEAS-BACKLOG.md`
- `IMPLEMENTATION-MANIFEST.md`
- `MANIFEST.sha256`

## Plantilla transversal

- `templates/base/Dockerfile`
- `templates/base/compose.yml`
- `templates/base/compose.dev.yml`
- `templates/base/compose.prod.yml`
- `templates/base/.devcontainer/devcontainer.json`
- `templates/base/.dockerignore`
- `templates/base/.env.example`
- `templates/base/Makefile`
- `templates/base/scripts/install.sh`
- `templates/base/scripts/init.sh`
- `templates/base/scripts/migrate.sh`
- `templates/base/scripts/start.sh`
- `templates/base/scripts/test.sh`

## Ejemplos tecnológicos

- `examples/README.md`
- `examples/wordpress/.devcontainer/devcontainer.json`
- `examples/laravel/.devcontainer/devcontainer.json`
- `examples/go/.devcontainer/devcontainer.json`
- `examples/node/.devcontainer/devcontainer.json`
- `examples/php/.devcontainer/devcontainer.json`

## Integración

1. Realizar copia de seguridad local de la carpeta vigente.
2. Sustituir el contenido de `docker-development/` por el paquete v1.1.0.
3. Eliminar `templates/base/compose.devcontainer.yml`, porque fue reemplazado.
4. Confirmar que no quede una carpeta adicional `docker-development-standard-v1.1.0` dentro de la ruta oficial.
5. Revisar `STANDARD.md`, plantillas y ejemplos.
6. Ejecutar `VALIDATION-CHECKLIST.md`.
7. Revisar `git status` y el diff.
8. Crear un commit exclusivo para la actualización.
9. Hacer push conforme al Git Workflow Standard.

## Archivos globales

No se incluyen modificaciones al README principal, índice general, changelog global ni acta del Sprint 4. Esos cambios se gestionarán en sus tareas correspondientes.
