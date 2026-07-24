---
id: JP-EF-GIT-STD-001
title: Git Workflow Standard
version: 1.0.0
status: Approved
framework: JP Engineering Framework
category: Engineering Standards
domain: Source Control and Delivery Workflow
owner: Project Director
approval_authority: CEO
language: es
publication_state: Ready for Integration
created_at: 2026-07-24
last_reviewed_at: 2026-07-24
review_cycle: Annual or upon material workflow change
compliance_levels:
  - Mandatory
  - Recommended
  - Optional
applies_to:
  - Software development projects
  - WordPress projects
  - Laravel and backend projects
  - Frontend projects
  - Infrastructure and automation repositories
  - Documentation repositories
---

# Git Workflow Standard v1.0

## JP Engineering Framework

## Índice

1. Propósito
2. Alcance
3. Principios rectores
4. Roles y responsabilidades
5. Modelo oficial de ramas
6. Reglas de sincronización del repositorio
7. Creación y gestión de ramas de trabajo
8. Convenciones de nombres
9. Desarrollo local y control de cambios
10. Commits
11. Pull Requests
12. Revisión de código
13. Resolución de conflictos
14. Integración en Development
15. Evidencias y validación técnica
16. Promoción a QA
17. Quality Gate
18. Validación funcional, cliente y producción
19. Despliegues
20. Hotfixes, excepciones y contingencias
21. Cumplimiento, cierre y mantenimiento del estándar

---

# 1. Propósito

El Git Workflow Standard define el flujo oficial de control de versiones, colaboración, integración, validación, promoción y entrega de cambios dentro del JP Engineering Framework.

Su objetivo es asegurar que todo cambio realizado sobre un repositorio sea trazable, revisable, verificable y desplegable de forma controlada, reduciendo riesgos operativos, conflictos de integración, pérdida de información, defectos en ambientes compartidos y despliegues sin evidencia.

Este estándar establece una disciplina común para equipos, proyectos, clientes y tecnologías diferentes, sin depender de una herramienta específica de gestión de tareas o de una plataforma concreta de alojamiento Git.

# 2. Alcance

Este estándar aplica a todos los repositorios administrados bajo el JP Engineering Framework, incluyendo código fuente, infraestructura, automatizaciones, configuración, documentación técnica, temas y plugins de WordPress, aplicaciones Laravel y backend, frontend, scripts de base de datos, pipelines, starter kits y activos reutilizables.

El estándar cubre el flujo desde la incorporación del desarrollador y la preparación del entorno hasta la integración, validación, promoción, despliegue, documentación y cierre.

Las particularidades de cada proyecto pueden complementar este estándar, pero no deben contradecir sus controles obligatorios sin una excepción formalmente aprobada.

# 3. Principios rectores

## 3.1 Trazabilidad

Cada cambio debe poder relacionarse con una necesidad, ticket, incidente, solicitud, tarea o propósito verificable.

## 3.2 Integración controlada

Ningún cambio debe incorporarse directamente a una rama protegida sin pasar por el mecanismo de revisión e integración definido.

## 3.3 Sincronización previa

Antes de iniciar o continuar trabajo relevante, el desarrollador debe sincronizar su repositorio local con la rama base correspondiente.

## 3.4 Evidencia verificable

La aprobación técnica y funcional debe sustentarse en evidencia obtenida sobre ambientes desplegados cuando el flujo del proyecto disponga de dichos ambientes.

## 3.5 Separación de responsabilidades

Desarrollo, revisión, validación, promoción y autorización de producción son actividades diferenciadas.

## 3.6 Automatización preferida

Los procesos repetibles de validación, integración y despliegue deben automatizarse cuando sea técnica y económicamente viable.

## 3.7 Interrupción ante fallos

Una falla en pruebas, pipeline, Quality Gate o validación bloquea la integración o promoción hasta que sea corregida.

## 3.8 Adaptabilidad gobernada

El estándar admite variaciones por cliente, SLA, criticidad, arquitectura o restricciones operativas, siempre que sean documentadas y aprobadas.

# 4. Roles y responsabilidades

## 4.1 Desarrollador

Responsable de preparar y validar su entorno, sincronizar el repositorio antes de trabajar, crear la rama desde la base correcta, implementar únicamente el alcance autorizado, ejecutar pruebas locales, mantener commits claros y trazables, crear el Pull Request, atender observaciones, resolver conflictos, adjuntar evidencia, actualizar el ticket y participar en la corrección de fallos detectados durante integración o validación.

