# Cómo contribuir

Gracias por querer mejorar esto. Lo más útil que puedes aportar:

## 1. Fichas de nuevas certificaciones

1. Copia `plantillas/ficha-certificacion.md` en `ejemplos/<certificacion>/ficha-certificacion.md` (en minúsculas y con guiones, ej. `ejemplos/comptia-cysa-plus/`).
2. Rellénala **solo con datos del certificador oficial** y pon el enlace a la fuente en cada sección con cifras.
3. Indica la fecha de la versión del examen y la fecha en que lo consultaste.
4. La sección "Mentalidad del examen" puede incluir tu experiencia, pero márcala como tal.

## 2. Mejoras en las skills

- Mantén las conexiones. Hay cinco documentos y cada uno tiene un dueño:
  - `ficha-certificacion` y `perfil-alumno`: los rellena el usuario. Su estructura está en `plantillas/`.
  - `gap-analysis`: lo genera `cert-diagnostico`. Su formato está dentro de esa skill.
  - `roadmap`: lo genera `cert-planificacion`. Su formato está dentro de esa skill.
  - `historial-practica`: lo generan `cert-practica` y `cert-simulacro`. El formato y las reglas de fusión están en las dos skills y deben coincidir.
- Si cambias una plantilla o el formato de un documento generado, revisa las skills que lo leen y las instrucciones del proyecto.
- No metas nada específico de una certificación dentro de una skill. Lo específico va en la ficha.
- Explica en el pull request qué problema real resuelve el cambio.

## Lo que no se acepta

- Preguntas reales de exámenes, volcados o contenido que viole acuerdos de confidencialidad.
- Material con derechos de autor (libros, cursos de pago).
- Datos sin fuente oficial.
