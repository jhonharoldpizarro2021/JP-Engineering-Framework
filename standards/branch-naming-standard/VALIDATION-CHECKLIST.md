# Validation Checklist

## Nombre

- [ ] Está escrito en inglés.
- [ ] Está completamente en minúsculas.
- [ ] Utiliza un prefijo oficial.
- [ ] Usa guiones entre palabras.
- [ ] No contiene espacios, tildes, mayúsculas ni guiones bajos.
- [ ] No contiene barras adicionales.
- [ ] No contiene guiones consecutivos.
- [ ] No termina en guion ni barra.
- [ ] Representa un único propósito.
- [ ] Tiene una longitud razonable y no supera 80 caracteres.

## Ticket

- [ ] El identificador aparece inmediatamente después del prefijo cuando existe.
- [ ] El ticket o issue es real.
- [ ] No se inventó un identificador.

## Origen

- [ ] La rama base es la correcta.
- [ ] La rama base estaba actualizada.
- [ ] El árbol de trabajo estaba limpio.
- [ ] No se arrastraron cambios locales ajenos.

## Tipos especiales

- [ ] Las ramas release usan `release/vX.Y.Z`.
- [ ] La versión sigue Semantic Versioning.
- [ ] Las ramas hotfix parten de la rama productiva.
- [ ] El hotfix es mínimo, urgente y verificable.
- [ ] Las ramas protegidas no reciben commits directos.

## Publicación y mantenimiento

- [ ] La rama fue sincronizada antes del Pull Request.
- [ ] Cualquier renombrado publicado fue comunicado.
- [ ] No se reescribió trabajo compartido sin coordinación.
- [ ] La rama se eliminará después de integrarse.
- [ ] No existen commits únicos sin preservar antes de eliminarla.

## Automatización

- [ ] El nombre pasa el script local.
- [ ] El hook de pre-push está configurado cuando aplica.
- [ ] La validación de CI está activa.
- [ ] Las ramas protegidas aprobadas están configuradas.

## Resultado

- [ ] Aprobado.
- [ ] Aprobado con observaciones.
- [ ] Rechazado.