## 4.2 Revisor técnico

Responsable de revisar el alcance, evaluar calidad, mantenibilidad, seguridad y consistencia, confirmar que no existan cambios ajenos al objetivo, solicitar ajustes cuando sean necesarios y aprobar únicamente cuando se cumplan los criterios definidos.

## 4.3 QA

Responsable de validar el cambio en el ambiente correspondiente, ejecutar las pruebas acordadas, registrar resultados, reportar defectos y aprobar o rechazar la promoción.

## 4.4 Project Manager

Responsable de coordinar prioridades y dependencias, facilitar bloqueos, coordinar ventanas de despliegue y asegurar la comunicación entre desarrollo, QA, cliente y operación.

## 4.5 Cliente o usuario validador

Responsable de validar el comportamiento funcional cuando el proyecto requiera aceptación del cliente antes de producción.

## 4.6 Responsable de producción

Responsable de autorizar o ejecutar el despliegue de acuerdo con el modelo operativo del proyecto.

## 4.7 CEO o autoridad de gobierno

Responsable de aprobar estándares, excepciones estructurales y cambios de alcance del JP Engineering Framework.

# 5. Modelo oficial de ramas

## 5.1 development

Rama principal de integración continua del equipo. Todo desarrollo ordinario debe integrarse primero en `development`.

## 5.2 QA

Rama destinada a consolidar cambios aprobados para validación formal de calidad, validación funcional y, cuando corresponda, validación del cliente.

## 5.3 master

Rama de producción. Debe contener únicamente código autorizado para producción o equivalente al estado productivo aprobado.

## 5.4 Ramas temporales

Las ramas temporales se crean para trabajo específico y deben originarse desde la rama base definida para el flujo. Pueden incluir feature, bugfix, hotfix, chore, documentation, refactor, test, integration y audit.

Las ramas temporales deben eliminarse cuando su integración haya sido completada y no exista una razón operativa para conservarlas.

# 6. Reglas de sincronización del repositorio

Antes de iniciar trabajo, el desarrollador debe confirmar la rama base, actualizar referencias remotas, sincronizar su copia local, verificar que no existan cambios locales no controlados y confirmar que la rama de trabajo se crea desde el estado correcto.

La sincronización debe repetirse antes de abrir el Pull Request y cuando existan cambios relevantes en la rama destino.

No se debe continuar desarrollo prolongado sobre una rama desactualizada sin evaluar el impacto de integración.

Cuando existan cambios locales sin confirmar, el desarrollador debe preservarlos mediante un commit válido, un mecanismo temporal seguro o una copia controlada antes de sincronizar.

# 7. Creación y gestión de ramas de trabajo

Toda rama de trabajo debe crearse desde la rama base aprobada, representar un alcance concreto, evitar mezclar funcionalidades no relacionadas, mantener una duración razonable, sincronizarse durante el desarrollo cuando la rama base cambie y enviarse al repositorio remoto cuando se requiera colaboración, respaldo o revisión.

Una rama no debe utilizarse como espacio permanente de trabajo personal.

Cuando una tarea dependa del cambio de otro desarrollador, la dependencia debe quedar registrada. El desarrollador puede continuar con actividades no bloqueadas, preparar su integración y conservar evidencia de su propio avance, pero no debe forzar una integración incompleta o alterar trabajo ajeno sin coordinación.

# 8. Convenciones de nombres

Formato recomendado:

`tipo/identificador-descripcion-corta`

Tipos recomendados: `feature`, `bugfix`, `hotfix`, `refactor`, `docs`, `test`, `chore`, `integration` y `audit`.

Reglas:

- Usar minúsculas.
- Separar palabras con guiones.
- Incluir el identificador del ticket cuando exista.
- Evitar nombres personales como único criterio.
- Evitar términos ambiguos como `changes`, `fix`, `new` o `test2`.
- No reutilizar una rama cerrada para un alcance diferente.

# 9. Desarrollo local y control de cambios

El desarrollador debe mantener el cambio dentro del alcance aprobado.

Antes de confirmar cambios debe revisar archivos modificados, nuevos y eliminados; cambios de formato no intencionales; configuraciones locales; secretos; credenciales; archivos temporales; dependencias; artefactos compilados; y cambios en esquemas o datos.

