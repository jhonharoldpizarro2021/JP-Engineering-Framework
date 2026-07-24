# EditorConfig Standard

## Identificación

- **ID:** JPEF-STD-EDITORCONFIG-001
- **Versión:** 1.0.0
- **Estado:** Aprobado
- **Cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Aprobado por:** Jhon Harold Pizarro
- **Fecha:** 2026-07-24

## Propósito

Mantener consistencia en código fuente y archivos de texto entre Windows, Docker, Linux y editores compatibles.

## Regla principal

Todo proyecto deberá incluir un único archivo `.editorconfig` en la raíz del repositorio y versionarlo en Git.

La configuración transversal obligatoria deberá incluir:

- `root = true`;
- codificación UTF-8;
- finales de línea LF;
- nueva línea al final del archivo;
- eliminación de espacios finales;
- indentación predeterminada consistente;
- secciones específicas por tecnología cuando corresponda.

## Arquitectura

El archivo tendrá dos niveles:

1. Base transversal común.
2. Reglas específicas por lenguaje o tipo de archivo.

Las reglas específicas deberán ubicarse después de la base para sobrescribir únicamente lo necesario.

## Reglas tecnológicas

### PHP y Laravel

Cuatro espacios para archivos PHP, PHTML y Blade.

### Node.js y frontend

Dos espacios para JavaScript, TypeScript, JSON, CSS, HTML, Vue, Svelte, YAML y archivos relacionados.

### Go

Tabulaciones y compatibilidad con `gofmt`.

### Shell

Dos espacios.

### SQL

Cuatro espacios.

### Markdown

Se permite conservar espacios finales porque pueden representar saltos de línea explícitos.

### Makefile

Se utilizan tabulaciones en las recetas.

## Relación con formateadores

EditorConfig no reemplaza Prettier, ESLint, PHPCS, PHP-CS-Fixer, `gofmt` ni otros formateadores. Las reglas deberán ser compatibles y no contradictorias.

## Docker y Dev Containers

El archivo deberá estar disponible dentro del contenedor junto con el código. Cuando el editor requiera soporte adicional, la extensión correspondiente deberá declararse en `.devcontainer/devcontainer.json`.

## Gobernanza

Toda modificación deberá:

- revisarse como cambio de configuración;
- justificar su impacto;
- preservar consistencia;
- respetar la convención del lenguaje;
- quedar en un commit específico o claramente identificable.

## Validación

Se deberá comprobar:

- ubicación en la raíz;
- `root = true`;
- UTF-8;
- LF;
- nueva línea final;
- espacios finales;
- reglas tecnológicas;
- compatibilidad con formateadores;
- funcionamiento desde Windows y Docker;
- ausencia de cambios masivos accidentales.

Se recomienda utilizar `git diff --check` y revisión del diff.

## Excepciones

Toda excepción deberá justificarse, limitarse al patrón necesario, documentarse y aprobarse. Las preferencias personales no constituyen una excepción válida.

## Fuente de verdad

`standards/software-development/editorconfig-standard/`
