# Upgrade Guide — v1.0.0 a v1.1.0

## Objetivo

Actualizar la versión publicada sin crear una carpeta paralela.

## Ruta que debe conservarse

`standards/software-development/docker-development/`

## Cambios obligatorios

1. Reemplazar los archivos normativos por sus versiones 1.1.0.
2. Sustituir `templates/base/compose.devcontainer.yml`.
3. Incorporar:
   - `compose.yml`
   - `compose.dev.yml`
   - `compose.prod.yml`
   - `Makefile`
   - `scripts/`
4. Actualizar `.devcontainer/devcontainer.json` para cargar la base y el override de desarrollo.
5. Actualizar ejemplos tecnológicos.
6. Regenerar `MANIFEST.sha256`.

## Archivo obsoleto

Debe eliminarse:

`templates/base/compose.devcontainer.yml`

## Control previo al commit

- Ejecutar `git status`.
- Confirmar que solo cambió `docker-development/`.
- Revisar que el archivo obsoleto aparezca eliminado.
- Confirmar que los archivos nuevos aparezcan agregados.
- Revisar que `metadata.yml` indique `1.1.0`.
- Revisar que `CHANGELOG.md` conserve el historial de `1.0.0`.

## Resultado esperado

La carpeta existente queda actualizada a v1.1.0; no se crea otra carpeta de versión.
