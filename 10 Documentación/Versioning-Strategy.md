# Versioning Strategy

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir la estrategia oficial de versionado para el JP Engineering Framework y todos los proyectos gobernados por él.

El Framework adopta Semantic Versioning (SemVer) como estándar oficial para garantizar compatibilidad, trazabilidad y una evolución predecible del software.

---

# Estándar Adoptado

El Framework utiliza Semantic Versioning 2.0.0.

Formato:

MAJOR.MINOR.PATCH

Ejemplo:

1.0.0

---

# Significado de cada versión

## MAJOR

Se incrementa cuando existen cambios incompatibles con versiones anteriores.

Ejemplo:

1.0.0 → 2.0.0

---

## MINOR

Se incrementa cuando se agregan nuevas funcionalidades compatibles.

Ejemplo:

1.2.0 → 1.3.0

---

## PATCH

Se incrementa cuando únicamente existen correcciones.

Ejemplo:

1.3.2 → 1.3.3

---

# Versiones Iniciales

Durante el desarrollo inicial podrán utilizarse versiones:

0.x.x

Ejemplo:

0.1.0

0.5.3

Hasta alcanzar la primera versión estable.

---

# Primera Versión Estable

La primera versión oficial del Framework será:

1.0.0

Denominación:

Foundation

---

# Compatibilidad

Las versiones PATCH deben mantener compatibilidad total.

Las versiones MINOR deben mantener compatibilidad hacia atrás.

Las versiones MAJOR pueden introducir cambios incompatibles.

---

# Pre-Releases

Cuando sea necesario podrán utilizarse:

alpha

beta

rc

Ejemplos:

1.1.0-alpha

1.1.0-beta

1.1.0-rc1

---

# Releases

Cada Release deberá incluir:

- versión
- CHANGELOG actualizado
- documentación
- código estable
- tag en Git

---

# Tags

Las etiquetas deberán seguir el formato:

v1.0.0

v1.2.0

v2.0.1

---

# Reglas

Nunca modificar una versión publicada.

Toda versión debe quedar documentada.

Toda versión debe poseer un CHANGELOG.

Toda Release debe estar etiquetada en Git.

---

# Buenas Prácticas

No publicar versiones incompletas.

No reutilizar números de versión.

Actualizar README cuando exista una nueva Release importante.

Mantener sincronizados:

- CHANGELOG
- Releases
- Tags
- Documentación

---

# Decisión Oficial

El JP Engineering Framework adopta Semantic Versioning (SemVer 2.0.0) como política oficial de versionado.

Toda excepción deberá documentarse mediante una ADR y ser aprobada por el propietario del Framework.

---

# Fuente de Verdad

Este documento constituye la referencia oficial sobre el versionado del JP Engineering Framework y de todos los proyectos gobernados por él.