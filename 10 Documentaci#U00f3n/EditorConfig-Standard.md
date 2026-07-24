# EditorConfig Standard

**Framework:** JP Engineering Framework
**Version:** 1.0.0
**Release:** Foundation
**Status:** Stable
**Owner:** Jhon Harold Pizarro
**Project Director:** JP Engineering Framework

---

# Objetivo

Definir el estándar oficial para la creación, mantenimiento y uso de archivos `.editorconfig` dentro del JP Engineering Framework.

---

# Propósito

Garantizar un formato consistente del código fuente y de los archivos de texto, independientemente del editor utilizado por cada desarrollador.

---

# Principios

Todo archivo `.editorconfig` deberá:

- promover la consistencia del código;
- reducir diferencias de formato entre desarrolladores;
- facilitar revisiones de código;
- minimizar cambios innecesarios en Git.

---

# Configuraciones Habituales

Un archivo `.editorconfig` normalmente define:

- codificación (UTF-8);
- tipo de indentación;
- tamaño de indentación;
- finales de línea;
- eliminación de espacios en blanco al final de las líneas;
- inserción de salto de línea al final del archivo.

---

# Alcance

Este estándar aplica a:

- código fuente;
- archivos Markdown;
- archivos de configuración;
- scripts;
- documentación.

---

# Estrategia del Framework

El JP Engineering Framework define dos niveles:

## Nivel 1

Estándar general para el uso de `.editorconfig`.

## Nivel 2

Implementaciones específicas adaptadas a cada tecnología cuando sea necesario.

---

# Buenas Prácticas

- Mantener una única configuración por repositorio.
- Utilizar UTF-8 como codificación predeterminada.
- Evitar diferencias de formato entre desarrolladores.
- Revisar el archivo al iniciar un nuevo proyecto.

---

# Errores Comunes

- No utilizar `.editorconfig`.
- Confundirlo con herramientas de formateo.
- Mantener configuraciones diferentes entre proyectos similares.
- Modificar las reglas sin consenso del equipo.

---

# Relación con otros documentos

Este estándar se complementa con:

- Git Workflow
- Code Review Standard
- Starter Kits
- Repository Checklist

---

# Decisión Oficial

Todo proyecto creado bajo el JP Engineering Framework deberá incluir un archivo `.editorconfig` alineado con este estándar.

---

# Fuente de Verdad

Este documento constituye el estándar oficial para el uso de archivos `.editorconfig` dentro del JP Engineering Framework.