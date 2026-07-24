# Git Workflow

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el flujo de trabajo estándar con Git que deberán seguir todos los proyectos gobernados por el JP Engineering Framework.

Este documento establece las reglas para la creación de ramas, integración de cambios, revisiones y liberaciones, garantizando trazabilidad, consistencia y calidad.

---

# Principios

- El Framework gobierna.
- Todo cambio debe quedar registrado en Git.
- Ningún cambio llega a la rama principal sin revisión.
- Los commits deben ser pequeños y atómicos.
- La historia del repositorio debe ser clara y fácil de auditar.

---

# Estrategia de Branches

Las ramas oficiales del Framework son:

## main

Contiene únicamente versiones estables listas para producción.

Nunca se desarrolla directamente sobre esta rama.

---

## develop

Rama principal de desarrollo.

Integra el trabajo aprobado antes de preparar una nueva versión.

---

## feature/*

Se utiliza para desarrollar nuevas funcionalidades.

Ejemplos:

```
feature/user-authentication
feature/docker-support
feature/product-backlog
```

---

## fix/*

Corrección de errores que aún no han llegado a producción.

Ejemplos:

```
fix/login-validation
fix/readme-links
```

---

## hotfix/*

Correcciones urgentes sobre producción.

Se crean desde `main`.

Después del despliegue deben integrarse nuevamente en `develop`.

---

## release/*

Preparación de una nueva versión.

Permite realizar:

- ajustes finales
- revisión documental
- pruebas
- actualización de versiones
- CHANGELOG

---

# Flujo de Trabajo

El flujo recomendado será:

```
main
 │
 └──── develop
          │
          ├── feature/*
          ├── fix/*
          ├── release/*
          └── hotfix/*
```

---

# Convención de nombres

Las ramas deberán utilizar nombres descriptivos.

Correcto

```
feature/payment-gateway
feature/docker-environment

fix/user-registration

hotfix/security-patch

release/v1.1.0
```

Incorrecto

```
rama1
prueba
cambios
nuevo
```

---

# Reglas de Integración

No se permite realizar merge si:

- existen conflictos sin resolver
- existen tareas pendientes
- falta documentación
- no se cumplen los criterios de aceptación

---

# Pull Requests

Todo merge deberá realizarse mediante Pull Request cuando el proyecto sea colaborativo.

El Pull Request debe incluir:

- objetivo
- cambios realizados
- evidencia
- impacto
- revisión

---

# Code Review

Antes de aprobar un Pull Request se debe verificar:

- arquitectura
- calidad del código
- documentación
- estándares
- seguridad
- rendimiento

---

# Releases

Toda versión publicada debe contener:

- CHANGELOG actualizado
- versión
- documentación
- código estable

---

# Hotfix

Los Hotfix siguen el siguiente flujo:

```
main
 │
 └── hotfix/*
          │
          ├── main
          └── develop
```

---

# Buenas Prácticas

- Hacer commits pequeños.
- Hacer push con frecuencia.
- Sincronizar antes de comenzar a trabajar.
- Resolver conflictos inmediatamente.
- No dejar ramas olvidadas.
- Eliminar ramas fusionadas cuando ya no sean necesarias.

---

# Reglas del Framework

Es obligatorio:

- utilizar Git
- utilizar ramas
- mantener historial limpio
- documentar cambios importantes
- seguir la estrategia definida en este documento

---

# Fuente de Verdad

Este documento constituye la referencia oficial del flujo de trabajo con Git para todos los proyectos gobernados por el JP Engineering Framework.