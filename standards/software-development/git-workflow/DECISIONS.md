# Decisions — Git Workflow Standard

## ADR-001 — Arquitectura documental por dominios

**Status:** Accepted

### Decision

Organizar los estándares bajo `standards/` y agruparlos por dominio:

- software-development
- architecture
- operations
- artificial-intelligence
- project-management
- governance

### Consequences

- Mayor cohesión.
- Menor acoplamiento documental.
- Escalabilidad.
- Navegación consistente.
- Posibilidad de evolución independiente por dominio.

## ADR-002 — Paquete documental por estándar

**Status:** Accepted

Cada estándar debe incluir:

- README.md
- CHANGELOG.md
- METADATA.yaml
- REVIEW.md
- DECISIONS.md
- assets/

## ADR-003 — Nombre explícito para el documento normativo

**Status:** Accepted

### Decision

Mantener `README.md` como portada y punto de navegación del paquete documental, y publicar los 21 capítulos aprobados en `Git-Workflow-Standard.md` como documento normativo oficial.

### Consequences

- El documento principal conserva una identidad inequívoca fuera del repositorio.
- `README.md` funciona como portada estable del estándar.
- Los documentos complementarios permanecen organizados dentro del mismo paquete.
- Se facilita la navegación, distribución y citación del estándar.
