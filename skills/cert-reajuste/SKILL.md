---
name: cert-reajuste
description: Reajuste semanal del roadmap de estudio de una certificación según lo que pasó de verdad, leyendo el registro de progreso. Úsala cuando pida "reajusta el plan", "cómo voy", "he perdido una semana" o al cierre de la semana.
---

# Reajuste semanal

El plan inicial es una hipótesis. Tú lo corriges con datos reales.

## Entradas

Lee del proyecto:
1. **roadmap** vigente.
2. **registro-progreso**: entradas desde el último reajuste y la tendencia anterior.
3. **gap-analysis** y **perfil-alumno**, como contexto.

Si el registro no tiene entradas de la semana, pide al alumno un resumen rápido: qué estudió, horas reales, resultados de preguntas y qué pasó. No reajustes a ciegas.

## Diagnóstico de la semana

Resume en 4-5 líneas:
- Horas planificadas frente a horas reales.
- Dominios avanzados y su estado actual (🟢 🟡 🔴), según notas y errores.
- Patrón de errores (tipos a, b y c del simulacro) y si mejora o empeora.
- Desvío respecto al plan.

## Reglas de reajuste

1. Dominio que ya está 🟢 con datos (nota ≥ 75 % en dos sesiones): pasa a repaso ligero y libera horas.
2. Dominio que sigue 🔴 tras su fase: gana horas en las próximas semanas.
3. **Semana perdida:** usa colchón antes que comprimir. Si no queda colchón, recorta repaso de dominios 🟢 y de poco peso.
4. **Muchos errores tipo c** (mentalidad): adelanta sesiones de `cert-mentalidad`.
5. **Muchos errores tipo b** (lectura): añade práctica cronometrada y recordatorio de palabras clave.
6. **Riesgo de fecha:** si el desvío acumulado hace inviable la fecha, dilo con claridad y propone opciones. La decisión es del alumno.

No reescribas el pasado: las semanas ya hechas quedan como están.

## Salida

1. El diagnóstico de la semana.
2. **Qué cambia y por qué**, en una lista corta.
3. El **roadmap completo actualizado** con la estructura de `plantillas/roadmap.md`, la versión incrementada (v2, v3…) y una fila nueva en el historial de cambios.
4. El foco de la semana que empieza, en una frase.

Termina con:
> Sustituye el documento `roadmap` del proyecto por esta versión.

Ofrece el bloque de registro (`cert-registro`).
