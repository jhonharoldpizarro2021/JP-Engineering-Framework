# Decisions Register

## Reglas aprobadas

1. Formato `<type>/<short-description>`.
2. Ticket opcional como `<type>/<issue-id>-<short-description>`.
3. Inglés, minúsculas y kebab-case.
4. Prohibición de espacios, tildes, mayúsculas y guiones bajos.
5. Prefijos oficiales controlados.
6. `main` y ramas protegidas sin prefijo y sin commits directos.
7. Creación desde la rama base correcta y actualizada.
8. Una rama representa un único propósito.
9. Tickets e issues deben ser reales.
10. Releases mediante `release/vX.Y.Z`.
11. Hotfixes reservados para incidentes críticos.
12. Ramas temporales y eliminación posterior a la integración.
13. Ramas cerradas no se reutilizan.
14. El historial permanente se conserva mediante Git, Pull Requests, tags y releases.

## Reglas adicionales incluidas para revisión

- Longitud máxima de 80 caracteres.
- Un único separador `/`.
- Sincronización antes del Pull Request.
- Renombrado controlado de ramas publicadas.
- Gestión de ramas obsoletas.
- Validación automática local y en CI.
