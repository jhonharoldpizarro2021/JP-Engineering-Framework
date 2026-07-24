# Git Workflow Standard

## Metadata

| Campo | Valor |
|---|---|
| Document ID | `JP-SD-GIT-001` |
| Framework | `JP Engineering Framework` |
| Version | `1.0.0` |
| Status | `APPROVED` |
| Category | `Software Development` |
| Approver | `Jhon Harold Pizarro` |
| Approval date | `2026-07-24` |
| Language | `es` |

## Objetivo

Definir un modelo estandarizado, gobernado y trazable para gestionar ramas, cambios, integraciones, revisiones, despliegues, excepciones e incidentes en repositorios basados en Git.

## Alcance

Este estándar se aplica a equipos, proyectos y organizaciones que utilicen Git como sistema de control de versiones y requieran un proceso consistente para desarrollar, revisar, integrar y liberar cambios.

## Niveles de cumplimiento

- 🔴 Mandatory
- 🟡 Recommended
- 🔵 Optional

## Índice oficial

1. Objetivo
2. Alcance
3. Principios
4. Roles y Responsabilidades
5. Branching Strategy
6. Branch Naming
7. Workflow Oficial
8. Pull Requests
9. Quality Gates
10. Deployment Strategies
11. Merge & Integration Rules
12. Exception Management
13. Governance & Compliance
14. Metrics & KPIs
15. Roles in Incident & Hotfix Workflow
16. Documentation & Traceability
17. Security Considerations
18. Adoption Guidelines
19. Glossary
20. References & Related Standards
21. Document Metadata & Version History

## Principios

- Trazabilidad de extremo a extremo.
- Integración controlada.
- Automatización progresiva.
- Mínimo privilegio.
- Calidad antes de integración.
- Separación de responsabilidades.
- Gestión formal de excepciones.
- Mejora continua.

## Modelo de ramas

El estándar contempla ramas de larga duración y ramas temporales según las necesidades del proyecto.

### Ramas principales

- `main`: versión estable o productiva.
- `develop`: integración continua cuando el modelo del proyecto lo requiera.

### Ramas temporales

- `feature/`
- `bugfix/`
- `hotfix/`
- `release/`
- `chore/`
- `docs/`
- `refactor/`
- `test/`

## Convención de nombres

Formato recomendado:

`tipo/ticket-descripcion-breve`

Ejemplos:

- `feature/JP-101-user-authentication`
- `bugfix/JP-205-cart-total`
- `hotfix/JP-301-payment-failure`

## Workflow oficial

1. Seleccionar el ticket o unidad de trabajo.
2. Actualizar la rama base.
3. Crear una rama de trabajo.
4. Implementar cambios de alcance controlado.
5. Ejecutar pruebas locales.
6. Registrar commits claros y trazables.
7. Publicar la rama.
8. Crear Pull Request.
9. Ejecutar Quality Gates.
10. Realizar Code Review.
11. Resolver observaciones y conflictos.
12. Aprobar e integrar.
13. Ejecutar pipeline.
14. Desplegar según estrategia aprobada.
15. Recopilar evidencias.
16. Cerrar el ticket y actualizar trazabilidad.

## Pull Requests

Todo Pull Request debe incluir:

- propósito;
- alcance;
- ticket relacionado;
- evidencia de pruebas;
- riesgos;
- impacto;
- instrucciones de validación;
- evidencia visual cuando aplique.

No debe integrarse mientras existan:

- conflictos;
- pruebas fallidas;
- revisiones pendientes;
- hallazgos críticos;
- cambios no trazables.

## Quality Gates

Los controles pueden incluir:

- compilación;
- pruebas unitarias;
- pruebas de integración;
- linting;
- análisis estático;
- seguridad;
- cobertura;
- revisión humana;
- validación funcional.

## Deployment Strategies

La estrategia de despliegue debe seleccionarse de acuerdo con el riesgo, criticidad y madurez operativa.

Opciones compatibles:

- manual controlado;
- rolling deployment;
- blue/green;
- canary;
- feature flags;
- rollback automatizado.

## Merge & Integration Rules

- No realizar integraciones directas sin autorización.
- Resolver conflictos comprendiendo ambos cambios.
- Validar nuevamente después de resolver conflictos.
- Mantener la rama base actualizada.
- Utilizar una estrategia de merge consistente.
- No ocultar cambios funcionales dentro de commits irrelevantes.

