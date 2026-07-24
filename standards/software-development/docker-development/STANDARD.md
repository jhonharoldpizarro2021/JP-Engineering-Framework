# Docker Development Standard

## 1. Identificación

- **ID:** JPEF-STD-DOCKER-DEV-001
- **Versión:** 1.1.0
- **Estado del estándar:** Aprobado
- **Estado de publicación:** Listo para integración
- **Nivel de cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Aprobado por:** CEO, Jhon Harold Pizarro
- **Fecha de aprobación inicial:** 2026-07-24
- **Fecha de actualización:** 2026-07-24

## 2. Propósito

Definir las reglas mínimas que debe cumplir todo entorno basado en Docker dentro del JP Engineering Framework.

El estándar busca asegurar reproducibilidad, aislamiento, consistencia, portabilidad, seguridad y escalabilidad operativa entre proyectos construidos con diferentes lenguajes, frameworks y herramientas.

## 3. Alcance

Este estándar aplica a todos los proyectos presentes y futuros del Framework, incluidos, entre otros:

- WordPress;
- Laravel;
- PHP;
- Go;
- Node.js;
- servicios de bases de datos;
- herramientas auxiliares;
- tecnologías que se incorporen posteriormente.

## 4. Principio rector

Cada proyecto debe transportar consigo su propio entorno Docker, de modo que pueda abrirse, construirse, ejecutarse, probarse y mantenerse de manera consistente sin depender de la configuración particular del equipo anfitrión.

Este principio constituye uno de los pilares de escalabilidad del JP Engineering Framework.

## 5. Niveles normativos

- **Obligatorio:** requisito que debe cumplirse.
- **Recomendado:** práctica que debe adoptarse salvo justificación documentada.
- **Opcional:** capacidad permitida según las necesidades del proyecto.

## 6. Requisitos obligatorios

### 6.1 Contenedor de desarrollo identificable

Cada proyecto deberá disponer de un contenedor principal de desarrollo con un nombre:

- explícito;
- estable;
- legible;
- relacionado con el proyecto;
- diferente al de otros proyectos activos.

La convención recomendada es:

`jpef-<proyecto>-dev`

Ejemplos:

- `jpef-wordpress-portfolio-dev`
- `jpef-laravel-tps-dev`
- `jpef-go-course-dev`

### 6.2 Apertura de Visual Studio Code dentro del contenedor

Al abrir la carpeta raíz del proyecto en Visual Studio Code, el desarrollador deberá poder trabajar conectado al contenedor de desarrollo correspondiente.

La configuración deberá residir en el repositorio mediante:

- `.devcontainer/devcontainer.json`;
- archivos Docker Compose;
- un Dockerfile de desarrollo o una etapa `development`;
- archivos complementarios versionables.

### 6.3 Contenedor activo e identificable

Mientras el proyecto esté en uso:

- el contenedor deberá aparecer activo en Docker Desktop;
- su nombre deberá permitir identificar inmediatamente el proyecto;
- el desarrollador deberá poder distinguirlo de otros entornos activos.

### 6.4 Sincronización del código

La carpeta del proyecto deberá estar montada dentro del contenedor de desarrollo.

Los cambios realizados en Visual Studio Code deberán reflejarse inmediatamente en el sistema de archivos del contenedor.

El montaje deberá preservar una experiencia de desarrollo estable y evitar copias manuales del código.

La imagen de producción no deberá depender de bind mounts del código fuente.

### 6.5 Dependencias aisladas

Las herramientas y dependencias necesarias para desarrollar, construir, probar y ejecutar el proyecto deberán instalarse y utilizarse dentro de Docker siempre que sea técnicamente viable.

No deberá exigirse la instalación global en Windows de:

- PHP;
- Composer;
- Go;
- Node.js;
- gestores de paquetes;
- servidores web;
- motores de bases de datos;
- herramientas específicas del proyecto.

Docker Desktop, Git y Visual Studio Code podrán permanecer como herramientas anfitrionas.

### 6.6 Extensiones de Visual Studio Code por proyecto

Las extensiones necesarias para trabajar con la tecnología del proyecto deberán declararse en la configuración del Dev Container.

Cada proyecto deberá instalar únicamente las extensiones que requiera.

La configuración del editor deberá formar parte del repositorio y no depender exclusivamente del perfil global del desarrollador.

### 6.7 Reproducibilidad universal

Todo proyecto deberá proporcionar una configuración Docker reproducible e independiente del equipo anfitrión.

Docker deberá crear e instalar automáticamente:

