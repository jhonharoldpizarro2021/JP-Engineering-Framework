# Implementation Manifest

## Estado

Paquete candidato para revisión local. No integrar antes de la aprobación final.

## Ruta oficial

`standards/software-development/branch-naming-standard/`

## Archivos

- `STANDARD.md`
- `README.md`
- `CHANGELOG.md`
- `metadata.yml`
- `VALIDATION-CHECKLIST.md`
- `IMPLEMENTATION-MANIFEST.md`
- `DECISIONS-REGISTER.md`
- `EXAMPLES.md`
- `REVIEW-NOTES.md`
- `IDEAS-BACKLOG.md`
- `templates/branch-name-regex.txt`
- `templates/scripts/validate-branch-name.sh`
- `templates/scripts/validate-branch-name.ps1`
- `templates/git-hooks/pre-push`
- `templates/github-actions/branch-name.yml`
- `MANIFEST.sha256`

## Integración después de aprobar

1. Copiar el contenido interno del paquete a la ruta oficial.
2. Confirmar que no quede una carpeta de versión anidada.
3. Ejecutar la checklist.
4. Revisar `git status`.
5. Revisar `git diff --staged`.
6. Ejecutar `git diff --check`.
7. Crear un único commit.
8. Hacer push.
9. Guardar evidencia.
10. Actualizar el árbol del Sprint 5.

## Commit propuesto

`feat(standards): add Branch Naming Standard v1.0.0`
