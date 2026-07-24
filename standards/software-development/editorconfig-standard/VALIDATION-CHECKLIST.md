# Validation Checklist

## Ubicación

- [ ] Existe un único `.editorconfig` en la raíz.
- [ ] Contiene `root = true`.
- [ ] Está versionado en Git.

## Base transversal

- [ ] `charset = utf-8`.
- [ ] `end_of_line = lf`.
- [ ] `insert_final_newline = true`.
- [ ] `trim_trailing_whitespace = true`.
- [ ] La indentación predeterminada usa espacios.

## Tecnologías

- [ ] PHP y Laravel usan cuatro espacios.
- [ ] Node.js, frontend y YAML usan dos espacios.
- [ ] Go utiliza tabulaciones.
- [ ] Makefile utiliza tabulaciones.
- [ ] Shell utiliza dos espacios.
- [ ] SQL utiliza cuatro espacios.
- [ ] Markdown conserva espacios finales únicamente por su semántica.

## Integración y Git

- [ ] No entra en conflicto con los formateadores.
- [ ] Funciona desde Windows y Docker.
- [ ] Se ejecutó `git diff --check`.
- [ ] Se revisó el diff.
- [ ] No se produjeron cambios masivos accidentales.

## Resultado

- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado.
