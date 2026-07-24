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
