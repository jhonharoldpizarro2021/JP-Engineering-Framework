# Decisions Register

1. Formato obligatorio `<type>(<scope>): <description>`.
2. Mensajes en inglés.
3. Commits atómicos.
4. Un paquete ZIP equivale a un único commit.
5. Tipos oficiales controlados.
6. Scope obligatorio y específico.
7. Descripción con máximo 72 caracteres.
8. Cuerpo opcional para cambios simples.
9. Pie reservado para trazabilidad y breaking changes.
10. Merge únicamente mediante Pull Request aprobado.
11. Reversiones mediante `revert`.
12. Commits automáticos sujetos a las mismas validaciones.
13. Validación automática local y en CI.
14. Identidad de autor verificable.
15. Historial publicado inmutable.
16. Revisión obligatoria del contenido preparado.
17. Commits WIP, fixup y squash solo temporales.
18. Commits vacíos prohibidos salvo propósito técnico documentado.
19. Releases mediante `chore(release)`.
20. Manifiesto y lockfile de dependencias en el mismo commit.
