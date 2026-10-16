---
name: cert-registro
description: Cierra cualquier sesión de preparación de una certificación (estudio, memoria, simulacro, mentalidad, diagnóstico, planificación o reajuste) con un bloque normalizado listo para pegar en el registro de progreso. Úsala cuando pida "cierra la sesión", "registra esto" o al terminar otra skill del sistema.
---

# Registro de sesión

El registro es la memoria del sistema. Un chat nuevo no sabe nada de otro; este documento sí. Si el formato cambia de una sesión a otra, el reajuste semanal no puede comparar.

## Qué haces

1. Repasa la conversación y extrae los datos. **No inventes nada.**
2. Lo que no puedas sacar de la conversación, pregúntalo en un solo mensaje. El dato que más se olvida: **tiempo real dedicado**.
3. Mira en el **roadmap** qué semana es. Si no puedes deducirlo, pregunta.
4. Devuelve el bloque en un bloque de código, para copiarlo de un clic.

## Formato (exacto, siempre igual)

```
### AAAA-MM-DD · Semana N · modo
- Dominios: 
- Qué hice: 
- Resultado: 
- Errores: a=_, b=_, c=_
- Débil / a reforzar: 
- Tiempo real dedicado: 
- Incidencias: 
```

- **modo:** diagnóstico, planificación, reajuste, estudio, memoria, simulacro o mentalidad.
- **Resultado:** nota global y por dominio si hubo preguntas; si no, "—".
- **Errores:** solo en simulacro y mentalidad; si no, "—".
- **Débil / a reforzar:** subtemas concretos, no dominios enteros.
- **Incidencias:** lo que afecte al plan (no pude estudiar el martes, examen movido…). Si no hay, "—".

## Después del bloque

Una sola línea:
> Pégalo al final de `registro-progreso`. [Siguiente paso según el roadmap.]

Si la semana termina, sugiere el reajuste (`cert-reajuste`).
