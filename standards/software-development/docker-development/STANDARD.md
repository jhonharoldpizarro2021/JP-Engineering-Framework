# Docker Development Standard

## 1. Identificación

- **ID:** JPEF-STD-DOCKER-DEV-001
- **Versión:** 1.0.0
- **Estado del estándar:** Aprobado
- **Estado de publicación:** Pendiente de revisión del paquete
- **Nivel de cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Aprobado por:** CEO, Jhon Harold Pizarro
- **Fecha de aprobación:** 2026-07-24

## 2. Propósito

Definir las reglas mínimas que debe cumplir todo entorno de desarrollo basado en Docker dentro del JP Engineering Framework.

El estándar busca asegurar reproducibilidad, aislamiento, consistencia, portabilidad y escalabilidad operativa entre proyectos construidos con diferentes lenguajes, frameworks y herramientas.

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

Cada proyecto debe transportar consigo su propio entorno de desarrollo, de modo que pueda abrirse, ejecutarse y mantenerse de manera consistente sin depender de la configuración particular del equipo anfitrión.

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

La convención recomendada para esta versión es:

`jpef-<project-slug>-dev`

Ejemplos:

- `jpef-wordpress-portfolio-dev`
- `jpef-laravel-tps-dev`
- `jpef-go-course-dev`

### 6.2 Apertura de Visual Studio Code dentro del contenedor

Al abrir la carpeta raíz del proyecto en Visual Studio Code, el desarrollador deberá poder trabajar conectado al contenedor de desarrollo correspondiente.

La configuración deberá residir en el repositorio, preferiblemente mediante:

- `.devcontainer/devcontainer.json`;
- Docker Compose;
- un `Dockerfile` de desarrollo;
- archivos complementarios versionables.

### 6.3 Contenedor activo en Docker Desktop

Mientras el proyecto esté en uso:

- el contenedor deberá aparecer activo en Docker Desktop;
- su nombre deberá permitir identificar inmediatamente el proyecto;
- el desarrollador deberá poder distinguirlo de otros entornos activos.

### 6.4 Sincronización del código

La carpeta del proyecto deberá estar montada dentro del contenedor.

Los cambios realizados en Visual Studio Code deberán reflejarse inmediatamente en el sistema de archivos del contenedor.

El montaje deberá preservar una experiencia de desarrollo estable y evitar copias manuales del código.

### 6.5 Dependencias aisladas

Las herramientas y dependencias necesarias para desarrollar el proyecto deberán ejecutarse dentro del entorno Docker siempre que sea técnicamente viable.

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

### 6.7 Reproducibilidad

El entorno deberá poder reconstruirse a partir de los archivos versionados del proyecto.

Una instalación nueva deberá poder recuperar:

- imagen de desarrollo;
- servicios;
- variables documentadas;
- extensiones;
- herramientas;
- configuración de trabajo.

No deberán versionarse secretos reales.

### 6.8 Independencia tecnológica

Las reglas de este estándar aplican sin importar el lenguaje o framework.

Cada tecnología podrá definir una implementación particular, pero no podrá omitir los requisitos obligatorios de identificación, apertura en contenedor, sincronización, aislamiento y reproducibilidad.

## 7. Requisitos recomendados

### 7.1 Separación entre desarrollo y producción

Cuando el proyecto lo requiera, se recomienda utilizar configuraciones diferentes para desarrollo y producción.

Ejemplos:

- `Dockerfile`
- `Dockerfile.prod`
- `compose.dev.yml`
- `compose.prod.yml`

Las herramientas de depuración, extensiones y utilidades de desarrollo no deberían incluirse en la imagen final de producción.

### 7.2 Automatización

Se recomienda encapsular comandos frecuentes mediante:

- `Makefile`;
- scripts;
- tareas de Visual Studio Code;
- comandos documentados.

### 7.3 Persistencia

Los datos que deban sobrevivir a la recreación de contenedores deberán almacenarse mediante volúmenes o mecanismos equivalentes.

La estrategia deberá definirse por proyecto.

### 7.4 Archivos ignorados

Cada proyecto deberá utilizar `.dockerignore` para excluir contenido innecesario durante la construcción de imágenes.

También deberá mantener un `.gitignore` adecuado para impedir el versionamiento de secretos, datos locales, artefactos y dependencias no requeridas.

## 8. Archivos mínimos esperados

Una implementación típica deberá incluir, según corresponda:

- `Dockerfile`;
- `docker-compose.yml` o `compose.yml`;
- `.devcontainer/devcontainer.json`;
- `.dockerignore`;
- `.env.example`;
- documentación de arranque;
- scripts o comandos de validación.

No todos los proyectos requieren exactamente la misma estructura, pero cualquier excepción deberá preservar los requisitos funcionales del estándar.

## 9. Criterios de aceptación

Una implementación cumple el estándar cuando:

1. El contenedor tiene un nombre definido y reconocible.
2. Visual Studio Code puede abrir la carpeta del proyecto dentro del contenedor.
3. El contenedor aparece activo en Docker Desktop.
4. Los cambios del código se reflejan dentro del contenedor.
5. Las dependencias del proyecto no requieren instalación global en Windows.
6. Las extensiones necesarias están declaradas por proyecto.
7. El entorno puede reconstruirse desde los archivos versionados.
8. Los secretos reales no se encuentran en el repositorio.
9. La aplicación puede ejecutarse y validarse dentro del entorno Docker.

## 10. Evidencias de cumplimiento

La revisión deberá conservar evidencias suficientes, por ejemplo:

- captura del contenedor activo en Docker Desktop;
- captura de Visual Studio Code conectado al contenedor;
- salida de terminal que demuestre el entorno;
- prueba de sincronización de un archivo;
- ejecución correcta de la aplicación;
- revisión de extensiones instaladas;
- reconstrucción satisfactoria del entorno.

## 11. Excepciones

Una excepción solamente podrá aceptarse cuando:

- exista una limitación técnica verificable;
- se documente la causa;
- se defina una medida alternativa;
- se apruebe dentro del flujo de gobierno del Framework.

Las preferencias personales del desarrollador no constituyen por sí solas una excepción válida.

## 12. Integración con otros estándares

Este estándar deberá relacionarse posteriormente con:

- Git Workflow Standard;
- GitIgnore Standard;
- EditorConfig Standard;
- Security Development Standard;
- Documentation Standard;
- Starter Kits del Framework.

## 13. Pilar de escalabilidad

El aislamiento del entorno por proyecto permite:

- incorporar nuevos desarrolladores con menor fricción;
- ejecutar tecnologías diferentes en la misma máquina;
- reducir conflictos entre versiones;
- reproducir incidentes;
- automatizar validaciones;
- transferir proyectos entre equipos;
- evolucionar los Starter Kits sin depender del sistema anfitrión.

Por estas razones, el entorno Docker autocontenido se establece como uno de los pilares oficiales de escalabilidad del JP Engineering Framework.
