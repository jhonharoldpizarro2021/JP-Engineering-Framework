# Branch Naming Standard

## 1. Identificación

- **ID:** JPEF-STD-BRANCH-NAMING-001
- **Versión:** 1.0.0
- **Estado:** Candidato para aprobación local
- **Nivel de cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Sprint:** 5
- **Fecha de materialización:** 2026-07-24

## 2. Propósito

Definir una convención uniforme para crear, identificar, validar, administrar y eliminar ramas dentro del JP Engineering Framework.

## 3. Alcance

Aplica a todos los repositorios y tecnologías del Framework.

## 4. Formato obligatorio

Formato general:

`<type>/<short-description>`

Cuando exista ticket o issue:

`<type>/<issue-id>-<short-description>`

Ejemplos:

- `feature/42-add-user-authentication`
- `fix/87-correct-payment-validation`
- `docs/update-docker-standard`

## 5. Reglas de escritura

Todo nombre de rama deberá:

- escribirse en inglés;
- escribirse en minúsculas;
- separar palabras mediante guiones;
- utilizar únicamente letras minúsculas, números, guiones y una barra después del prefijo;
- representar un único propósito;
- ser breve, específico y comprensible;
- evitar espacios, tildes, mayúsculas y guiones bajos;
- evitar barras adicionales dentro de la descripción;
- evitar guiones consecutivos;
- evitar terminar en guion o barra;
- tener un máximo recomendado de 80 caracteres.

No se permitirán nombres vagos como:

- `test`
- `changes`
- `new-branch`
- `my-work`
- `temp`
- `misc`

## 6. Prefijos oficiales

- `feature/`
- `fix/`
- `hotfix/`
- `release/`
- `docs/`
- `refactor/`
- `test/`
- `build/`
- `ci/`
- `chore/`
- `security/`

No se permitirán prefijos improvisados sin una ampliación aprobada del estándar.

## 7. Ramas protegidas

`main` y cualquier otra rama protegida definida por el proyecto:

- no utilizarán prefijo;
- no recibirán commits directos;
- solo se actualizarán mediante el flujo aprobado de Pull Request;
- no podrán eliminarse mediante automatizaciones de limpieza;
- deberán aplicar las protecciones definidas por el repositorio.

## 8. Creación de ramas

Toda rama de trabajo deberá:

- crearse desde la rama base definida por el flujo del proyecto;
- partir de una copia local actualizada;
- crearse con el árbol de trabajo limpio;
- representar un único ticket, corrección o propósito;
- evitar depender de cambios locales no confirmados;
- evitar partir de una rama desactualizada o incorrecta.

## 9. Relación con tickets e issues

Cuando exista un ticket o issue:

- su identificador deberá incluirse inmediatamente después del prefijo;
- deberá corresponder a un identificador real;
- no deberá inventarse para cumplir formalmente la convención.

Ejemplo:

`feature/123-add-order-history`

Los cambios pequeños o internos podrán omitir el identificador cuando no exista ticket.

## 10. Ramas de release

Formato:

`release/v1.2.0`

Reglas:

- la versión deberá seguir Semantic Versioning;
- solo incluirá preparación, estabilización, correcciones y documentación de la publicación;
- no incorporará funcionalidades nuevas fuera del alcance aprobado;
- el nombre deberá coincidir con la versión que se pretende publicar;
- la rama se eliminará después de completar la publicación y propagar los cambios necesarios.

## 11. Ramas hotfix

Formato:

`hotfix/123-fix-production-login`

Reglas:

- solo se utilizarán para incidentes críticos en producción;
- partirán de la rama productiva vigente;
- contendrán un cambio mínimo, urgente y verificable;
- deberán someterse a pruebas y revisión;
- después de integrarse, el cambio deberá propagarse a las ramas activas correspondientes;
- deberán eliminarse al finalizar la integración.

## 12. Sincronización y actualización

Las ramas deberán mantenerse sincronizadas conforme al Git Workflow Standard.

Antes de abrir o actualizar un Pull Request deberá:

- actualizarse la referencia de la rama base;
- resolver conflictos de manera consciente;
- evitar merges innecesarios cuando el flujo aprobado permita `rebase`;
- no reescribir trabajo compartido sin coordinación;
- conservar un historial comprensible.

## 13. Renombrado de ramas

Una rama podrá renombrarse libremente antes de publicarse.

Después de publicarse:

- el renombrado deberá justificarse;
- deberá comunicarse a quienes colaboran;
- deberá actualizarse la referencia remota;
- deberá corregirse cualquier Pull Request, pipeline o enlace dependiente;
- no deberá utilizarse para ocultar cambios o evadir trazabilidad.

Las ramas protegidas no deberán renombrarse sin una decisión formal del proyecto.

## 14. Vida útil y eliminación

Las ramas de trabajo serán temporales.

Deberán:

- eliminarse local y remotamente después de integrarse;
- no reutilizarse para trabajo nuevo;
- identificarse y eliminarse cuando hayan sido abandonadas;
- conservar el historial permanente mediante commits, Pull Requests, tags y releases.

La eliminación solo procederá después de confirmar que:

- el Pull Request fue integrado o cerrado;
- no existen commits únicos que deban conservarse;
- no hay despliegues o procesos que dependan de la rama.

## 15. Ramas abandonadas y obsoletas

Una rama podrá considerarse obsoleta cuando:

- el ticket fue cancelado;
- el trabajo fue reemplazado;
- el Pull Request fue cerrado definitivamente;
- no existe actividad durante el periodo definido por el proyecto;
- el responsable confirma que no debe conservarse.

La eliminación de ramas obsoletas deberá evitar ramas protegidas, releases activas y hotfixes en curso.

## 16. Validación automática

Todo repositorio deberá poder validar los nombres de ramas mediante una configuración versionada.

La validación deberá comprobar:

- prefijo oficial;
- formato permitido;
- minúsculas;
- kebab-case;
- ticket opcional válido;
- formato especial de release;
- ausencia de caracteres prohibidos;
- longitud máxima definida;
- excepción para ramas protegidas aprobadas.

La validación deberá ejecutarse:

- localmente antes del push, mediante hook o script equivalente;
- en CI o en la plataforma;
- dentro de Docker cuando el proyecto requiera herramientas encapsuladas.

## 17. Expresión regular base

Expresión regular propuesta:

`^(main|release/v[0-9]+\.[0-9]+\.[0-9]+|(?:feature|fix|hotfix|docs|refactor|test|build|ci|chore|security)/(?:[0-9]+-)?[a-z0-9]+(?:-[a-z0-9]+)*)$`

Los proyectos podrán extender la lista de ramas protegidas, pero no debilitar las reglas de nombres de trabajo.

## 18. Gobernanza

Toda modificación al estándar deberá:

- justificarse;
- documentarse;
- preservar compatibilidad con el Git Workflow Standard;
- evitar prefijos redundantes;
- actualizar plantillas y validaciones;
- aprobarse mediante el gobierno del Framework.

## 19. Excepciones

Toda excepción deberá:

- estar técnicamente justificada;
- limitarse al repositorio o flujo que la requiera;
- identificar riesgos;
- conservar trazabilidad;
- no permitir nombres ambiguos o inseguros;
- ser aprobada antes de utilizarse.

## 20. Fuente de verdad

La fuente oficial se ubicará en:

`standards/software-development/branch-naming-standard/`
