# Validation Checklist

## Formato

- [ ] El mensaje utiliza `<type>(<scope>): <description>`.
- [ ] El tipo pertenece al listado oficial.
- [ ] El scope es obligatorio, específico y está en minúsculas.
- [ ] La descripción está en inglés.
- [ ] La descripción inicia en minúscula.
- [ ] La descripción utiliza verbo en modo imperativo.
- [ ] La descripción tiene máximo 72 caracteres.
- [ ] La descripción no termina en punto.

## Contenido

- [ ] El commit representa un único propósito.
- [ ] Se revisó `git status`.
- [ ] Se revisó `git diff --staged`.
- [ ] Se ejecutó `git diff --check`.
- [ ] No existen secretos, credenciales, backups ni artefactos generados.
- [ ] Se ejecutaron las pruebas aplicables.
- [ ] El mensaje corresponde exactamente al contenido preparado.

## Cuerpo y pie

- [ ] El cuerpo se incluye cuando se requiere contexto.
- [ ] El cuerpo explica qué cambió y por qué.
- [ ] `BREAKING CHANGE` aparece cuando se rompe compatibilidad.
- [ ] `Refs:` y `Closes:` apuntan a identificadores reales.
- [ ] La coautoría utiliza el formato oficial.

## Historial

- [ ] No se modificaron commits ya publicados.
- [ ] No se utilizó `git push --force` en ramas protegidas.
- [ ] Los commits WIP, fixup o squash fueron limpiados antes del Pull Request.
- [ ] Las reversiones utilizan `revert`.
- [ ] Los commits automáticos están claramente identificados.

## Automatización

- [ ] La configuración de commitlint está versionada.
- [ ] Existe validación mediante hook `commit-msg`.
- [ ] Existe validación adicional en CI.
- [ ] La validación puede ejecutarse dentro de Docker cuando aplica.

## Resultado

- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado.
