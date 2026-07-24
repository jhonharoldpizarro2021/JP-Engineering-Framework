# Docker Development Standard

Paquete de implementación para revisión local del estándar de entornos de desarrollo Docker del **JP Engineering Framework**.

## Estado

- Estándar funcional: **aprobado**
- Nivel de cumplimiento: **obligatorio**
- Implementación documental: **lista para revisión**
- Publicación en el repositorio: **pendiente de aprobación final del paquete**

## Objetivo

Garantizar que todos los proyectos del Framework dispongan de un entorno de desarrollo:

- aislado;
- reproducible;
- identificable;
- portable;
- consistente;
- independiente de instalaciones globales en Windows.

## Contenido del paquete

- `STANDARD.md`: definición normativa del estándar.
- `README.md`: guía general del paquete.
- `CHANGELOG.md`: historial de cambios.
- `metadata.yml`: metadatos del estándar.
- `IMPLEMENTATION-MANIFEST.md`: archivos creados y destino recomendado.
- `VALIDATION-CHECKLIST.md`: criterios para revisar una implementación.
- `IDEAS-BACKLOG.md`: mejoras futuras que no forman parte de esta versión.
- `templates/base/`: plantilla reutilizable para nuevos proyectos.
- `examples/`: ejemplos de configuración para WordPress, Laravel y Go.

## Regla principal

Todo proyecto deberá tener un contenedor de desarrollo con un nombre explícito, estable y relacionado con el proyecto. Al abrir la carpeta raíz en Visual Studio Code, el editor deberá conectarse al contenedor correspondiente, el cual deberá estar activo e identificable en Docker Desktop.

## Revisión recomendada

1. Revisar `STANDARD.md`.
2. Revisar la convención de nombres.
3. Validar las plantillas.
4. Confirmar que las extensiones propuestas son adecuadas.
5. Ajustar las rutas de integración según la estructura real del repositorio.
6. Aprobar el paquete antes de pasarlo al desarrollador.

## Destino sugerido

`standards/docker-development-standard/`

El destino exacto debe ajustarse a la estructura vigente del repositorio antes de integrar.