- runtimes;
- dependencias;
- servicios;
- extensiones;
- configuraciones;
- permisos;
- directorios;
- recursos necesarios para ejecutar el proyecto.

También deberá:

- utilizar versiones explícitas de imágenes, lenguajes y servicios;
- instalar dependencias dentro de los contenedores;
- conservar lockfiles versionados;
- incluir configuraciones compartidas;
- proporcionar `.env.example` sin secretos;
- automatizar instalación e inicialización;
- declarar healthchecks cuando corresponda;
- declarar dependencias entre servicios;
- crear permisos y directorios necesarios;
- estandarizar los comandos operativos;
- automatizar bases de datos, esquemas, migraciones y datos iniciales cuando corresponda.

No podrán existir dependencias ocultas instaladas únicamente en la máquina del desarrollador.

### 6.8 Independencia tecnológica

Las reglas de este estándar aplican sin importar el lenguaje o framework.

Cada tecnología podrá definir una implementación particular, pero no podrá omitir los requisitos obligatorios de:

- identificación;
- apertura en contenedor;
- sincronización;
- aislamiento;
- reproducibilidad;
- separación de entornos;
- seguridad.

### 6.9 Separación obligatoria entre desarrollo y producción

Todo proyecto deberá disponer de configuraciones Docker claramente separadas para desarrollo y producción.

El entorno de desarrollo podrá incluir:

- herramientas de depuración;
- hot reload;
- bind mounts;
- dependencias de desarrollo;
- puertos auxiliares;
- extensiones y utilidades para el desarrollador.

El entorno de producción deberá:

- utilizar una imagen optimizada;
- instalar únicamente dependencias productivas;
- utilizar configuración segura;
- ejecutarse sin herramientas de depuración;
- evitar bind mounts del código fuente;
- ejecutar el proceso principal de la aplicación;
- reducir privilegios y superficie de ataque cuando sea viable.

La separación deberá cubrir como mínimo:

- Dockerfiles o etapas de construcción;
- archivos Compose;
- variables de entorno;
- dependencias;
- volúmenes;
- comandos de ejecución;
- puertos;
- herramientas de depuración;
- configuración de seguridad.

Producción no podrá depender de `compose.dev.yml`, bind mounts ni herramientas instaladas únicamente para desarrollo.

### 6.10 Arquitectura transversal y tecnológica

La configuración Docker deberá organizarse en dos capas:

1. **Capa transversal:** reglas comunes de reproducibilidad, variables, redes, volúmenes, seguridad, healthchecks, scripts, comandos y separación de ambientes.
2. **Capa tecnológica:** instalación y configuración específica de WordPress, Laravel, PHP, Node.js, Go u otra tecnología.

La capa tecnológica podrá extender la capa transversal, pero no contradecirla ni eliminar sus controles obligatorios.

### 6.11 Estructura transversal mínima

Todo proyecto deberá incluir, según corresponda:

- `compose.yml` como configuración común;
- `compose.dev.yml` para desarrollo;
- `compose.prod.yml` para producción;
- `Dockerfile` multietapa con objetivos `development` y `production`, o `Dockerfile.dev` y `Dockerfile.prod`;
- `.env.example`;
- `.dockerignore`;
- `.devcontainer/`;
- `docker/` para configuraciones por tecnología o servicio;
- `scripts/` para instalación, inicialización, migraciones, pruebas y arranque;
- `Makefile` para comandos comunes.

La configuración común deberá centralizarse en una capa reutilizable.

Desarrollo y producción deberán complementar esa base sin duplicar innecesariamente servicios ni mezclar dependencias, volúmenes, comandos o herramientas exclusivas de cada entorno.

### 6.12 Comandos mínimos obligatorios

Todo proyecto deberá ofrecer una interfaz de comandos equivalente a:

- `make build`
- `make up`
- `make down`
- `make restart`
- `make logs`
- `make shell`
- `make install`
- `make test`

Cuando una plataforma no permita utilizar Make directamente, deberá proporcionar comandos equivalentes, documentados y consistentes.

## 7. Requisitos recomendados

### 7.1 Automatización adicional

Se recomienda encapsular comandos adicionales mediante:

- scripts;
- tareas de Visual Studio Code;
- comandos documentados;
- pipelines.

### 7.2 Persistencia

Los datos que deban sobrevivir a la recreación de contenedores deberán almacenarse mediante volúmenes o mecanismos equivalentes.

La estrategia deberá definirse por proyecto y diferenciar datos de desarrollo de datos productivos.

### 7.3 Healthchecks

Los servicios críticos deberían disponer de healthchecks que permitan determinar si están listos antes de que otros servicios dependan de ellos.

