# Pull Request Standard

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el estándar oficial para la creación, revisión, aprobación y cierre de Pull Requests dentro del JP Engineering Framework.

Este documento garantiza que toda integración de código o documentación sea revisada, trazable y consistente antes de incorporarse a una rama oficial.

---

# Definición

Un Pull Request (PR) es una solicitud formal para integrar cambios desde una rama origen hacia una rama destino.

Todo Pull Request deberá representar una unidad lógica de trabajo completa y revisable.

---

# Principios

- Ningún cambio llega a una rama oficial sin revisión.
- Todo Pull Request debe ser trazable.
- Todo Pull Request debe estar relacionado con un Issue.
- Todo Pull Request debe mantener la calidad del repositorio.
- La documentación forma parte del cambio cuando corresponda.

---

# Flujo del Pull Request

```
Issue
    │
    ▼
Branch
    │
    ▼
Commits
    │
    ▼
Pull Request
    │
    ▼
Code Review
    │
    ▼
Merge
    │
    ▼
Release
```

---

# Información Obligatoria

Todo Pull Request deberá incluir:

- título;
- descripción;
- objetivo;
- Issue relacionado;
- rama origen;
- rama destino;
- resumen de cambios;
- evidencia cuando aplique.

---

# Estructura Recomendada

## Descripción

Explicar el propósito del cambio.

## Cambios realizados

Resumen de las modificaciones implementadas.

## Evidencias

Capturas, pruebas, enlaces o documentación relacionada.

## Checklist

Confirmación de que el cambio cumple los requisitos establecidos.

---

# Checklist Obligatorio

Antes de solicitar revisión deberá verificarse:

- Issue relacionado.
- Commits correctos.
- Sin conflictos.
- Documentación actualizada.
- CHANGELOG actualizado (si aplica).
- Pruebas ejecutadas (si aplica).
- Sin archivos temporales.
- Sin credenciales.
- Rama sincronizada.

---

# Criterios de Revisión

El revisor deberá verificar:

- arquitectura;
- calidad del código;
- cumplimiento de estándares;
- documentación;
- seguridad;
- rendimiento;
- mantenibilidad.

---

# Estados

Draft

Ready for Review

Changes Requested

Approved

Merged

Closed

---

# Criterios de Aprobación

Un Pull Request podrá aprobarse únicamente cuando:

- cumple los criterios de aceptación;
- no presenta conflictos;
- las observaciones fueron resueltas;
- mantiene la calidad del proyecto;
- la documentación está actualizada.

---

# Reglas de Merge

Se permite realizar Merge únicamente cuando:

- existe aprobación;
- no existen conflictos;
- el CI (si aplica) es exitoso;
- el Issue correspondiente está listo para cerrarse.

---

# Relación con GitFlow

El Pull Request deberá respetar la estrategia oficial de ramas.

Ejemplos:

```
feature/* → develop

fix/* → develop

release/* → main

hotfix/* → main
```

---

# Relación con Commits

Todos los commits deberán cumplir el estándar definido en:

Commit-Standard.md

---

# Relación con Issues

Todo Pull Request deberá estar asociado al menos con un Issue activo.

---

# Relación con Releases

Todo Pull Request aprobado podrá formar parte de una Release cuando corresponda.

---

# Buenas Prácticas

- Mantener Pull Requests pequeños.
- Revisar un único objetivo por PR.
- Evitar cambios no relacionados.
- Resolver comentarios antes del Merge.
- Mantener conversaciones técnicas dentro del PR.

---

# Cierre del Pull Request

Un Pull Request podrá cerrarse cuando:

- haya sido integrado;
- haya sido descartado;
- el trabajo ya no sea necesario.

Cuando sea descartado deberá documentarse el motivo.

---

# Excepciones

Toda excepción deberá:

- justificarse técnicamente;
- documentarse mediante una ADR cuando afecte la gobernanza;
- ser aprobada por el propietario del Framework.

---

# Decisión Oficial

El JP Engineering Framework adopta este estándar como política oficial para la creación, revisión y aprobación de Pull Requests.

Todos los proyectos gobernados por el Framework deberán cumplir estas reglas.

---

# Fuente de Verdad

Este documento constituye la referencia oficial para la gestión de Pull Requests dentro del JP Engineering Framework.