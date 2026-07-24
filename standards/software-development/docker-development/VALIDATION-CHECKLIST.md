# Validation Checklist

## Identificación

- [ ] El contenedor principal tiene un nombre explícito.
- [ ] El nombre está relacionado con el proyecto.
- [ ] El nombre no colisiona con otro entorno local.

## Estructura

- [ ] Existe `compose.yml`.
- [ ] Existe `compose.dev.yml`.
- [ ] Existe `compose.prod.yml`.
- [ ] Existe Dockerfile multietapa o Dockerfiles separados.
- [ ] Existe `.devcontainer/devcontainer.json`.
- [ ] Existe `.dockerignore`.
- [ ] Existe `.env.example`.
- [ ] Existe `Makefile`.
- [ ] Existe `scripts/`.

## Visual Studio Code

- [ ] La carpeta se abre dentro del contenedor.
- [ ] La terminal se ejecuta dentro del contenedor.
- [ ] Las extensiones necesarias se instalan desde el proyecto.

## Desarrollo

- [ ] La raíz del proyecto está montada.
- [ ] Los cambios se reflejan inmediatamente.
- [ ] Hot reload funciona cuando aplica.
- [ ] Las herramientas de depuración están limitadas a desarrollo.
- [ ] Las dependencias de desarrollo se instalan dentro del contenedor.

## Producción

- [ ] La imagen de producción se construye independientemente.
- [ ] Producción no depende de `compose.dev.yml`.
- [ ] Producción no utiliza bind mounts del código fuente.
- [ ] Producción no contiene herramientas de depuración.
- [ ] Producción instala únicamente dependencias necesarias.
- [ ] El proceso se ejecuta con usuario no privilegiado cuando es viable.
- [ ] Se aplican controles de seguridad definidos por el proyecto.

## Reproducibilidad

- [ ] Las imágenes y runtimes tienen versiones explícitas.
- [ ] Los lockfiles están versionados.
- [ ] Las dependencias se recuperan dentro de Docker.
- [ ] Los directorios y permisos se crean automáticamente.
- [ ] Las bases de datos, migraciones y datos iniciales se automatizan cuando aplican.
- [ ] No existen dependencias ocultas en Windows.
- [ ] Una persona nueva puede reconstruir el entorno con la documentación.

## Servicios

- [ ] Los servicios críticos tienen healthchecks cuando corresponde.
- [ ] Las dependencias entre servicios están declaradas.
- [ ] Los datos persistentes utilizan volúmenes definidos.
- [ ] Desarrollo y producción usan estrategias de datos apropiadas.

## Seguridad

- [ ] `.env.example` no contiene secretos.
- [ ] `.env` real no está versionado.
- [ ] `.dockerignore` excluye contenido sensible o innecesario.
- [ ] No existen credenciales en Dockerfiles, Compose o scripts.

## Comandos mínimos

- [ ] `make build`
- [ ] `make up`
- [ ] `make down`
- [ ] `make restart`
- [ ] `make logs`
- [ ] `make shell`
- [ ] `make install`
- [ ] `make test`

## Reconstrucción

- [ ] Desarrollo puede detenerse y reconstruirse.
- [ ] Producción puede construirse sin depender del entorno de desarrollo.
- [ ] La aplicación responde después de reconstruirse.
- [ ] Los healthchecks finalizan correctamente cuando aplican.

## Evidencias

- [ ] Captura de Docker Desktop.
- [ ] Captura de VS Code conectado.
- [ ] Evidencia de terminal.
- [ ] Evidencia de sincronización.
- [ ] Evidencia de aplicación en desarrollo.
- [ ] Evidencia de build de producción.
- [ ] Evidencia de comandos mínimos.
- [ ] Evidencia de pruebas.

## Resultado

- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado para corrección.
