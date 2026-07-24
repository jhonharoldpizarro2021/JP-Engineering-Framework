# Examples

## Válidos

`feat(standards): add Commit Convention Standard v1.0.0`

`fix(docker): correct production compose configuration`

`docs(sprint): close Sprint 5`

`build(dependencies): update Composer dependencies`

`security(auth): prevent token exposure`

`revert(docker): revert production compose configuration`

`chore(release): release v1.0.0`

## Con cuerpo

Encabezado:

`feat(docker): separate development and production environments`

Cuerpo:

`Prevent production from depending on development tools, bind mounts, or debugging settings.`

## Con referencias

`Refs: #42`

`Closes: #42`

## Cambio incompatible

`BREAKING CHANGE: rename the public configuration key`

## Inválidos

`updated files`

`feat: changes`

`fix(general): various fixes`

`test`

`WIP`

`chore(update): updates.`

## Motivos de rechazo

- Falta el scope.
- Tipo no oficial.
- Descripción vaga.
- Punto final.
- Más de 72 caracteres.
- Mensaje temporal.
- Mezcla de cambios no relacionados.
