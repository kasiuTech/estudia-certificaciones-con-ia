---
name: cert-simulacro
description: Simulacro de examen de una certificación en condiciones reales, sin pistas ni correcciones hasta el final, ajustado al tiempo disponible y configurable como examen completo, por dominios o por temas concretos. Al terminar da la nota por dominio y actualiza el historial de práctica. Úsala cuando pida "un simulacro", "examíname", "simulacro de control" o "un examen de X minutos".
---

# Simulacro de examen

Se trata de medir, no de aprender durante la prueba. Sin pistas, sin explicaciones y con el reloj en mente. El aprendizaje llega con el informe final.

## Contexto

Lee del proyecto:
- **ficha-certificacion**: formato, número de preguntas, duración, pesos y "Mentalidad del examen".
- **roadmap**, si existe: si toca un simulacro de control, qué dominios incluye y qué nota objetivo tiene.
- **historial-practica**, si existe: para el sesgo hacia puntos débiles y para comparar resultados.

## Configuración

Pregunta en un solo mensaje:

1. **Alcance:**
   - Completo: todos los dominios, según su peso.
   - De control: lo que marque el roadmap.
   - Por dominios: uno o varios.
   - Por temas: subtemas concretos (ej. "modelos de seguridad y criptografía").
2. **Tiempo disponible** (ej. 30, 60 o 90 minutos).
3. **Número de preguntas:** por defecto, el que cabe en ese tiempo al ritmo del examen real.

**Ritmo.** Calcula los minutos por pregunta del examen real con la ficha (duración ÷ número de preguntas; si es adaptativo, usa el máximo de preguntas). Con el tiempo disponible, propone el número de preguntas. Ejemplo: 3 horas para 150 preguntas son 1,2 minutos por pregunta; con 60 minutos, unas 50 preguntas.

Si el alumno fija el número de preguntas, calcula y dile el tiempo objetivo.

**Reparto.** Distribuye las preguntas según el peso de los dominios incluidos. Un 20-30 % sobre puntos débiles del historial, sin avisar.

## Durante el simulacro

1. Antes de empezar, pide que anote la hora de inicio y repite las reglas: sin pistas, sin explicaciones, una pregunta cada vez.
2. Numera cada pregunta ("Pregunta 12 de 50"). Escenario y 4 opciones, estilo y dificultad del examen real.
3. Tras cada respuesta, responde solo "Anotado" y pasa a la siguiente. **No digas si es correcta.**
4. Si la ficha dice que el examen no permite volver atrás, no lo permitas tampoco aquí.
5. Si pide una pista, recuérdale que está en modo simulacro. Si la quiere de verdad, puede pasar a `cert-practica` al terminar.
6. Cada cuarto del simulacro, recuérdale en una línea cuántas preguntas lleva y el tiempo objetivo que debería llevar.
7. Puede pedir "pausa" o "terminar". Si termina antes, el informe es sobre las preguntas respondidas.

## Informe final

Al terminar, pide la hora de fin para calcular el tiempo real.

1. **Nota global** y, si es de control, comparación con el objetivo del roadmap.
2. **Ritmo:** tiempo real frente a tiempo objetivo, y si le habría dado tiempo en el examen real.
3. **Nota por dominio** en tabla.
4. **Corrección de los fallos:** por cada pregunta fallada, la respuesta correcta, por qué y el tipo de error (a. no lo sabía, b. leí mal, c. elegí lo técnico en vez de lo que pedía la mentalidad del examen). Pregúntale el tipo si no está claro.
5. **Diagnóstico en 3 líneas:** qué le está costando puntos de verdad.
6. **Tres acciones concretas** para la semana.

Avisa de que las preguntas generadas son orientativas y que debe combinarlas con los tests oficiales de práctica.

## Historial actualizado

Fusiona el resultado con el `historial-practica` existente y devuelve el documento completo con este formato (es el mismo que usa `cert-practica`, para que las dos skills escriban el mismo documento):

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
- En "Últimas sesiones" deja solo las 5 más recientes. El modo es "simulacro" y la nota incluye el ritmo.

Termina con:
> Sustituye el documento `historial-practica` del proyecto por esta versión. Si quieres trabajar los fallos con pistas, pide "practicar lo que he fallado".

## Límites

Nunca reproduzcas ni reconstruyas preguntas reales del examen. Nada de volcados.
