# Implementation Manifest

## Ruta oficial

`standards/software-development/commit-convention-standard/`

## Archivos del estándar

- `STANDARD.md`
- `README.md`
- `CHANGELOG.md`
- `metadata.yml`
- `VALIDATION-CHECKLIST.md`
- `IMPLEMENTATION-MANIFEST.md`
- `DECISIONS-REGISTER.md`
- `EXAMPLES.md`
- `IDEAS-BACKLOG.md`
- `templates/commitlint.config.cjs`
- `templates/husky/commit-msg`
- `templates/package-json.fragment.json`
- `templates/github-actions/commitlint.yml`
- `templates/COMMIT_MESSAGE_TEMPLATE.txt`
- `MANIFEST.sha256`

## Integración

1. Copiar la carpeta completa a `standards/software-development/`.
2. Confirmar que no quede anidada una carpeta adicional.
3. Revisar `STANDARD.md`.
4. Revisar las plantillas.
5. Ejecutar la checklist.
6. Revisar `git status` y `git diff --staged`.
7. Ejecutar `git diff --check`.
8. Crear un único commit para el paquete.
9. Hacer push.
10. Guardar evidencia y actualizar el árbol del Sprint 5.

## Implementación futura en proyectos

Las plantillas de commitlint y Husky deberán adaptarse al gestor de paquetes y estructura real del proyecto antes de utilizarse.
