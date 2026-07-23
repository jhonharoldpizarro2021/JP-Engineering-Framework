# Release Strategy

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el proceso oficial para la planificación, preparación, aprobación y publicación de Releases dentro del JP Engineering Framework.

Esta estrategia garantiza que todas las versiones publicadas sean consistentes, trazables y reproducibles.

---

# Definición de Release

Una Release representa una versión oficial del software que ha sido aprobada para su distribución.

Una Release debe estar completamente documentada y ser reproducible en cualquier momento.

---

# Principios

- Toda Release debe ser planificada.
- Ninguna Release se publica sin aprobación.
- Toda Release debe estar respaldada por Git.
- Toda Release debe estar documentada.
- La calidad prevalece sobre la velocidad.

---

# Flujo de una Release

```
develop
    │
    ▼
release/*
    │
    ├── Validación
    ├── Correcciones finales
    ├── Actualización de documentación
    ├── CHANGELOG
    ├── Versionado
    ▼
main
    │
    ▼
Tag
    │
    ▼
Release publicada
```

---

# Requisitos

Antes de crear una Release debe existir:

- Sprint finalizado.
- Definition of Done cumplida.
- Código estable.
- Documentación actualizada.
- CHANGELOG actualizado.
- Versionado correcto.
- Pruebas completadas.

---

# Checklist de Release

Antes de publicar una versión se debe verificar:

- Código compilando correctamente.
- Sin errores críticos.
- Documentación completa.
- README actualizado.
- CHANGELOG actualizado.
- ADR registradas.
- Versiones sincronizadas.
- Pull Requests cerrados.
- Merge aprobado.

---

# Versionado

Toda Release deberá seguir Semantic Versioning (SemVer 2.0.0).

Ejemplos:

```
v1.0.0

v1.1.0

v1.1.1

v2.0.0
```

---

# Tags

Cada Release deberá generar un Tag en Git.

Formato:

```
vMAJOR.MINOR.PATCH
```

Ejemplo:

```
v1.2.3
```

---

# CHANGELOG

Toda Release deberá quedar registrada en:

CHANGELOG.md

Indicando:

- versión
- fecha
- cambios
- correcciones
- mejoras
- breaking changes

---

# Evidencias

Cada Release debe conservar evidencia de:

- Commits.
- Pull Request.
- Merge.
- Tag.
- CHANGELOG.
- Documentación.
- Archivos publicados.

---

# Aprobación

Una Release únicamente podrá considerarse oficial cuando:

- Cumpla todos los requisitos.
- Haya sido aprobada por el propietario del proyecto.
- La documentación forme parte de la Fuente de Verdad.

---

# Buenas Prácticas

- Publicar únicamente versiones estables.
- Evitar Releases apresuradas.
- Mantener una única fuente de documentación.
- Automatizar el proceso cuando sea posible.
- Conservar el historial completo de Releases.

---

# Decisión Oficial

El JP Engineering Framework establece una estrategia formal de Releases basada en GitFlow y Semantic Versioning.

Toda Release deberá cumplir este documento.

Las excepciones deberán registrarse mediante una ADR y ser aprobadas por el propietario del Framework.

---

# Fuente de Verdad

Este documento constituye la referencia oficial para la planificación, aprobación y publicación de Releases dentro del JP Engineering Framework.