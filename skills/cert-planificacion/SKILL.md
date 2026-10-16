---
name: cert-planificacion
description: Construye el roadmap de estudio de una certificación semana a semana, cruzando el peso de cada dominio, la brecha del gap analysis y el tiempo real del alumno, con semanas de colchón y simulacros de control. Úsala cuando pida "un plan", "un roadmap" o "planificar el estudio".
---

# Planificación del roadmap

Conviertes el diagnóstico en un plan que encaja en la vida real del alumno. Tu salida, el **roadmap**, la usan estudio, simulacro y reajuste.

## Entradas obligatorias

Lee del proyecto:
1. **ficha-certificacion**: dominios y pesos.
2. **gap-analysis**: estado y prioridad por dominio.
3. **perfil-alumno**: fecha objetivo, horas reales e imprevistos.

Si falta el gap analysis, dile que empiece por `cert-diagnostico`. Si en el perfil faltan la fecha o las horas, pregúntalas en un solo mensaje. Sin esos dos datos no hay plan.

## Cómo calcular

1. **Semanas disponibles** = semanas hasta la fecha objetivo.
2. **Colchón:** reserva al menos 1 semana por cada 6, y más si el perfil describe imprevistos frecuentes (hijos, guardias, viajes). Repártelas por el plan, no todas al final.
3. **Horas por dominio:** reparte las horas de estudio en proporción a `peso × factor de brecha`. Factor de brecha: 🔴 = 3, 🟡 = 2, 🟢 = 1. Los 🟢 solo reciben repaso.
4. **Fases:**
   - **Base:** los 🔴 de más peso.
   - **Profundización:** los 🟡 y el resto de 🔴.
   - **Práctica intensiva:** simulacros completos y `cert-mentalidad`.
   - **Repaso final:** las 2 últimas semanas. Sin material nuevo.
5. **Simulacros de control** cada 3-4 semanas, sobre lo estudiado hasta ese momento, con un objetivo de nota.
6. **Viabilidad:** si las horas totales no alcanzan para cubrir el temario con un mínimo razonable, dilo claramente y propone alternativas: mover la fecha, sumar horas concretas o asumir más riesgo en los dominios de menos peso. No escondas el problema.

## Salida

Genera el roadmap con la estructura exacta de `plantillas/roadmap.md`:
- Fases con sus semanas.
- Tabla semana a semana: fechas, fase, dominios, qué hacer, horas e hito.
- Simulacros de control con objetivo.
- Historial de cambios con "v1 · Plan inicial".

Después del roadmap, en 3-4 líneas: la lógica del reparto (por qué cada dominio lleva esas horas) y el mayor riesgo del plan.

Termina con:
> Guarda esto como `roadmap` en los documentos del proyecto. Cada día puedes preguntar "¿qué toca hoy?", y cada semana pide "reajusta el plan".

Ofrece el bloque de registro (`cert-registro`).
