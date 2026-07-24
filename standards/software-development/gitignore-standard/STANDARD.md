# GitIgnore Standard

## 1. Identificación

- **ID:** JPEF-STD-GITIGNORE-001
- **Versión:** 1.0.0
- **Estado:** Aprobado
- **Publicación:** Pendiente de revisión local
- **Nivel:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Aprobado por:** CEO, Jhon Harold Pizarro
- **Fecha:** 2026-07-24

## 2. Propósito

Definir qué archivos y carpetas deben versionarse o excluirse para preservar seguridad, reproducibilidad, trazabilidad y compatibilidad con Docker.

## 3. Regla primordial de seguridad

Todo archivo con secretos, credenciales o información privada debe ignorarse siempre, tanto en desarrollo como en producción.

Incluye `.env` reales, claves SSH, certificados privados, archivos `.pem`, `.key`, `.pfx`, tokens, contraseñas, credenciales de servicios y archivos de autenticación.

El repositorio solo podrá contener ejemplos o plantillas sin datos reales. Esta regla prevalece sobre cualquier otra.

## 4. Variables de entorno

- Excluir `.env` reales.
- Incluir `.env.example`.
- Usar datos de demostración o marcadores como `xxxxxxxx`.
- Indicar, cuando aplique, la longitud mínima esperada.
- Nunca incluir secretos reales.

## 5. Artefactos generados

Se excluirán los archivos que puedan reconstruirse automáticamente desde código fuente, configuración, lockfiles, Docker, procesos de build, pipelines o comandos documentados.

Se versionarán los artefactos que actúen como fuente de verdad, controlen versiones, definan cambios de infraestructura o base de datos, o sean indispensables para reproducir el proyecto.

Las entregas compiladas deben almacenarse como artefactos de publicación, no como código fuente.

## 6. Dependencias y lockfiles

Se ignoran `node_modules/`, `vendor/`, cachés y dependencias descargadas localmente.

Se versionan `package.json`, lockfiles de Node, `composer.json`, `composer.lock`, `go.mod`, `go.sum` y equivalentes.

## 7. Docker y Dev Containers

No se ignora ningún archivo necesario para reconstruir Docker.

Se versionan, según aplique: Dockerfile, Dockerfile.dev, Dockerfile.prod, Compose, `.dockerignore`, `.devcontainer/`, `.vscode/` compartido, entrypoints, Makefile, `php/`, `sql/`, scripts de instalación, arranque e inicialización y `.env.example`.

Las extensiones de VS Code deben declararse normalmente en `.devcontainer/devcontainer.json`. El Dockerfile instala runtimes, herramientas y dependencias del sistema o lenguaje.

## 8. Visual Studio Code

`.vscode/` no se ignora completamente.

Se versionan extensiones compartidas, tareas, depuración y ajustes comunes. Se ignoran preferencias personales, temporales, rutas locales, configuraciones específicas de una máquina e información sensible.

## 9. Pruebas, cobertura y calidad

Se versionan el código de pruebas, su configuración, reglas, comandos, umbrales, exclusiones e integración CI/CD.

Se ignoran en ambos entornos resultados de Playwright y PHPUnit, capturas, videos, trazas, cobertura generada, `coverage/`, reportes HTML/XML/JSON/SARIF, logs de análisis, reportes de pipeline y artefactos temporales.

Cuando se requiera conservarlos, deben almacenarse como artefactos del pipeline o evidencia externa.

## 10. Logs, caché, temporales y sistema operativo

Se ignoran siempre logs, cachés, temporales, sesiones locales, swap, depuración generada, `.DS_Store`, `Thumbs.db`, `desktop.ini` y configuraciones personales del editor.

## 11. Compilados, binarios y distribución

Se ignoran, cuando sean regenerables, CSS y JavaScript compilados, `dist/`, `build/`, binarios, ejecutables, paquetes comprimidos e instaladores.

Solo podrán versionarse mediante excepción técnica explícita y documentada.

## 12. Datos, volúmenes y bases de datos

### Desarrollo

Pueden conservarse datos locales controlados, volúmenes materializados o dumps sanitizados cuando aceleren la instalación o reconstrucción.

### Producción

Se ignoran datos locales, volúmenes materializados, dumps generados, exportaciones y artefactos de ejecución.

### Ambos entornos

Se versionan scripts SQL controlados, migraciones, seeds, fixtures y datos de prueba controlados.

### Backups

Nunca se versionan.

## 13. Recursos multimedia y estáticos

En Laravel, Node.js, Go y PHP se versionan imágenes fuente, fuentes, iconos, CSS fuente, JavaScript fuente y recursos estáticos oficiales. Se ignoran archivos subidos por usuarios durante la ejecución y versiones derivadas regenerables.

