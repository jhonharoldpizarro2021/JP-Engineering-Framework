# Definition of Done (DoD)

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir los criterios oficiales que determinan cuándo un trabajo puede considerarse completamente terminado dentro del JP Engineering Framework.

La Definition of Done garantiza que todos los proyectos compartan un mismo criterio de calidad antes de cerrar una tarea, Issue, Feature, Bug, Sprint o Release.

---

# Definición

Un trabajo únicamente podrá considerarse "Done" cuando cumpla todos los criterios establecidos en este documento.

No bastará con que el desarrollo haya finalizado; también deberán cumplirse los requisitos de calidad, documentación, validación y gobernanza.

---

# Principios

- Done significa completamente terminado.
- La calidad prevalece sobre la velocidad.
- Ningún trabajo incompleto podrá marcarse como Done.
- La documentación forma parte del trabajo.
- Toda aprobación deberá estar respaldada por evidencia.

---

# Criterios Generales

Todo trabajo deberá cumplir como mínimo:

- objetivo alcanzado;
- criterios de aceptación cumplidos;
- código funcional (cuando aplique);
- documentación actualizada;
- estándares del Framework respetados;
- evidencias disponibles.

---

# Desarrollo

Cuando aplique desarrollo de software deberá verificarse:

- compilación exitosa;
- pruebas ejecutadas;
- sin errores críticos;
- sin conflictos pendientes;
- convenciones respetadas.

---

# Documentación

Deberá actualizarse cuando corresponda:

- README;
- CHANGELOG;
- ADR;
- documentación técnica;
- documentación funcional.

---

# Git

Antes de considerar un trabajo como Done deberá existir:

- rama correcta;
- commits siguiendo el estándar oficial;
- historial limpio;
- Pull Request preparado o aprobado (cuando aplique).

---

# Code Review

Cuando aplique:

- revisión completada;
- observaciones obligatorias resueltas;
- aprobación registrada.

---

# Calidad

El trabajo deberá cumplir:

- arquitectura definida;
- principios SOLID (cuando apliquen);
- estándares del proyecto;
- mantenibilidad;
- legibilidad.

---

# Seguridad

Se deberá verificar:

- validación de entradas;
- manejo seguro de credenciales;
- ausencia de vulnerabilidades conocidas;
- cumplimiento de políticas de seguridad.

---

# Evidencias

Todo trabajo deberá contar con evidencia verificable.

La evidencia podrá incluir:

- capturas de pantalla;
- pruebas automatizadas;
- resultados de validaciones;
- registros (logs);
- documentación;
- Pull Request;
- commits;
- demostraciones funcionales.

---

# Definition of Done por Tipo

## Issue

Un Issue estará Done cuando:

- cumpla los criterios de aceptación;
- exista evidencia;
- la documentación esté actualizada;
- el estado sea Done.

---

## Pull Request

Un Pull Request estará Done cuando:

- haya sido aprobado;
- el Merge se haya realizado correctamente;
- no existan observaciones pendientes.

---

## Sprint

Un Sprint estará Done cuando:

- todas las tareas comprometidas hayan finalizado;
- exista retrospectiva (cuando aplique);
- la documentación esté actualizada;
- el Sprint haya sido aprobado.

---

## Release

Una Release estará Done cuando:

- versión publicada;
- CHANGELOG actualizado;
- Tag creado;
- documentación sincronizada.

---

# Checklist General

Antes de marcar un trabajo como Done deberá verificarse:

- Objetivo cumplido.
- Criterios de aceptación cumplidos.
- Documentación actualizada.
- Estándares respetados.
- Code Review aprobado (si aplica).
- Evidencias disponibles.
- Issue actualizado.
- Pull Request aprobado (si aplica).
- Merge realizado (si aplica).
- CHANGELOG actualizado (si aplica).

---

# Lo que NO es Done

No podrá marcarse como Done un trabajo que:

- tenga errores conocidos sin documentar;
- tenga documentación pendiente;
- carezca de evidencia;
- incumpla estándares;
- tenga revisiones pendientes;
- permanezca bloqueado.

---

# Excepciones

Toda excepción deberá:

- justificarse técnicamente;
- documentarse mediante una ADR cuando afecte la gobernanza;
- ser aprobada por el propietario del Framework.

---

# Decisión Oficial

El JP Engineering Framework adopta esta Definition of Done como criterio oficial para declarar la finalización de cualquier trabajo.

Ninguna tarea, Issue, Pull Request, Sprint o Release podrá considerarse terminada sin cumplir esta definición.

---

# Fuente de Verdad

Este documento constituye la referencia oficial para determinar cuándo un trabajo está completamente terminado dentro del JP Engineering Framework.

---

# Regla Fundamental

Dentro del JP Engineering Framework, "Done" significa que el trabajo está terminado desde las perspectivas:

- funcional;
- técnica;
- documental;
- arquitectónica;
- de gobernanza.

Si cualquiera de estas dimensiones permanece incompleta, el trabajo no podrá considerarse Done.