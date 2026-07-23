# Commit Standard

**Framework:** JP Engineering Framework  
**Version:** 1.0.0  
**Release:** Foundation  
**Status:** Stable  
**Owner:** Jhon Harold Pizarro  
**Project Director:** JP Engineering Framework  

---

# Objetivo

Definir el estándar oficial para la creación de commits en el JP Engineering Framework y en todos los proyectos gobernados por él.

Este estándar busca mantener un historial claro, trazable, auditable y compatible con procesos futuros de automatización, generación de CHANGELOG y versionado semántico.

---

# Estándar Adoptado

El JP Engineering Framework adopta Conventional Commits como estándar oficial para los mensajes de commit.

Formato general:

```text
type(scope): description
```

Ejemplo:

```text
docs(governance): add release strategy
```

---

# Estructura del Commit

Un mensaje de commit puede contener:

```text
type(scope): description

optional body

optional footer
```

## Type

Indica la naturaleza principal del cambio.

## Scope

Indica el área, módulo, documento o componente afectado.

El scope es opcional, pero recomendado cuando aporta contexto.

## Description

Describe de manera breve y precisa el cambio realizado.

## Body

Explica detalles adicionales cuando el encabezado no es suficiente.

## Footer

Registra información complementaria como:

- referencias a Issues;
- breaking changes;
- tickets;
- decisiones relacionadas.

---

# Tipos Permitidos

## feat

Introduce una nueva funcionalidad.

```text
feat(auth): add password recovery
```

## fix

Corrige un error.

```text
fix(validation): prevent empty email submission
```

## docs

Agrega o modifica documentación.

```text
docs(governance): add commit standard
```

## refactor

Modifica la estructura interna sin cambiar el comportamiento esperado.

```text
refactor(users): extract registration service
```

## test

Agrega, corrige o reorganiza pruebas.

```text
test(auth): add login integration tests
```

## chore

Realiza tareas de mantenimiento que no afectan directamente la funcionalidad.

```text
chore(repository): update gitignore
```

## build

Modifica el sistema de construcción, dependencias o empaquetado.

```text
build(composer): update development dependencies
```

## ci

Modifica pipelines o configuraciones de integración continua.

```text
ci(github): add pull request validation workflow
```

## perf

Introduce mejoras de rendimiento.

```text
perf(database): optimize product query
```

## style

Realiza cambios de formato que no afectan el comportamiento.

```text
style(php): apply coding standard
```

## revert

Revierte un commit anterior.

```text
revert: revert user authentication changes
```

---

# Reglas de Redacción

Los mensajes deberán:

- utilizar inglés;
- comenzar con un tipo permitido;
- emplear verbos en presente e imperativo;
- describir un único cambio principal;
- ser claros y específicos;
- evitar puntos al final del encabezado;
- evitar mensajes genéricos.

Correcto:

```text
docs(git): add GitFlow branching rules
```

Incorrecto:

```text
updated files
```

Correcto:

```text
fix(auth): validate expired reset tokens
```

Incorrecto:

```text
fix stuff
```

---

# Commits Atómicos

Cada commit deberá representar una unidad lógica de cambio.

Un commit atómico:

- realiza una sola modificación coherente;
- puede revisarse de manera independiente;
- puede revertirse sin afectar cambios no relacionados;
- mantiene el repositorio en un estado consistente.

No se deben mezclar en un mismo commit:

- nuevas funcionalidades;
- correcciones independientes;
- refactorizaciones no relacionadas;
- documentación de otro alcance;
- cambios temporales o experimentales.

Ejemplo correcto:

```text
docs(governance): add release strategy
```

Ejemplo incorrecto:

```text
feat: add login, update readme and fix styles
```

---

# Scope

El scope debe ser breve, descriptivo y consistente.

Ejemplos:

```text
docs(git): add branching conventions
feat(auth): add user login
fix(api): handle invalid token
ci(github): add quality checks
```

No se deben utilizar scopes ambiguos:

```text
docs(stuff): update document
fix(misc): fix problem
```

---

# Breaking Changes

Los cambios incompatibles deberán indicarse explícitamente.

Formato:

```text
feat(api)!: replace authentication response format
```

También podrán documentarse en el footer:

```text
feat(api): replace authentication response format

BREAKING CHANGE: clients must now read the token from data.access_token.
```

Todo breaking change deberá:

- incrementar la versión MAJOR;
- quedar registrado en el CHANGELOG;
- documentarse claramente;
- ser aprobado antes de su integración.

---

# Relación con Semantic Versioning

Los tipos de commit ayudan a determinar el incremento de versión.

## PATCH

Normalmente asociado con:

```text
fix
perf
```

## MINOR

Normalmente asociado con:

```text
feat
```

## MAJOR

Se aplica cuando existe:

```text
BREAKING CHANGE
```

Otros tipos como `docs`, `test`, `style`, `ci`, `build`, `chore` y `refactor` no generan automáticamente una nueva versión, salvo que formen parte de una Release planificada.

---

# Relación con CHANGELOG

Los commits relevantes deberán reflejarse en el `CHANGELOG.md` de la siguiente Release.

Especialmente:

- nuevas funcionalidades;
- correcciones;
- mejoras de rendimiento;
- cambios incompatibles;
- cambios de seguridad;
- decisiones relevantes de arquitectura.

Los commits internos o de mantenimiento podrán omitirse del CHANGELOG cuando no tengan impacto para los usuarios o consumidores del proyecto.

---

# Commits de Documentación

Los cambios realizados únicamente sobre documentación deberán usar:

```text
docs
```

Ejemplos:

```text
docs(governance): add sprint strategy
docs(git): define official GitFlow workflow
docs(versioning): adopt Semantic Versioning
docs(releases): add release publication process
```

---

# Commits Temporales

No se deben publicar commits con mensajes como:

```text
wip
temp
test
changes
update
final
final-final
```

Cuando sea necesario guardar trabajo incompleto localmente, deberá corregirse el historial antes de integrar el cambio mediante Pull Request.

---

# Frecuencia de Commits

Se deberán realizar commits:

- al finalizar una unidad lógica de trabajo;
- antes de iniciar un cambio independiente;
- después de validar que el cambio funciona;
- cuando exista una evidencia clara del trabajo realizado.

No se debe esperar al final de una jornada para agrupar cambios no relacionados en un único commit.

---

# Validación Antes del Commit

Antes de crear un commit se debe verificar:

- que los archivos modificados correspondan al objetivo;
- que no existan archivos temporales;
- que no se incluyan credenciales;
- que el código o documento esté completo;
- que las pruebas aplicables hayan sido ejecutadas;
- que el mensaje describa correctamente el cambio.

Comandos recomendados:

```bash
git status
git diff
git diff --staged
```

---

# Ejemplos Oficiales

```text
docs(governance): add sprint strategy
docs(git): adopt GitFlow branching model
docs(versioning): define Semantic Versioning policy
docs(releases): add release strategy
docs(commits): define Conventional Commits standard
```

```text
feat(catalog): add product filtering
fix(checkout): prevent duplicate order creation
refactor(payments): extract payment gateway interface
test(auth): add failed login scenarios
ci(github): run tests on pull requests
chore(repository): remove obsolete files
```

---

# Mensaje para el Punto 2.6

Cuando este documento sea el único cambio del commit:

```text
docs(commits): add commit standard
```

Si se incluyen conjuntamente todos los documentos de gobernanza creados durante esta etapa, deberá utilizarse un mensaje que represente correctamente el conjunto completo. Sin embargo, se recomienda mantener commits atómicos y registrar cada documento mediante un commit independiente.

---

# Excepciones

Toda excepción a este estándar deberá:

- tener una justificación técnica;
- documentarse mediante una ADR cuando afecte la gobernanza;
- ser aprobada por el propietario del Framework;
- quedar registrada en la Fuente de Verdad.

---

# Decisión Oficial

El JP Engineering Framework adopta Conventional Commits como estándar oficial para todos los mensajes de commit.

Los commits deberán ser pequeños, atómicos, descriptivos y coherentes con Semantic Versioning, GitFlow y la estrategia oficial de Releases.

---

# Fuente de Verdad

Este documento constituye la referencia oficial para la creación y validación de commits dentro del JP Engineering Framework y de todos los proyectos gobernados por él.