Los archivos locales, secretos y elementos no versionables deben estar cubiertos por el estándar de `.gitignore`.

Las configuraciones compartidas de formato deben respetar el estándar de `.editorconfig`.

No deben incluirse cambios adicionales aprovechando el mismo Pull Request, salvo que sean necesarios para completar el alcance y queden expresamente justificados.

# 10. Commits

Un commit debe representar una unidad lógica de cambio.

## 10.1 Reglas obligatorias

- Debe tener un mensaje comprensible.
- Debe evitar mezclar cambios no relacionados.
- No debe incluir secretos.
- No debe incluir archivos generados innecesarios.
- Debe dejar el repositorio en un estado coherente.
- Debe permitir comprender la intención del cambio.

## 10.2 Mensajes

Formato recomendado:

`tipo: descripción concreta`

Cuando exista ticket:

`tipo(identificador): descripción concreta`

Ejemplos:

- `feature(PROJ-124): add customer status filter`
- `bugfix(PROJ-131): prevent duplicate invoice creation`
- `docs: document QA promotion workflow`

## 10.3 Reescritura de historial

No se debe reescribir el historial de una rama compartida sin coordinación.

El uso de `force push` sobre ramas compartidas o protegidas está prohibido salvo autorización expresa y controlada.

# 11. Pull Requests

Todo cambio destinado a una rama permanente debe pasar por Pull Request, excepto una contingencia formalmente autorizada.

El Pull Request debe incluir objetivo, ticket o referencia, resumen de cambios, archivos o módulos relevantes, pruebas ejecutadas, evidencia, riesgos, dependencias, consideraciones de despliegue, cambios de base de datos, configuración o infraestructura y criterios de reversión cuando aplique.

El título debe describir claramente el cambio.

El Pull Request no debe presentarse como listo cuando la compilación falla, las pruebas locales fallan, existen conflictos conocidos, faltan dependencias, el alcance está incompleto, la evidencia requerida no está disponible o incluye cambios no revisados por el autor.

Los Pull Requests en borrador pueden utilizarse para colaboración temprana, pero no deben confundirse con una solicitud formal de integración.

# 12. Revisión de código

La revisión debe evaluar correspondencia con el alcance, corrección funcional, calidad del diseño, legibilidad, mantenibilidad, seguridad, rendimiento, manejo de errores, pruebas, compatibilidad, configuración, migraciones, documentación, impacto operativo y ausencia de cambios ajenos.

El revisor debe distinguir entre bloqueos obligatorios, recomendaciones y mejoras opcionales.

La aprobación no debe otorgarse por compromiso social, urgencia informal o confianza personal.

El autor debe responder a cada observación, aplicar los ajustes o justificar técnicamente por qué no corresponde.

Cuando el cambio sea actualizado después de la aprobación, debe evaluarse si la aprobación requiere renovación.

# 13. Resolución de conflictos

Los conflictos deben resolverse comprendiendo la intención de ambas versiones. No se deben eliminar cambios automáticamente para hacer que compile.

Proceso requerido:

1. Identificar los archivos en conflicto.
2. Revisar el origen de cada cambio.
3. Consultar al autor responsable cuando exista duda.
4. Determinar la solución funcional correcta.
5. Eliminar marcadores de conflicto.
6. Revisar el diff completo.
7. Ejecutar pruebas.
8. Registrar la decisión cuando el conflicto sea relevante.
9. Actualizar el Pull Request.

Cuando el conflicto dependa del trabajo de otro desarrollador, cada responsable debe corregir su parte. Una vez resuelta la dependencia, el desarrollador continúa con su ticket, integra según el flujo, ejecuta el pipeline y conserva evidencia.

No se debe resolver un conflicto modificando silenciosamente el alcance de otro desarrollador.

# 14. Integración en Development

El flujo ordinario de integración es:

1. Onboarding.
2. Preparación del entorno.
3. Confirmación de accesos.
4. Sincronización con `development`.
5. Creación de rama de trabajo.
6. Desarrollo local.
7. Pruebas locales.
8. Pull Request hacia `development`.
9. Revisión.
10. Corrección de observaciones.
11. Aprobación.
12. Integración.
13. Despliegue automático o controlado al ambiente de desarrollo.
14. Validación.
15. Captura de evidencia.

