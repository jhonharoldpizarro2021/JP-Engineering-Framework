# Validation Checklist

## Identificación

- [ ] El contenedor principal tiene un nombre explícito.
- [ ] El nombre está relacionado con el proyecto.
- [ ] El nombre no colisiona con otro entorno local.

## Visual Studio Code

- [ ] Existe `.devcontainer/devcontainer.json`.
- [ ] La carpeta se abre dentro del contenedor.
- [ ] La terminal de VS Code se ejecuta en el contenedor.
- [ ] Las extensiones necesarias se instalan desde la configuración del proyecto.

## Docker Desktop

- [ ] El proyecto aparece activo.
- [ ] El contenedor puede identificarse fácilmente.
- [ ] Los servicios asociados aparecen agrupados correctamente.

## Código y volúmenes

- [ ] La raíz del proyecto está montada en el contenedor.
- [ ] Los cambios realizados desde VS Code se reflejan de inmediato.
- [ ] No se requieren copias manuales del código.
- [ ] Los datos persistentes utilizan volúmenes cuando corresponde.

## Dependencias

- [ ] El lenguaje se ejecuta dentro del contenedor.
- [ ] Los gestores de paquetes se ejecutan dentro del contenedor.
- [ ] La base de datos no requiere instalación global en Windows.
- [ ] Las dependencias del proyecto se recuperan de forma reproducible.

## Seguridad

- [ ] Existe `.env.example`.
- [ ] El archivo `.env` real no está versionado.
- [ ] No existen credenciales reales en las plantillas.
- [ ] `.dockerignore` excluye contenido innecesario o sensible.

## Reconstrucción

- [ ] El entorno puede detenerse.
- [ ] El entorno puede reconstruirse.
- [ ] El entorno vuelve a iniciar correctamente.
- [ ] La aplicación responde después de la reconstrucción.

## Evidencias

- [ ] Captura de Docker Desktop.
- [ ] Captura de VS Code conectado al contenedor.
- [ ] Evidencia de terminal.
- [ ] Evidencia de sincronización.
- [ ] Evidencia de ejecución de la aplicación.

## Resultado

- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado para corrección.
