# Issue Standard

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el estándar oficial para la creación, clasificación, priorización, seguimiento y cierre de Issues dentro del JP Engineering Framework.

Este estándar garantiza una gestión organizada, trazable y consistente del trabajo en todos los proyectos gobernados por el Framework.

---

# Definición

Un Issue representa una unidad de trabajo identificable.

Puede corresponder a:

- una nueva funcionalidad;
- una corrección;
- una mejora;
- una tarea técnica;
- documentación;
- investigación;
- deuda técnica.

Todo trabajo deberá comenzar con un Issue.

---

# Principios

- Todo trabajo debe estar documentado.
- Todo Issue debe tener un objetivo claro.
- Todo Issue debe ser trazable.
- Ningún Issue debe quedar sin estado.
- Un Issue representa una única necesidad de negocio o técnica.

---

# Tipos de Issue

## Epic

Agrupa funcionalidades relacionadas de gran tamaño.

Ejemplo:

```
Epic: Docker Infrastructure
```

---

## Feature

Nueva funcionalidad.

Ejemplo:

```
Feature: User Authentication
```

---

## Bug

Corrección de errores.

Ejemplo:

```
Bug: Login validation error
```

---

## Task

Trabajo técnico que no agrega funcionalidades.

Ejemplo:

```
Task: Update dependencies
```

---

## Documentation

Creación o actualización de documentación.

Ejemplo:

```
Documentation: Add Release Strategy
```

---

## Refactor

Mejora interna sin modificar el comportamiento.

Ejemplo:

```
Refactor: Extract User Service
```

---

## Research

Investigación técnica.

Ejemplo:

```
Research: Evaluate Laravel Octane
```

---

## Security

Correcciones o mejoras relacionadas con seguridad.

---

## Performance

Optimización de rendimiento.

---

# Prioridades

## Critical

Debe resolverse inmediatamente.

---

## High

Alta prioridad.

---

## Medium

Prioridad normal.

---

## Low

Puede planificarse para futuros Sprints.

---

# Estados

Backlog

Ready

In Progress

Review

Testing

Done

Blocked

Cancelled

---

# Información Obligatoria

Todo Issue deberá contener:

- título;
- descripción;
- objetivo;
- criterios de aceptación;
- prioridad;
- tipo;
- responsable;
- Sprint (cuando aplique).

---

# Criterios de Aceptación

Cada Issue deberá definir condiciones verificables para considerarse completado.

Ejemplo:

- autenticación funcional;
- pruebas ejecutadas;
- documentación actualizada;
- revisión aprobada.

---

# Labels

Se recomienda utilizar etiquetas consistentes.

Tipos:

```
bug
feature
task
documentation
security
performance
research
refactor
```

Prioridades:

```
critical
high
medium
low
```

Estados:

```
blocked
ready
review
testing
```

Tecnologías:

```
laravel
wordpress
docker
mysql
php
javascript
github
```

---

# Relación con el Product Backlog

Todo Feature deberá originarse en el Product Backlog.

Los Issues implementan elementos previamente priorizados.

---

# Relación con los Sprints

Durante la planificación del Sprint se seleccionan los Issues que serán desarrollados.

Cada Issue deberá pertenecer a un único Sprint activo.

---

# Relación con los Pull Requests

Todo Pull Request deberá estar asociado al menos con un Issue.

La trazabilidad debe mantenerse desde:

Product Backlog

↓

Issue

↓

Branch

↓

Commit

↓

Pull Request

↓

Merge

↓

Release

---

# Buenas Prácticas

- Crear títulos descriptivos.
- Dividir tareas grandes.
- Evitar Issues ambiguos.
- Mantener la información actualizada.
- Cerrar únicamente Issues terminados.
- Documentar decisiones importantes.

---

# Flujo del Issue

```
Backlog
    │
    ▼
Ready
    │
    ▼
In Progress
    │
    ▼
Review
    │
    ▼
Testing
    │
    ▼
Done
```

Si existe un problema:

```
Blocked
```

Si deja de ser necesario:

```
Cancelled
```

---

# Cierre de un Issue

Un Issue podrá cerrarse únicamente cuando:

- se cumplan los criterios de aceptación;
- exista evidencia del trabajo realizado;
- el Pull Request haya sido aprobado (si aplica);
- la documentación esté actualizada;
- el cambio forme parte de la Fuente de Verdad cuando corresponda.

---

# Excepciones

Toda excepción deberá:

- justificarse técnicamente;
- documentarse mediante una ADR cuando afecte la gobernanza;
- ser aprobada por el propietario del Framework.

---

# Decisión Oficial

El JP Engineering Framework adopta este estándar como política oficial para la gestión de Issues.

Todos los proyectos gobernados por el Framework deberán seguir esta estructura.

---

# Fuente de Verdad

Este documento constituye la referencia oficial para la creación, administración y cierre de Issues dentro del JP Engineering Framework.