La integración en `development` no significa que el cambio esté autorizado para producción.

La rama `development` debe mantenerse utilizable. Cuando una integración produzca una falla crítica, debe corregirse inmediatamente o revertirse de forma controlada.

# 15. Evidencias y validación técnica

La evidencia debe demostrar que el cambio fue ejecutado y validado en el contexto aplicable.

Puede incluir capturas, videos, resultados de pruebas, reportes automáticos, registros de pipeline, logs, respuestas de API, comparaciones antes y después, evidencia de base de datos, evidencia de despliegue y validación funcional.

La evidencia principal debe obtenerse del ambiente desplegado cuando dicho ambiente exista.

La evidencia local puede complementar, pero no sustituir, una validación requerida en ambiente compartido.

Toda evidencia debe ser legible, estar relacionada con el ticket, ser identificable, suficiente para reproducir o verificar el resultado y almacenarse en el sistema definido por el proyecto.

# 16. Promoción a QA

Un cambio puede promoverse a `QA` cuando fue integrado en `development`, fue desplegado y validado, tiene evidencia, no presenta defectos bloqueantes conocidos, cumple los criterios de aceptación, sus dependencias están disponibles y cuenta con la aprobación requerida.

La promoción debe realizarse mediante Pull Request desde la fuente definida por el proyecto hacia `QA`.

El Pull Request de promoción debe indicar claramente qué cambios incluye y qué evidencia los respalda.

No se deben mezclar cambios no validados dentro de una promoción aprobada.

# 17. Quality Gate

El Quality Gate es un control obligatorio cuando el proyecto dispone de automatización para ello.

Debe ejecutarse en un ambiente aislado o controlado y puede incluir instalación limpia, compilación, análisis estático, validación de estándares, pruebas unitarias, pruebas de integración, pruebas end-to-end, pruebas con Playwright, validaciones de seguridad y generación de reportes.

Reglas:

- Una falla detiene la integración o promoción.
- El fallo debe notificarse al desarrollador responsable.
- Los reportes deben conservarse.
- No se debe omitir el Quality Gate por presión de tiempo sin una excepción formal.
- La corrección debe volver a pasar por el control.

Cuando el proyecto todavía no disponga de automatización completa, deben documentarse las verificaciones manuales equivalentes.

# 18. Validación funcional, cliente y producción

El flujo de autorización es:

1. QA valida.
2. El cliente valida cuando corresponda.
3. El Project Manager coordina.
4. El cliente o responsable autorizado define la ventana de producción.
5. Se confirma la preparación del despliegue.
6. Se ejecuta la promoción o liberación.

La validación del cliente no reemplaza la validación técnica de QA.

La aprobación verbal debe convertirse en un registro verificable cuando el proyecto requiera trazabilidad.

Antes de producción debe confirmarse versión a desplegar, alcance, evidencia, resultado de pruebas, migraciones, configuración, backups, plan de reversión, ventana, responsables y comunicación.

# 19. Despliegues

La automatización CI/CD es el mecanismo preferido.

Un pipeline debe, según el proyecto, obtener la versión aprobada, validar dependencias, ejecutar controles, generar artefactos, desplegar, registrar resultados, detenerse ante fallos y permitir trazabilidad de la versión.

Los despliegues manuales deben contar con instrucciones claras, verificables y versionadas.

Después del despliegue se debe ejecutar smoke tests, verificar funciones críticas, revisar logs, confirmar versión, registrar evidencia, comunicar el resultado y activar reversión si los criterios de aceptación no se cumplen.

# 20. Hotfixes, excepciones y contingencias

La estrategia de hotfix depende del proyecto, cliente, SLA, criticidad, riesgo, arquitectura, capacidad de automatización y requisitos regulatorios.

Un hotfix debe conservar el máximo nivel posible de trazabilidad, revisión, prueba y evidencia.

Flujo general:

1. Confirmar incidente y severidad.
2. Autorizar el tratamiento urgente.
3. Crear rama desde la versión productiva correcta.
4. Implementar el cambio mínimo necesario.
5. Probar.
6. Revisar.
7. Desplegar.
8. Validar.
9. Integrar la corrección hacia las ramas permanentes necesarias.
10. Documentar la causa, solución y seguimiento.

Las clasificaciones L1, L2 y L3 pueden utilizarse como referencia operativa, pero su definición formal corresponde al futuro Incident Management Standard.

