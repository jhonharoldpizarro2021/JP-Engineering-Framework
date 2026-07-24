# Validation Checklist

## Seguridad
- [ ] `.env` real está ignorado.
- [ ] `.env.example` está versionado.
- [ ] No existen secretos, tokens ni credenciales reales.
- [ ] Claves y certificados privados están ignorados.

## Docker y herramientas
- [ ] Dockerfile está versionado.
- [ ] Compose está versionado.
- [ ] `.devcontainer/` está versionado cuando aplica.
- [ ] `.vscode/` compartido permanece versionado.
- [ ] Scripts de arranque e inicialización están versionados.

## Dependencias
- [ ] `node_modules/` está ignorado.
- [ ] `vendor/` está ignorado.
- [ ] Lockfiles permanecen versionados.
- [ ] Las dependencias pueden reconstruirse.

## Pruebas y calidad
- [ ] Código y configuración de pruebas están versionados.
- [ ] Resultados de Playwright y PHPUnit están ignorados.
- [ ] Capturas, videos, cobertura y reportes están ignorados.

## Datos
- [ ] Backups están ignorados.
- [ ] Datos de producción están ignorados.
- [ ] Migraciones, seeds, fixtures y SQL controlado están versionados.

## Tecnología
- [ ] WordPress conserva `wp-content/`.
- [ ] Laravel conserva la estructura necesaria de `storage/`.
- [ ] Go conserva `go.mod` y `go.sum`.
- [ ] Node conserva manifiesto y lockfile.
- [ ] PHP conserva `composer.json` y `composer.lock`.

## Validación Git
- [ ] Se ejecutó `git status`.
- [ ] Se ejecutó `git check-ignore`.
- [ ] No aparecen archivos inesperados.
- [ ] El proyecto puede clonarse y reconstruirse.

## Resultado
- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado para corrección.
