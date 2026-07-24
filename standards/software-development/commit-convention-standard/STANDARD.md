# Commit Convention Standard

## 1. Identificación

- **ID:** JPEF-STD-COMMIT-001
- **Versión:** 1.0.0
- **Estado:** Aprobado
- **Nivel de cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Aprobado por:** Jhon Harold Pizarro
- **Sprint:** 5
- **Fecha:** 2026-07-24

## 2. Propósito

Definir una convención obligatoria para crear commits claros, atómicos, verificables y trazables dentro del JP Engineering Framework.

## 3. Formato obligatorio

Todo commit deberá utilizar:

`<type>(<scope>): <description>`

Ejemplo:

`feat(standards): add Commit Convention Standard v1.0.0`

Reglas generales:

- Mensajes en inglés.
- Descripción breve y precisa.
- Verbo en modo imperativo.
- Primera letra en minúscula.
- Sin punto final.
- Un commit representa un solo propósito.
- Un paquete ZIP corresponde a un único commit, salvo instrucción expresa.
- El `scope` identifica el área afectada.

## 4. Tipos oficiales

- `feat`: nueva funcionalidad, estándar o capacidad.
- `fix`: corrección de errores.
- `docs`: cambios exclusivamente documentales.
- `refactor`: cambio interno sin alterar comportamiento.
- `test`: creación o modificación de pruebas.
- `build`: compilación, dependencias o empaquetado.
- `ci`: pipelines y automatización.
- `chore`: mantenimiento sin cambio funcional.
- `perf`: mejora de rendimiento.
- `style`: formato sin cambio funcional.
- `revert`: reversión de un commit anterior.
- `security`: corrección o mejora de seguridad.

No se permitirán tipos improvisados sin una ampliación aprobada del estándar.

## 5. Scope

El `scope` es obligatorio.

Debe:

- escribirse en minúsculas;
- utilizar kebab-case cuando contenga varias palabras;
- identificar un área real del repositorio;
- ser breve, específico y estable;
- evitar términos ambiguos como `misc`, `changes`, `update`, `stuff` o `general`.

Ejemplos válidos:

- `standards`
- `docker`
- `gitignore`
- `editorconfig`
- `sprint`
- `wordpress`
- `laravel`
- `ci`
- `docs`

## 6. Descripción

La descripción:

- tendrá un máximo de 72 caracteres;
- indicará claramente qué cambia;
- utilizará verbo en modo imperativo;
- no repetirá información obvia del tipo o scope;
- no utilizará expresiones vagas;
- no incluirá identificadores innecesarios;
- mantendrá un único propósito.

## 7. Cuerpo

El cuerpo será opcional para cambios simples y obligatorio cuando el encabezado no explique suficientemente:

- motivo del cambio;
- comportamiento anterior y nuevo;
- decisiones técnicas;
- riesgos;
- migraciones;
- efectos secundarios.

Reglas:

- Separarlo del encabezado con una línea vacía.
- Explicar qué cambió y por qué.
- Escribirlo en inglés.
- No copiar el diff.
- Utilizar párrafos breves o listas cuando sea necesario.

## 8. Pie

El pie se utilizará únicamente cuando sea necesario.

Formatos oficiales:

- `BREAKING CHANGE: describe the incompatible change`
- `Refs: #123`
- `Closes: #123`
- `Co-authored-by: Name <email@example.com>`

`BREAKING CHANGE` será obligatorio cuando se rompa compatibilidad.

Las referencias deberán apuntar a tickets o issues reales.

## 9. Commits de merge

- Solo deberán generarse mediante el flujo aprobado de Pull Request.
- Los merges directos o manuales sobre ramas protegidas están prohibidos.
- Se evitarán merge commits innecesarios en ramas locales.
- Los merges realizados por GitHub podrán conservar el mensaje generado por la plataforma.
- No se editarán manualmente después de integrarlos.
- Todo merge deberá estar respaldado por un Pull Request aprobado.
- Cuando se utilice squash merge, el commit final deberá cumplir completamente este estándar.

## 10. Commits de reversión

- Toda reversión utilizará el tipo `revert`.
- Deberá identificar el commit revertido.
- Deberá explicar por qué se realiza.
- No se deberá reescribir el historial publicado para deshacer cambios.
- Las reversiones serán atómicas.

Formato recomendado:

`revert(scope): revert <original description>`

Cuerpo recomendado:

`This reverts commit <hash>.`

## 11. Commits automáticos

Los commits creados por bots, pipelines o herramientas:

- deberán identificarse claramente;
- utilizarán un tipo oficial;
- emplearán un scope reconocible;
- no usarán mensajes genéricos;
- se limitarán a archivos esperados;
- no incluirán secretos ni artefactos ajenos;
- pasarán las mismas validaciones que los commits humanos;
- utilizarán una identidad de bot registrada.

## 12. Trazabilidad con tickets, issues y Pull Requests

- `Refs: #123` se utilizará cuando el commit esté relacionado pero no cierre el trabajo.
- `Closes: #123` se utilizará únicamente cuando el cambio complete realmente el trabajo.
- No se crearán tickets artificiales para cambios pequeños o internos.
- No se cerrará un issue cuando aún falten pruebas, revisión o integración.
- El Pull Request deberá reunir la trazabilidad completa cuando agrupe varios commits.
- El número del ticket no deberá repetirse en el título salvo razón técnica documentada.

## 13. Validación automática

Todo repositorio deberá validar automáticamente los mensajes de commit.

La validación comprobará:

- formato;
- tipo oficial;
- scope obligatorio;
- minúscula inicial;
- máximo 72 caracteres;
- ausencia de punto final;
- uso correcto de `BREAKING CHANGE`;
- ausencia de mensajes vagos.

Implementación recomendada:

- `commitlint`;
- hook `commit-msg` mediante Husky o mecanismo equivalente;
- validación adicional en CI;
- configuración versionada;
- ejecución dentro de Docker cuando aplique.

## 14. Identidad y firma

- Cada desarrollador configurará nombre y correo reales o corporativos.
- El correo deberá coincidir con la identidad registrada en la plataforma.
- No se permitirán identidades genéricas.
- Los bots utilizarán identidad claramente reconocible.
- La firma GPG o SSH será recomendada y podrá exigirse en ramas protegidas.
- Las claves privadas nunca se compartirán.

## 15. Reescritura del historial

- `git commit --amend` solo podrá usarse antes de publicar.
- No se modificarán commits enviados a ramas compartidas.
- `git push --force` está prohibido en ramas protegidas.
- En ramas personales publicadas solo podrá utilizarse `git push --force-with-lease` cuando sea imprescindible.
- Los errores integrados se corregirán con un nuevo commit o mediante `revert`.
- Squash o rebase solo podrán realizarse antes de compartir los commits, salvo excepción controlada.

El historial publicado se considera inmutable.

## 16. Control previo al commit

Antes de crear un commit se deberá:

- revisar `git status`;
- revisar `git diff --staged`;
- ejecutar `git diff --check`;
- confirmar que solo se incluyan archivos relacionados;
- verificar que no existan secretos, backups ni artefactos generados;
- ejecutar las pruebas aplicables;
- evitar commits vacíos salvo necesidad documentada;
- confirmar que el mensaje corresponda exactamente al contenido preparado.

## 17. WIP, fixup y squash

- Solo podrán utilizarse temporalmente en ramas personales.
- No deberán llegar a Pull Requests, ramas compartidas ni protegidas.
- Antes de publicar, deberán reorganizarse o integrarse en commits conformes.

## 18. Commits vacíos

Estarán prohibidos por defecto.

Solo se permitirán para activar deliberadamente pipelines, despliegues o procesos técnicos.

Deberán usar normalmente `ci` o `chore` y explicar el motivo en el cuerpo.

Ejemplo:

`ci(pipeline): trigger production redeployment`

## 19. Releases

Formato oficial:

`chore(release): release v1.0.0`

Reglas:

- Seguir Semantic Versioning.
- Incluir únicamente archivos relacionados con la publicación.
- Hacer coincidir exactamente el tag con la versión publicada.

## 20. Dependencias

- El manifiesto y su lockfile deberán incluirse en el mismo commit.
- No se mezclarán actualizaciones de dependencias con cambios funcionales.
- Se utilizará normalmente `build(dependencies)`.
- Las actualizaciones automáticas mantendrán atomicidad y validaciones.

Ejemplo:

`build(dependencies): update Laravel dependencies`

## 21. Commits temporales o experimentales

No se permitirán en ramas publicadas mensajes como:

- `test`
- `try`
- `temp`
- `checkpoint`
- `save work`

El trabajo experimental deberá permanecer en una rama personal y limpiarse antes del Pull Request.

## 22. Excepciones

Toda excepción deberá:

- justificarse;
- documentarse;
- preservar trazabilidad;
- no afectar ramas protegidas;
- no comprometer seguridad;
- aprobarse mediante el gobierno del Framework.

## 23. Fuente de verdad

La fuente oficial se ubicará en:

`standards/software-development/commit-convention-standard/`