## 20.1 Excepción Colpensiones

Cuando el modelo operativo del cliente requiera liberaciones manuales, como instrucciones documentadas en Excel y copia manual en servidores, el proceso debe mantener instrucciones precisas, identificar archivos, rutas y orden de ejecución, incluir respaldos, validaciones y reversión, registrar responsables y resultados y conservar evidencia.

Esta excepción no elimina los principios de trazabilidad, control, validación y cierre.

## 20.2 Excepciones formales

Toda excepción debe registrar motivo, riesgo, alcance, responsable, autoridad que aprueba, duración, controles compensatorios y resultado.

# 21. Cumplimiento, cierre y mantenimiento del estándar

## 21.1 Niveles de cumplimiento

### Mandatory

Requisito obligatorio. Su incumplimiento bloquea la aprobación, integración, promoción o cierre, salvo excepción formal.

### Recommended

Práctica esperada. Puede omitirse cuando exista una justificación técnica u operativa válida.

### Optional

Práctica disponible según el contexto, madurez o necesidad del proyecto.

## 21.2 Cierre de un cambio

Un cambio se considera cerrado cuando fue integrado, fue desplegado en el ambiente objetivo, fue validado, tiene evidencia, el ticket fue actualizado, los defectos relacionados fueron resueltos o registrados, la documentación fue actualizada, la rama temporal fue gestionada, los interesados fueron informados y no quedan pasos obligatorios pendientes.

La aprobación de contenido no equivale al cierre operativo.

## 21.3 Ciclo de vida documental

Los estándares del JP Engineering Framework siguen el ciclo:

`Backlog → Knowledge Extraction → Architecture → Draft → CEO Review → Approved → Published → Maintenance → Deprecated`

La publicación de un estándar comprende materialización, integración, publicación y cierre.

## 21.4 Artefactos de publicación

Un estándar aprobado debe materializarse, como mínimo, mediante `STANDARD.md`, `README.md`, `CHANGELOG.md` y `metadata.yml`.

Pueden añadirse plantillas, diagramas, checklists, ejemplos y activos reutilizables.

## 21.5 Mantenimiento

Este estándar debe revisarse anualmente, cuando cambie el modelo de ramas, la plataforma Git, el proceso de QA, CI/CD, los requisitos contractuales o regulatorios, o cuando un incidente revele una debilidad del flujo.

## 21.6 Regla de continuidad

No debe iniciarse la elaboración formal del siguiente estándar hasta que el estándar aprobado haya sido materializado, integrado, publicado y cerrado, salvo instrucción expresa de la autoridad del Framework.

# Anexo A. Flujo resumido

`Onboarding → Environment → Access → Sync → Branch → Local Development → Local Tests → Pull Request to Development → Review → Integration → Deployment → Validation → Evidence → Pull Request to QA → Quality Gate → QA Validation → Client Validation → Production Approval → Production Deployment → Documentation and Closure`

# Anexo B. Checklist de Pull Request

- Alcance identificado.
- Ticket relacionado.
- Rama base correcta.
- Repositorio sincronizado.
- Diff revisado.
- Sin secretos.
- Sin archivos temporales.
- Pruebas locales ejecutadas.
- Conflictos resueltos.
- Evidencia adjunta.
- Riesgos documentados.
- Migraciones documentadas.
- Configuraciones documentadas.
- Plan de reversión cuando aplique.
- Revisión aprobada.
- Pipeline exitoso.

# Anexo C. Checklist previo a producción

- QA aprobado.
- Cliente aprobado cuando aplique.
- Versión identificada.
- Alcance confirmado.
- Evidencia disponible.
- Quality Gate aprobado.
- Backup confirmado.
- Migraciones revisadas.
- Configuración revisada.
- Ventana confirmada.
- Responsables disponibles.
- Reversión preparada.
- Comunicación preparada.
- Smoke tests definidos.

# Historial de versiones

## 1.0.0 — 2026-07-24

- Primera versión aprobada.
- Define el modelo `development`, `QA` y `master`.
- Formaliza sincronización, ramas, commits, Pull Requests y revisión.
- Establece evidencia basada en ambientes desplegados.
- Define promoción, Quality Gate, validación y producción.
- Incorpora hotfixes, contingencias y excepción de liberación manual.
- Establece niveles de cumplimiento y cierre documental.
