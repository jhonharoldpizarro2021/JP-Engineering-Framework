# GitIgnore Standard

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el estándar oficial para la creación, mantenimiento y uso de archivos `.gitignore` dentro del JP Engineering Framework.

---

# Propósito

Garantizar que únicamente los archivos necesarios para reconstruir un proyecto formen parte del repositorio Git.

---

# Principios

Todo archivo incluido en un `.gitignore` deberá cumplir al menos una de las siguientes condiciones:

- ser generado automáticamente;
- poder reconstruirse;
- contener información temporal;
- contener información local;
- contener información sensible;
- pertenecer a dependencias instalables.

---

# Archivos que normalmente NO deben versionarse

Ejemplos:

- Cachés
- Logs
- Dependencias
- Archivos temporales
- Variables locales
- Credenciales
- Archivos de compilación
- Archivos generados automáticamente

---

# Archivos que SÍ deben versionarse

Ejemplos:

- Código fuente
- Documentación
- Scripts
- Configuraciones compartidas
- Plantillas
- Migraciones
- Recursos del proyecto

---

# Estrategia del Framework

El JP Engineering Framework define dos niveles:

## Nivel 1

Estándar general del uso de `.gitignore`.

## Nivel 2

Plantillas específicas por tecnología.

Ejemplos:

- Laravel
- WordPress
- Node.js
- Go
- Flutter
- Docker

---

# Buenas Prácticas

- Mantener el archivo pequeño y legible.
- Agrupar reglas por categorías.
- Documentar excepciones cuando existan.
- Evitar ignorar archivos necesarios para reconstruir el proyecto.
- Revisar el `.gitignore` antes de la primera publicación del repositorio.

---

# Errores Comunes

- Ignorar demasiado contenido.
- Versionar secretos.
- Versionar dependencias descargadas.
- Copiar un `.gitignore` de otra tecnología sin adaptarlo.
- Modificar el archivo sin justificar el cambio.

---

# Relación con otros documentos

Este estándar se complementa con:

- Git Workflow
- Project Template
- Starter Kits
- Repository Checklist

---

# Decisión Oficial

Todo proyecto creado bajo el JP Engineering Framework deberá disponer de un archivo `.gitignore` adaptado a su tecnología y alineado con este estándar.

---

# Fuente de Verdad

Este documento constituye el estándar oficial para el uso de archivos `.gitignore` dentro del JP Engineering Framework.