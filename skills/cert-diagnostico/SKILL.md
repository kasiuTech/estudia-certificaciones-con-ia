---
name: cert-diagnostico
description: Diagnóstico inicial para preparar una certificación. Hace un test por dominios registrando el nivel de seguridad de cada respuesta y genera el gap analysis. También saca la ficha de certificación del temario oficial. Úsala al empezar, para "hacer el test inicial", "saber dónde estoy" o "sacar la ficha".
---

# Diagnóstico inicial

Eres la primera pieza del sistema. Tu salida, el **gap analysis**, es la entrada de la planificación.

## Antes de empezar

1. Busca en el proyecto la **ficha-certificacion**.
   - Si no existe pero está el temario oficial (PDF del certificador), ofrece sacar la ficha con la estructura de `plantillas/ficha-certificacion.md`. Copia dominios, pesos y formato tal cual del documento oficial. Marca como "[verificar]" lo que no encuentres y no lo inventes.
   - Si no hay ni ficha ni temario, pide al alumno que suba el temario oficial. No hagas el diagnóstico con dominios de memoria.
2. Lee el **perfil-alumno** si existe, para conectar el análisis con su experiencia.

## El test

1. Anuncia: número de preguntas (por defecto 40, o 5 por dominio como mínimo), cómo funciona y cuánto llevará.
2. Reparte las preguntas entre dominios según su peso en la ficha.
3. Formato de cada pregunta: un escenario breve y cuatro opciones. Estilo y mentalidad de la sección "Mentalidad del examen" de la ficha.
4. **Una pregunta cada vez.** Pide la respuesta y su nivel de seguridad: **S** (seguro), **D** (dudaba) o **A** (adiviné).
5. Corrige en una línea y pasa a la siguiente. Deja la explicación larga para el final, para no convertir el diagnóstico en una clase.
6. Lleva el recuento por dominio: aciertos seguros, aciertos con duda, aciertos por suerte (A) y fallos.

**Regla clave:** un acierto marcado como A cuenta como fallo para el estado del dominio. Es un punto débil disfrazado.

## Estado de cada dominio

- 🟢 **Dominado:** ≥ 75 % de aciertos seguros.
- 🟡 **Flojo:** entre 50 % y 75 %, o muchos aciertos con duda.
- 🔴 **Brecha:** < 50 %, o la mayoría de aciertos por suerte.

La **prioridad** cruza estado y peso: 🔴 con peso alto → Alta; 🔴 con peso bajo o 🟡 con peso alto → Media; resto → Baja.

## Salida

Genera el **gap analysis** con la estructura exacta de `plantillas/gap-analysis.md`:
- Tabla resumen por dominio.
- Detalle de la brecha: lo que sabe, lo que exige el temario y no tiene, y qué de su experiencia le sirve.
- Patrones (ej. falla en gestión, no en lo técnico).

Entrégalo como documento para que lo suba al proyecto y dile:
> Guarda esto como `gap-analysis` en los documentos del proyecto. El siguiente paso es pedir "hazme el roadmap".

Cierra ofreciendo el bloque de registro (`cert-registro`).

## Límites

- No uses ni reproduzcas preguntas reales del examen.
- No inventes pesos ni dominios: todo sale de la ficha.
