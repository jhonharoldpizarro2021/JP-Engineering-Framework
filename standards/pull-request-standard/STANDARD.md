# Pull Request Standard

## 1. Identificación

- **ID:** JPEF-STD-PULL-REQUEST-001
- **Versión:** 1.0.0
- **Estado:** Candidato para aprobación local
- **Cumplimiento:** Obligatorio
- **Propietario:** JP Engineering Framework
- **Sprint:** 5
- **Fecha de materialización:** 2026-07-24

## 2. Propósito

Definir cómo proponer, documentar, validar, revisar, aprobar e integrar cambios mediante Pull Requests trazables, pequeños y seguros.

## 3. Alcance

Aplica a todos los repositorios y tecnologías del Framework.

## 4. Uso obligatorio

Toda modificación de una rama protegida deberá integrarse mediante Pull Request.

Se prohíben:

- commits directos sobre ramas protegidas;
- integraciones sin revisión cuando el repositorio requiera aprobación;
- bypass de controles sin excepción documentada;
- Pull Requests que mezclen propósitos no relacionados.

## 5. Rama de origen y destino

Antes de abrir el Pull Request deberá verificarse:

- nombre de rama conforme al Branch Naming Standard;
- rama base correcta;
- rama de origen actualizada;
- árbol de trabajo limpio;
- ausencia de commits temporales, WIP, fixup o squash;
- conflictos resueltos conscientemente.

## 6. Título

El título deberá cumplir el Commit Convention Standard:

`<type>(<scope>): <description>`

Reglas:

- inglés;
- tipo oficial;
- scope obligatorio;
- descripción concreta;
- minúscula inicial;
- máximo 72 caracteres;
- sin punto final.

Esto permite utilizar squash merge sin reescribir un título deficiente.

## 7. Descripción obligatoria

Todo Pull Request deberá incluir:

1. resumen;
2. problema u objetivo;
3. cambios realizados;
4. ticket o issue relacionado, cuando exista;
5. tipo de cambio;
6. validaciones y pruebas ejecutadas;
7. evidencia;
8. riesgos y efectos secundarios;
9. migraciones o despliegue, cuando aplique;
10. checklist del autor.

No deberán inventarse tickets ni evidencias.

## 8. Atomicidad y tamaño

Un Pull Request deberá representar un único objetivo funcional o técnico.

Deberá evitar:

- refactors no relacionados;
- cambios de formato masivos;
- dependencias ajenas;
- archivos generados innecesarios;
- correcciones oportunistas fuera del alcance.

No se establece un límite universal de líneas, pero un Pull Request grande deberá justificar su tamaño y explicar por qué no puede dividirse sin aumentar el riesgo.

## 9. Pull Requests en borrador

Los Draft Pull Requests podrán utilizarse para:

- compartir progreso;
- ejecutar CI;
- solicitar orientación temprana;
- validar arquitectura antes de completar el cambio.

Un Draft Pull Request:

- no podrá integrarse;
- deberá indicar claramente qué falta;
- no contará como listo para revisión final.

## 10. Evidencia

La evidencia deberá corresponder al cambio e incluir, según aplique:

- salida de pruebas;
- capturas de interfaz;
- videos breves;
- logs relevantes;
- resultados de pipeline;
- comparaciones antes/después;
- pruebas de migración;
- validaciones de seguridad o rendimiento.

No deberán incluirse secretos, datos privados ni información de producción sensible.

## 11. Pruebas y documentación

Antes de solicitar revisión final:

- las pruebas aplicables deberán pasar;
- deberán añadirse o actualizarse pruebas cuando cambie comportamiento;
- deberá actualizarse la documentación afectada;
- deberán actualizarse changelog, migraciones o ejemplos cuando corresponda;
- los cambios de configuración deberán incluir instrucciones reproducibles.

## 12. CI y controles automáticos

Un Pull Request no podrá integrarse mientras:

- existan checks obligatorios fallidos;
- la compilación falle;
- las pruebas fallen;
- existan vulnerabilidades bloqueantes;
- el título no cumpla la convención;
- la rama no cumpla el Branch Naming Standard;
- existan conflictos;
- falten validaciones requeridas.

Los controles deberán ejecutarse dentro de Docker cuando el proyecto establezca desarrollo encapsulado.

## 13. Aprobaciones

Cambios normales:

- mínimo una aprobación válida.

Cambios de alto riesgo:

- mínimo dos aprobaciones;
- al menos una de un responsable del dominio o Code Owner.

Se consideran de alto riesgo, entre otros:

- autenticación y autorización;
- seguridad;
- pagos;
- datos personales;
- migraciones destructivas;
- infraestructura de producción;
- cambios de arquitectura;
- breaking changes;
- incidentes críticos.

El autor no podrá aprobar su propio Pull Request.

## 14. Conversaciones y solicitudes de cambio

Antes de integrar:

- todas las conversaciones bloqueantes deberán resolverse;
- las solicitudes de cambio deberán atenderse o rechazarse con justificación;
- los comentarios no bloqueantes podrán convertirse en tickets;
- ninguna conversación deberá marcarse como resuelta sin verificar la corrección.

Los cambios materiales posteriores a una aprobación deberán provocar nueva revisión.

## 15. Estrategia de integración

La estrategia predeterminada será squash merge cuando:

- la rama contenga commits de trabajo intermedios;
- se requiera un único commit atómico;
- el título final cumpla el Commit Convention Standard.

Podrán utilizarse merge commit o rebase merge cuando exista una razón técnica documentada y el Git Workflow Standard lo permita.

No se editará manualmente el historial ya integrado.

## 16. Seguridad

El autor y los revisores deberán comprobar:

- ausencia de secretos y credenciales;
- validación de entradas;
- permisos y autorización;
- manejo de errores;
- exposición de datos;
- dependencias vulnerables;
- configuración segura;
- impacto en producción.

Un hallazgo de seguridad bloqueante impedirá la integración.

## 17. Cambios de base de datos e infraestructura

Cuando existan migraciones o cambios de infraestructura, el Pull Request deberá indicar:

- orden de ejecución;
- compatibilidad hacia atrás;
- impacto;
- estrategia de rollback;
- downtime esperado;
- datos que podrían afectarse;
- validación posterior al despliegue.

## 18. Actualizaciones durante la revisión

El autor podrá actualizar la rama durante la revisión.

Deberá:

- comunicar cambios materiales;
- evitar force push no coordinado;
- usar `--force-with-lease` únicamente cuando esté permitido;
- conservar comentarios comprensibles;
- volver a solicitar revisión cuando corresponda.

## 19. Integración y eliminación de rama

Solo podrá integrarse cuando:

- CI esté en verde;
- existan aprobaciones requeridas;
- no haya conflictos;
- no existan bloqueos pendientes;
- título y descripción sean correctos;
- la evidencia sea suficiente.

Después de integrar:

- la rama deberá eliminarse cuando ya no sea necesaria;
- el ticket podrá cerrarse si el trabajo quedó realmente completo;
- deberán conservarse Pull Request, commits, tags y releases como evidencia.

## 20. Excepciones de emergencia

Una emergencia podrá reducir tiempos, pero no eliminar:

- trazabilidad;
- revisión mínima;
- pruebas esenciales;
- evidencia;
- seguimiento posterior.

Toda excepción deberá documentar motivo, riesgo, aprobador y acciones posteriores.

## 21. Gobernanza

Los cambios a este estándar deberán actualizar:

- documentación;
- plantilla de Pull Request;
- validaciones automáticas;
- checklists;
- estándares relacionados.

## 22. Fuente de verdad

`standards/software-development/pull-request-standard/`