## Exception Management

Toda excepción debe:

- estar justificada;
- ser temporal;
- registrar riesgos;
- identificar responsable;
- definir fecha de expiración;
- documentar controles compensatorios;
- recibir aprobación.

## Governance & Compliance

El cumplimiento del estándar debe auditarse de acuerdo con el nivel de criticidad del proyecto y las políticas organizacionales.

Las desviaciones deben registrarse, evaluarse y corregirse.

## Metrics & KPIs

Indicadores recomendados:

- Lead Time.
- Deployment Frequency.
- Change Failure Rate.
- Mean Time to Recovery.
- Tiempo de revisión.
- Tasa de Pull Requests rechazados.
- Número de conflictos.
- Cumplimiento de Quality Gates.
- Excepciones abiertas y vencidas.

## Incident & Hotfix Workflow

Los Hotfixes deben utilizarse exclusivamente para incidentes urgentes.

Proceso mínimo:

1. Confirmar el incidente.
2. Asignar severidad.
3. Crear rama `hotfix/`.
4. Aplicar la corrección mínima.
5. Ejecutar pruebas prioritarias.
6. Revisar y aprobar.
7. Desplegar.
8. Validar recuperación.
9. Integrar el cambio en las ramas correspondientes.
10. Documentar evidencias y lecciones aprendidas.

## Documentation & Traceability

Cada cambio debe relacionarse con:

- ticket;
- rama;
- commits;
- Pull Request;
- revisiones;
- pruebas;
- pipeline;
- despliegue;
- incidentes relacionados;
- versión liberada.

## Security Considerations

- Proteger ramas críticas.
- No almacenar secretos en Git.
- Utilizar escaneo de secretos.
- Aplicar mínimo privilegio.
- Revisar dependencias.
- Proteger pipelines y variables.
- Auditar accesos.
- Revocar credenciales comprometidas.
- Documentar incidentes de seguridad.

## Adoption Guidelines

### Nivel 1 — Básico

- Branching Strategy.
- Branch Naming.
- Pull Requests.
- Workflow Oficial.
- Documentación básica.

### Nivel 2 — Intermedio

- Quality Gates.
- Code Review.
- Despliegue controlado.
- Excepciones.
- Trazabilidad completa.

### Nivel 3 — Avanzado

- CI/CD.
- Automatización de pruebas.
- Métricas.
- Auditorías.
- Gobernanza formal.

### Nivel 4 — Excelencia

- DevSecOps.
- Observabilidad.
- Automatización avanzada.
- IA aplicada.
- Optimización continua.

## Glossary

- **Branch:** rama aislada del repositorio.
- **Commit:** registro de cambios.
- **Pull Request:** solicitud formal de integración.
- **Merge:** integración entre ramas.
- **Quality Gate:** validación obligatoria previa a una transición.
- **Hotfix:** corrección urgente para un incidente crítico.
- **Rollback:** reversión a una versión estable.
- **Traceability:** capacidad de reconstruir el recorrido completo de un cambio.
- **Lead Time:** tiempo desde el inicio hasta la entrega.
- **MTTR:** tiempo promedio de recuperación.

## References & Related Standards

Relacionados:

- Coding Standards.
- Code Review Standard.
- DevOps Standard.
- QA & Testing Standard.
- Deployment Strategies Standard.
- Incident Management Standard.
- Software Architecture Standard.
- AI Collaboration Protocol.

Referencias técnicas:

- Git.
- GitHub.
- GitLab.
- Azure DevOps.
- Bitbucket.
- Jenkins.
- SonarQube.

## Document Metadata & Version History

El documento utiliza versionado semántico:

- `MAJOR`: cambios incompatibles o reestructuraciones.
- `MINOR`: mejoras compatibles o nuevos capítulos.
- `PATCH`: correcciones editoriales o aclaraciones.

### Version history

| Versión | Fecha | Descripción | Estado |
|---|---|---|---|
| 0.1.0 | 2026-07-21 | Primer borrador | Draft |
| 0.9.0 | 2026-07-24 | Revisión conceptual completa | Review |
| 1.0.0 | 2026-07-24 | Primera versión oficial | Approved |

## Nota de consolidación

Esta versión del repositorio contiene una consolidación editorial del estándar aprobado. Antes de una publicación externa, se recomienda realizar una revisión final comparando este documento con los textos íntegros aprobados capítulo por capítulo.