En WordPress se versiona `wordpress/wp-content/` completa, incluidos `themes/`, `plugins/` y `uploads/`. Dentro de ella solo se ignoran cachés, backups, logs, temporales, actualizaciones y artefactos regenerables.

## 14. Núcleo de WordPress

Cuando el núcleo pueda reconstruirse desde Docker o un proceso automatizado se ignoran `wp-admin/`, `wp-includes/`, archivos principales del núcleo, paquetes temporales de actualización y descargas automáticas.

Se versionan `wp-content/`, temas y plugins propios o controlados, uploads, configuración Docker, plantillas y scripts de instalación.

Toda modificación directa del núcleo es una excepción técnica documentada.

## 15. Laravel

Se versiona la estructura necesaria de `storage/`, sus `.gitignore` internos, configuraciones y `bootstrap/cache/.gitignore`.

Se ignoran `storage/logs/*`, `storage/framework/cache/*`, `storage/framework/sessions/*`, `storage/framework/views/*`, temporales de `bootstrap/cache/`, `public/storage` y archivos generados en `storage/app/`, salvo datos controlados de prueba.

## 16. Go

Se versionan `go.mod`, `go.sum`, código, configuración, scripts SQL, Makefile, Docker, Compose, Dev Container, VS Code compartido, migraciones, seeds y fixtures.

Se ignoran binarios, ejecutables, builds, cobertura, perfiles CPU/memoria, resultados de pruebas, logs, temporales y artefactos generados por `go build` o `go test`.

## 17. Node.js

Se versionan manifiestos, lockfile, código, configuraciones de npm/Vite/Webpack/ESLint/TypeScript/pruebas, Docker, Compose, Dev Container y scripts.

Se ignoran `node_modules/`, `dist/`, `build/`, cachés, logs, cobertura, resultados de pruebas, temporales, `.env` reales y paquetes generados.

## 18. PHP y Composer

Se versionan `composer.json`, `composer.lock`, código, configuración PHP, pruebas, calidad, Docker, Compose, Dev Container, scripts, migraciones, seeds y fixtures.

Se ignoran `vendor/`, caché de Composer, logs, temporales, resultados de PHPUnit, cobertura, reportes, `.env` reales y builds regenerables.

## 19. Documentación generada

Se versionan Markdown, documentación fuente, configuración documental, diagramas editables y scripts de generación.

Se ignoran HTML generado, carpetas de salida, documentación compilada, exportaciones regenerables y reportes derivados.

## 20. Infraestructura y CI/CD

Se versionan pipelines, GitHub Actions, Azure DevOps, infraestructura como código, scripts de despliegue, plantillas, variables de ejemplo sin secretos y configuración Docker o de servicios.

Se ignoran credenciales, tokens, estados generados, planes temporales, logs de despliegue, artefactos de pipelines, archivos locales de infraestructura e información sensible de producción.

## 21. Configuraciones locales y overrides

Los overrides compartidos, reproducibles y necesarios pueden versionarse.

Se ignoran overrides personales o específicos de una máquina, rutas locales, puertos particulares, credenciales y secretos. Cuando sea útil, se incluye un archivo `.example`.

## 22. Arquitectura por capas

El estándar se materializa mediante:

1. base global obligatoria;
2. reglas específicas por tecnología;
3. excepciones documentadas.

Cada proyecto tendrá un único `.gitignore` en su raíz. No se copiará indiscriminadamente uno de otro proyecto.

## 23. Gobernanza

Toda modificación al `.gitignore` debe revisarse como cambio de configuración, justificar qué incluye o excluye, por qué es necesario y qué riesgo evita.

Los cambios deben quedar en un commit específico o claramente identificable. Ninguna excepción puede contradecir la regla primordial de seguridad.

## 24. Validación obligatoria

Todo `.gitignore` debe validarse antes de aprobarse.

Debe confirmarse que:

- secretos y `.env` reales están ignorados;
- Docker, Dev Containers, CI/CD, lockfiles, migraciones, seeds y configuraciones siguen versionados;
- dependencias, resultados, logs, cachés, cobertura y builds están ignorados;
- las excepciones funcionan;
- el proyecto puede clonarse y reconstruirse sin archivos locales ocultos.

Se utilizarán como mínimo `git status` y `git check-ignore`.

## 25. Excepciones

Toda excepción debe documentarse, justificarse técnicamente, identificar riesgos, preservar la reproducibilidad, respetar la seguridad y aprobarse mediante el gobierno del Framework.