### 7.4 Imágenes

Se recomienda:

- utilizar imágenes oficiales o verificadas;
- fijar versiones explícitas;
- reducir capas innecesarias;
- utilizar builds multietapa;
- ejecutar producción con usuario no privilegiado;
- revisar periódicamente vulnerabilidades y actualizaciones.

## 8. Archivos ignorados

Cada proyecto deberá utilizar `.dockerignore` para excluir contenido innecesario, sensible o regenerable durante la construcción de imágenes.

También deberá mantener un `.gitignore` conforme al GitIgnore Standard para impedir el versionamiento de secretos, datos locales, artefactos y dependencias no requeridas.

## 9. Archivos mínimos esperados

Una implementación deberá incluir, según corresponda:

- `Dockerfile`;
- `compose.yml`;
- `compose.dev.yml`;
- `compose.prod.yml`;
- `.devcontainer/devcontainer.json`;
- `.dockerignore`;
- `.env.example`;
- `Makefile`;
- `scripts/`;
- documentación de arranque;
- comandos de validación.

Cualquier excepción deberá preservar los requisitos funcionales, de seguridad y reproducibilidad del estándar.

## 10. Criterios de aceptación

Una implementación cumple el estándar cuando:

1. El contenedor tiene un nombre definido y reconocible.
2. Visual Studio Code abre la carpeta dentro del contenedor.
3. El contenedor aparece activo e identificable.
4. Los cambios del código se reflejan dentro del contenedor de desarrollo.
5. Las dependencias no requieren instalación global en Windows.
6. Las extensiones necesarias están declaradas por proyecto.
7. El entorno puede reconstruirse desde archivos versionados.
8. Los secretos reales no se encuentran en el repositorio.
9. La aplicación puede ejecutarse y validarse dentro de Docker.
10. Desarrollo y producción se construyen y ejecutan independientemente.
11. Producción no contiene herramientas exclusivas de desarrollo.
12. Producción no depende de bind mounts del código.
13. La estructura transversal está presente.
14. Los comandos mínimos están disponibles.
15. Una persona nueva puede ejecutar el proyecto siguiendo únicamente la documentación versionada.

## 11. Evidencias de cumplimiento

La revisión deberá conservar evidencias suficientes, por ejemplo:

- captura del contenedor activo;
- captura de Visual Studio Code conectado;
- salida de terminal;
- prueba de sincronización;
- ejecución de la aplicación;
- revisión de extensiones;
- reconstrucción satisfactoria;
- construcción independiente de desarrollo;
- construcción independiente de producción;
- inspección de las dependencias de producción;
- ejecución de los comandos mínimos;
- resultado de healthchecks cuando apliquen.

## 12. Excepciones

Una excepción solamente podrá aceptarse cuando:

- exista una limitación técnica verificable;
- se documente la causa;
- se identifique el riesgo;
- se defina una medida alternativa;
- se preserve la seguridad y reproducibilidad;
- se apruebe dentro del flujo de gobierno del Framework.

Las preferencias personales del desarrollador no constituyen por sí solas una excepción válida.

## 13. Integración con otros estándares

Este estándar se relaciona con:

- Git Workflow Standard;
- GitIgnore Standard;
- EditorConfig Standard;
- Security Development Standard;
- Documentation Standard;
- Testing Standard;
- CI/CD Standard;
- Starter Kits del Framework.

## 14. Pilar de escalabilidad

El aislamiento y la reproducibilidad por proyecto permiten:

- incorporar nuevos desarrolladores con menor fricción;
- ejecutar tecnologías diferentes en la misma máquina;
- reducir conflictos entre versiones;
- reproducir incidentes;
- automatizar validaciones;
- transferir proyectos entre equipos;
- evolucionar Starter Kits;
- producir imágenes distintas para desarrollo y producción;
- evitar dependencias ocultas del equipo anfitrión.

Por estas razones, el entorno Docker autocontenido y separado por ambiente se establece como uno de los pilares oficiales de escalabilidad del JP Engineering Framework.

## 15. Historial normativo

### 1.1.0 — 2026-07-24

- Convierte en obligatoria la separación entre desarrollo y producción.
- Formaliza la reproducibilidad universal independiente del lenguaje.
- Define las capas transversal y tecnológica.
- Establece la estructura mínima de archivos.
- Establece los comandos mínimos obligatorios.

### 1.0.0 — 2026-07-24

- Primera versión aprobada.
- Define identificación, Dev Containers, sincronización, aislamiento y reproducibilidad.
