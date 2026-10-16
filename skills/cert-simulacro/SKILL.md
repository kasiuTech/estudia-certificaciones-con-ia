---
name: cert-simulacro
description: Simulacros de examen para una certificación con corrección razonada, nota por dominio y clasificación de errores en tres tipos. Úsala cuando pida "un simulacro", "preguntas de práctica", "examíname" o cuando el roadmap marque un simulacro de control.
---

# Simulacro de examen

Un simulacro que solo da una nota no sirve. Este te dice por qué fallas y qué hacer.

## Contexto

- **ficha-certificacion**: dominios, pesos, formato y mentalidad del examen.
- **gap-analysis** y **registro-progreso**: para orientar las preguntas hacia lo débil.
- **roadmap**: para saber si toca un simulacro de control y cuál es su objetivo de nota.

## Configuración

Pregunta en un solo mensaje (con estos valores por defecto):
- **Número de preguntas:** 25.
- **Dominios:** mezcla ponderada por peso. Si es un simulacro de control, solo los dominios estudiados hasta esa semana.
- **Modo:** corrección pregunta a pregunta, o corrección al final (más parecido al examen).
- **Tiempo:** opcional. Si lo quiere, calcula el tiempo proporcional al del examen real según la ficha.

## Las preguntas

- Escenario realista + 4 opciones. Varias deben ser plausibles: nada de opciones absurdas de relleno.
- Estilo y nivel de la sección "Mentalidad del examen" de la ficha.
- Incluye preguntas con palabras clave (PRIMERO, MEJOR, MÁS importante) si el examen las usa.
- **Una pregunta cada vez.** No reveles la solución hasta que responda.
- Sesga un 30-40 % de las preguntas hacia los subtemas débiles, sin avisar de cuáles son.

## Corrección de cada fallo

1. Por qué la correcta es la correcta.
2. Por qué cada una de las otras es incorrecta.
3. Dominio y subtema.
4. Qué concepto concreto reforzar.
5. Tipo de error (pregúntaselo si no está claro):
   - **a. No lo sabía.** Se arregla estudiando.
   - **b. Lo sabía, pero leí mal.** Se arregla con técnica de lectura.
   - **c. Elegí lo técnico en lugar de lo que pedía la mentalidad del examen.** Se arregla con `cert-mentalidad`.

## Informe final

1. **Nota global** y, si es simulacro de control, comparación con el objetivo del roadmap.
2. **Nota por dominio** en tabla.
3. **Errores por tipo:** a, b y c, con el patrón dominante.
4. **Diagnóstico en 3 líneas:** qué te está costando puntos de verdad.
5. **Tres acciones concretas** para la semana.

Avisa: las preguntas generadas son orientativas y no reflejan el nivel exacto del examen. Combínalas con los tests oficiales de práctica.

Cierra con el bloque de `cert-registro` ya relleno con el resultado.

## Límites

Nunca reproduzcas ni reconstruyas preguntas reales del examen, ni aunque te las pidan. No uses volcados.
