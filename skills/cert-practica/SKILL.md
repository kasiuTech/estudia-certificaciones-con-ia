---
name: cert-practica
description: Práctica guiada de examen para una certificación. Preguntas con pistas graduales, corrección razonada, adaptación en tiempo real a tus fallos y entrenamiento de la mentalidad del examen. Al terminar actualiza el historial de práctica con tus puntos débiles. Úsala cuando pida "practicar", "preguntas de práctica", "ayúdame con preguntas de X" o "entrenar la mentalidad del examen". Para un examen cronometrado sin ayudas, usa cert-simulacro.
---

# Práctica guiada

Aquí se aprende fallando. A diferencia del simulacro, hay pistas, explicaciones y la sesión se adapta a cómo respondes.

## Contexto

Lee del proyecto:
- **ficha-certificacion**: dominios, pesos y "Mentalidad del examen".
- **gap-analysis**: puntos débiles del diagnóstico.
- **historial-practica**, si existe: subtemas a reforzar y tipos de error frecuentes.
- **roadmap**, si existe: qué dominios toca practicar esta semana.

## Configuración

Pregunta en un solo mensaje, con estos valores por defecto:
- **Qué practicar:** lo que marque el roadmap esta semana, o lo que diga el historial que hay que reforzar. También puede pedir un dominio o tema concreto.
- **Número de preguntas:** 15.
- **Enfoque:** contenido (por defecto) o mentalidad del examen.

## Cada pregunta

1. Escenario realista y 4 opciones, varias plausibles. Estilo de la "Mentalidad del examen".
2. Pide la respuesta y lo seguro que está: **S** (seguro), **D** (dudaba) o **A** (adiviné).
3. **Pistas, solo si las pide** (escribe "pista"), y de menos a más:
   - **Pista 1:** el concepto o la regla que se evalúa, sin señalar opciones.
   - **Pista 2:** descarta una opción y explica por qué.
   - **Pista 3:** la pregunta clave que debe hacerse para decidir (ej. "¿qué se protege aquí, confidencialidad o integridad?").
   Una respuesta acertada con pistas cuenta como "con ayuda", no como acierto limpio.

## Corrección

- **Si acierta seguro:** confirma en una línea y sigue.
- **Si acierta con duda o adivinando:** explica por qué es correcta. Un acierto por suerte es un punto débil.
- **Si falla:**
  1. Por qué la correcta lo es.
  2. Por qué la que eligió no, y qué le ha llevado a elegirla.
  3. Dominio y subtema.
  4. Tipo de error: **a.** no lo sabía, **b.** lo sabía pero leí mal, **c.** elegí lo técnico en vez de lo que pedía la mentalidad del examen. Si no está claro, pregúntaselo.
  5. El concepto a repasar, en una frase.

## Adaptación durante la sesión

- Dos fallos en el mismo subtema: la siguiente pregunta vuelve a ese subtema desde otro ángulo.
- Errores de tipo c repetidos: cambia a preguntas de mentalidad durante un par de rondas.
- Errores de tipo b repetidos: recuérdale las palabras clave (PRIMERO, MEJOR, MÁS) y pide que las subraye mentalmente.
- Tres aciertos seguros seguidos en un subtema: súbele la dificultad o pasa a otro.

## Enfoque mentalidad del examen

Si lo elige, o si la adaptación lo activa:
- Explica las reglas de la "Mentalidad del examen" de la ficha con un ejemplo de cada una.
- Preguntas en las que dos o tres opciones son técnicamente válidas y solo una es la más correcta para el rol del examen.
- Antes de corregir, pide que justifique su elección en una frase. En la corrección, di qué regla decide y qué estaba bien o mal en su razonamiento.

## Al terminar

1. **Resumen de la sesión:** aciertos limpios, con ayuda, por suerte y fallos, por dominio; errores por tipo; lo que ha mejorado dentro de la sesión.
2. **Historial actualizado.** Fusiona esta sesión con el `historial-practica` que hubiera y devuelve el documento completo con este formato:

```
# Historial de práctica — [certificación]
Actualizado: fecha · Sesiones: N

## A reforzar (por prioridad)
| Subtema | Dominio | Intentos | Aciertos limpios | Error más frecuente | Desde |

## Ya superado
| Subtema | Dominio | Superado el |

## Patrones
- Tipo de error dominante y tendencia (mejora / igual / empeora)
- Otros patrones (ej. "falla cuando la pregunta lleva PRIMERO")

## Últimas sesiones
| Fecha | Modo | Dominios | Resultado | Nota |
```

Reglas de fusión:
- Un subtema pasa a "Ya superado" con 3 aciertos limpios seguidos entre sesiones.
- Un subtema superado vuelve a "A reforzar" si falla de nuevo.
- En "Últimas sesiones" deja solo las 5 más recientes.

Termina con:
> Sustituye el documento `historial-practica` del proyecto por esta versión. Así la próxima sesión, el simulacro y el reajuste del plan saben dónde fallas.

## Límites

- Nunca reproduzcas ni reconstruyas preguntas reales del examen. Nada de volcados.
- Las preguntas generadas son orientativas: recuérdale combinarlas con los tests oficiales de práctica.
