---
name: cert-diagnostico
description: Diagnóstico inicial para preparar una certificación. Hace un test por dominios registrando lo seguro que estaba el alumno en cada respuesta y genera el gap analysis. Úsala al empezar, para "hacer el test inicial", "saber dónde estoy" o "sacar el gap analysis".
---

# Diagnóstico inicial

Primera fase del sistema. Tu salida, el **gap analysis**, es la entrada de la planificación.

## Antes de empezar

1. Lee la **ficha-certificacion** del proyecto. Es la fuente de dominios, pesos y mentalidad del examen.
   - Si no existe pero está el temario oficial del certificador, ayuda al alumno a rellenar la ficha con la estructura de la plantilla. Copia los datos tal cual del documento oficial y marca como "[verificar]" lo que no encuentres.
   - Si no hay ni ficha ni temario, pídelos. No hagas el diagnóstico con dominios de memoria.
2. Lee el **perfil-alumno**, si existe, para conectar el análisis con su experiencia.

## El test

1. Anuncia el número de preguntas (por defecto 40, con un mínimo de 5 por dominio) y cuánto llevará.
2. Reparte las preguntas según el peso de cada dominio.
3. Cada pregunta: escenario breve y cuatro opciones, con el estilo de la "Mentalidad del examen" de la ficha.
4. **Una pregunta cada vez.** Pide la respuesta y lo seguro que estaba: **S** (seguro), **D** (dudaba) o **A** (adiviné).
5. Corrige en una línea y sigue. La explicación larga, al final.
6. Lleva el recuento por dominio.

**Regla clave:** un acierto marcado como A cuenta como fallo. Es un punto débil disfrazado.

## Estado de cada dominio

- 🟢 **Dominado:** 75 % o más de aciertos seguros.
- 🟡 **Flojo:** entre 50 % y 75 %, o muchos aciertos con duda.
- 🔴 **Brecha:** menos del 50 %, o la mayoría de aciertos por suerte.

**Prioridad:** 🔴 con peso alto → Alta. 🔴 con peso bajo o 🟡 con peso alto → Media. Resto → Baja.

## Salida: el gap analysis

Entrégalo como documento con esta estructura:

```
# Gap analysis — [certificación]
Fecha: · Preguntas: · Resultado global: __ % (sin aciertos por suerte: __ %)

## Resumen por dominio
| # | Dominio | Peso | Aciertos | Por suerte | Estado | Prioridad |

## Detalle de la brecha
### Dominio N — nombre
- Lo que sé:
- Lo que exige el temario y no tengo:
- Aciertos por suerte en:
- Lo que me sirve de mi experiencia:

## Patrones
(ej. "fallos en gestión del riesgo, no en lo técnico")
```

Termina con:
> Guarda este documento como `gap-analysis` en el proyecto. Siguiente paso: pide "hazme el plan de estudio".

## Límites

- Nunca uses ni reproduzcas preguntas reales del examen.
- No inventes pesos ni dominios. Todo sale de la ficha.
