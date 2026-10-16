---
name: cert-planificacion
description: Crea y reajusta el plan de estudio de una certificación semana a semana, cruzando el peso de cada dominio, la brecha del gap analysis, el historial de práctica y el tiempo real del alumno. Úsala cuando pida "un plan", "un roadmap", "qué toca hoy", "reajusta el plan", "cómo voy" o "he perdido una semana".
---

# Plan de estudio

Conviertes el diagnóstico en un plan que encaja en la vida real del alumno, y lo vas ajustando.

## Entradas

Lee del proyecto:
1. **ficha-certificacion**: dominios y pesos.
2. **gap-analysis**: estado y prioridad por dominio.
3. **perfil-alumno**: fecha objetivo, horas reales e imprevistos.
4. **roadmap**, si ya existe uno.
5. **historial-practica**, si existe: resultados de prácticas y simulacros, subtemas a reforzar y patrones de error.

Si falta el gap analysis, dile que empiece por el diagnóstico. Si en el perfil faltan la fecha o las horas, pregúntalas en un solo mensaje.

Hay tres peticiones posibles: crear el plan, reajustarlo o decir qué toca hoy.

## A. Crear el plan

1. **Semanas disponibles** hasta la fecha objetivo.
2. **Colchón:** al menos 1 semana por cada 6, y más si el perfil describe imprevistos frecuentes (hijos, guardias, viajes). Repártelas por el plan, no al final.
3. **Horas por dominio:** en proporción a `peso × factor de brecha`, donde 🔴 = 3, 🟡 = 2 y 🟢 = 1. Los 🟢 solo reciben repaso.
4. **Fases:**
   - Base: los 🔴 de más peso.
   - Profundización: los 🟡 y el resto de 🔴.
   - Práctica intensiva: simulacros completos y mentalidad del examen.
   - Repaso final: las 2 últimas semanas, sin material nuevo.
5. **Simulacros de control** cada 3-4 semanas, con un objetivo de nota.
6. **Viabilidad:** si las horas no alcanzan, dilo claro y propone opciones: mover la fecha, sumar horas concretas o asumir riesgo en los dominios de menos peso.

Entrega el roadmap como documento:

```
# Roadmap — [certificación] · v1 · fecha
Examen: · Semanas: __ (__ de colchón) · Horas/semana:

## Fases
| Fase | Semanas | Objetivo |

## Semana a semana
| Semana | Fechas | Fase | Dominios | Qué hacer | Horas | Hito |

## Simulacros de control
| Semana | Dominios | Objetivo de nota |

## Cambios
| Versión | Fecha | Qué cambió y por qué |
```

Después, en 3-4 líneas: por qué cada dominio lleva esas horas y cuál es el mayor riesgo del plan.

Termina con:
> Guarda este documento como `roadmap` en el proyecto. Cada semana, pide "reajusta el plan".

## B. Reajustar el plan

Los resultados de práctica y simulacros salen del `historial-practica`. Al alumno solo le preguntas lo que el historial no sabe, en un solo mensaje y con preguntas cortas:
- Qué semana del plan acaba de terminar.
- Horas reales que ha dedicado.
- Qué ha estudiado y qué se ha quedado sin hacer.
- Si ha pasado algo que afecte al plan.

Si no hay historial, pregúntale también por los resultados de las preguntas o simulacros que haya hecho.

Con eso aplica estas reglas:
1. Dominio ya 🟢 con datos: pasa a repaso ligero y libera horas.
2. Dominio que sigue 🔴 tras su fase: gana horas.
3. Semana perdida: usa colchón antes que comprimir. Si no queda, recorta repaso de lo 🟢 y de poco peso.
4. Muchos errores de mentalidad (tipo c) en el historial: adelanta sesiones de práctica con enfoque mentalidad.
5. Subtemas que llevan varias sesiones en "A reforzar": dales horas específicas de estudio.
6. Si la fecha deja de ser viable, dilo y propone opciones. La decisión es del alumno.

No reescribas las semanas pasadas. Entrega:
1. Qué cambia y por qué, en una lista corta.
2. El roadmap completo con la versión incrementada (v2, v3…) y una fila nueva en "Cambios".
3. El foco de la semana que empieza, en una frase.

Termina con:
> Sustituye el documento `roadmap` del proyecto por esta versión.

## C. Qué toca hoy

Mira la semana actual del roadmap y los primeros puntos de "A reforzar" del historial. Propón la sesión de hoy en 3-4 líneas: dominio o subtema, qué hacer, cuánto tiempo y con qué modo (estudio, práctica o simulacro).
