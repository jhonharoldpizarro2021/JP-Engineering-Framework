# Docker Development Standard

Paquete de actualización del **Docker Development Standard v1.1.0** del **JP Engineering Framework**.

## Estado

- Estándar funcional: **aprobado**
- Nivel de cumplimiento: **obligatorio**
- Extracción de conocimiento: **cerrada**
- Materialización documental: **completada**
- Integración al repositorio: **pendiente**

## Objetivo

Garantizar que todos los proyectos del Framework dispongan de entornos Docker:

- aislados;
- reproducibles;
- identificables;
- portables;
- consistentes;
- independientes de instalaciones globales en Windows;
- claramente separados entre desarrollo y producción.

## Cambio principal de la versión 1.1.0

La separación entre desarrollo y producción deja de ser recomendada y pasa a ser obligatoria.

La configuración Docker deberá incluir una capa transversal independiente del lenguaje y una capa tecnológica específica. Docker deberá crear los runtimes, dependencias, servicios, extensiones, configuraciones, permisos y recursos necesarios para ejecutar el proyecto de forma equivalente en cualquier máquina compatible.

## Estructura transversal mínima

- `compose.yml`
- `compose.dev.yml`
- `compose.prod.yml`
- `Dockerfile` multietapa, o `Dockerfile.dev` y `Dockerfile.prod`
- `.env.example`
- `.dockerignore`
- `.devcontainer/`
- `docker/`, cuando aplique
- `scripts/`
- `Makefile`

## Comandos mínimos

- `make build`
- `make up`
- `make down`
- `make restart`
- `make logs`
- `make shell`
- `make install`
- `make test`

## Contenido del paquete

- `STANDARD.md`
- `README.md`
- `CHANGELOG.md`
- `metadata.yml`
- `IMPLEMENTATION-MANIFEST.md`
- `VALIDATION-CHECKLIST.md`
- `UPGRADE-GUIDE.md`
- `IDEAS-BACKLOG.md`
- `templates/base/`
- `examples/`
- `MANIFEST.sha256`

## Ruta oficial

`standards/software-development/docker-development/`

El contenido del paquete debe reemplazar la versión anterior conservando la misma carpeta del estándar.
