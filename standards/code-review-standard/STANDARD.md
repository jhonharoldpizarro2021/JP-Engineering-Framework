# Code Review Standard

## 1. Identificación

- **ID:** JPEF-STD-CODE-REVIEW-001
- **Versión:** 1.0.0
- **Estado:** Candidato para aprobación local
- **Cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Sprint:** 5
- **Fecha de materialización:** 2026-07-24

## 2. Propósito

Establecer revisiones de código consistentes, respetuosas, técnicas y orientadas a reducir defectos, riesgos y deuda.

## 3. Principios

Toda revisión deberá priorizar:

- corrección;
- seguridad;
- mantenibilidad;
- claridad;
- pruebas;
- arquitectura;
- rendimiento cuando aplique;
- documentación;
- reproducibilidad;
- alcance aprobado.

La revisión se enfocará en el cambio y no en la persona.

## 4. Independencia

- El autor no podrá aprobar su propio Pull Request.
- El revisor deberá evitar conflictos de interés.
- Los cambios de alto riesgo requerirán revisión adicional.
- Cuando exista Code Owner, su aprobación será obligatoria.
- Una revisión superficial no se considerará aprobación válida.

## 5. Responsabilidad del autor

Antes de solicitar revisión, el autor deberá:

- realizar auto-revisión;
- verificar el diff completo;
- ejecutar pruebas;
- eliminar código temporal;
- proporcionar contexto y evidencia;
- señalar riesgos y dudas;
- responder comentarios;
- solicitar nueva revisión después de cambios materiales.

## 6. Responsabilidad del revisor

El revisor deberá:

- comprender el objetivo antes de evaluar;
- revisar archivos modificados y contexto relevante;
- verificar comportamiento, errores y casos límite;
- revisar pruebas y documentación;
- identificar riesgos de seguridad;
- confirmar coherencia arquitectónica;
- distinguir bloqueos de sugerencias;
- emitir una decisión explícita.

## 7. Áreas mínimas de revisión

### Funcionalidad

- El cambio resuelve el objetivo.
- No rompe comportamiento existente.
- Maneja errores y casos límite.

### Seguridad

- No contiene secretos.
- Valida entradas.
- Aplica autenticación y autorización.
- Evita exposición de datos.
- Utiliza dependencias y configuración seguras.

### Diseño y mantenibilidad

- Mantiene responsabilidades claras.
- Evita duplicación injustificada.
- Utiliza nombres comprensibles.
- Respeta estándares y arquitectura.
- No introduce complejidad innecesaria.

### Pruebas

- Cubre comportamiento nuevo o corregido.
- Incluye casos negativos cuando aplica.
- Evita pruebas frágiles.
- Mantiene evidencia reproducible.

### Operación

- Considera logs, observabilidad y errores.
- Documenta migraciones y rollback.
- Evalúa rendimiento e impacto productivo.
- Mantiene compatibilidad con Docker y CI/CD.

## 8. Clasificación de comentarios

Los comentarios deberán utilizar, cuando ayude a evitar ambigüedad:

- `BLOCKER:` impide la integración.
- `REQUIRED:` corrección necesaria.
- `QUESTION:` requiere aclaración.
- `SUGGESTION:` mejora no bloqueante.
- `NIT:` detalle menor no bloqueante.
- `PRAISE:` práctica positiva que conviene reforzar.

Un comentario deberá ser específico, verificable y accionable.

## 9. Comunicación

Los revisores deberán:

- describir el problema y su impacto;
- proponer alternativas cuando sea útil;
- evitar lenguaje hostil, irónico o personal;
- formular preguntas cuando falte contexto;
- reconocer decisiones correctas;
- separar preferencias personales de requisitos técnicos.

No deberán imponer una preferencia estética si el código cumple los estándares vigentes.

## 10. Bloqueos

Son bloqueantes, entre otros:

- defecto funcional;
- vulnerabilidad;
- pérdida o corrupción de datos;
- ausencia de pruebas esenciales;
- violación de arquitectura aprobada;
- breaking change no documentado;
- migración insegura;
- secretos o datos sensibles;
- CI obligatorio fallido;
- incumplimiento de un estándar obligatorio.

## 11. Sugerencias y alcance

Las mejoras fuera del objetivo deberán:

- registrarse como ticket cuando tengan valor;
- no ampliar innecesariamente el Pull Request;
- bloquear únicamente cuando el riesgo sea inmediato o severo.

La revisión no debe convertirse en una reescritura completa del trabajo.

## 12. Decisiones de revisión

El revisor deberá seleccionar una decisión coherente:

- **Approve:** listo para integrar.
- **Comment:** observaciones no bloqueantes o preguntas.
- **Request changes:** existen correcciones obligatorias.

No deberá aprobarse “con la condición” de corregir posteriormente un bloqueo.

## 13. Resolución de conversaciones

- El autor deberá responder o corregir cada comentario relevante.
- El revisor deberá verificar las correcciones bloqueantes.
- Las conversaciones no deberán resolverse para ocultar desacuerdo.
- Un desacuerdo técnico deberá escalarse al responsable del dominio o arquitectura.
- La decisión y su fundamento deberán quedar documentados.

## 14. Revisión posterior a cambios

Se requerirá nueva revisión cuando:

- cambie comportamiento;
- se modifique arquitectura;
- se añadan archivos relevantes;
- se reescriba una parte sustancial;
- cambien migraciones, seguridad o despliegue;
- se realice force push durante la revisión.

Las correcciones menores podrán verificarse sin reiniciar todo el proceso.

## 15. Niveles de aprobación

Cambios normales:

- mínimo una aprobación válida.

Cambios de alto riesgo:

- mínimo dos aprobaciones;
- una de Code Owner o especialista del dominio.

La aprobación deberá quedar registrada en la plataforma.

## 16. Tiempos objetivo

Objetivos recomendados:

- primera respuesta a revisión normal: un día hábil;
- correcciones pequeñas: atenderse en el siguiente ciclo de trabajo;
- hotfix crítico: revisión prioritaria durante la ventana operativa.

Estos objetivos no justifican reducir la calidad de la revisión.

## 17. Código generado o asistido por IA

El código generado por herramientas, bots o IA:

- deberá revisarse con el mismo rigor;
- no se considerará correcto por su origen;
- deberá respetar licencias, seguridad y estándares;
- requerirá pruebas y comprensión humana;
- seguirá siendo responsabilidad del autor.

## 18. Archivos generados y dependencias

El revisor deberá concentrarse en las fuentes de verdad.

Cuando existan archivos generados o lockfiles:

- deberá revisar el cambio de origen;
- comprobar que el resultado sea esperado;
- evitar revisión línea por línea sin valor;
- confirmar que no se introduzcan paquetes o artefactos ajenos.

## 19. Evidencia de revisión

La plataforma deberá conservar:

- comentarios;
- decisiones;
- aprobaciones;
- solicitudes de cambio;
- respuestas;
- resolución de desacuerdos;
- checks;
- identidad de revisores.

No se deberá trasladar una decisión crítica únicamente a canales privados sin resumirla en el Pull Request.

## 20. Excepciones

Una emergencia podrá priorizar la revisión, pero deberá conservar:

- al menos una revisión independiente;
- pruebas esenciales;
- evaluación de seguridad;
- evidencia;
- revisión posterior si quedó deuda.

## 21. Gobernanza

Los cambios al estándar deberán actualizar checklists, ejemplos, plantillas y estándares relacionados.

## 22. Fuente de verdad

`standards/software-development/code-review-standard/`
