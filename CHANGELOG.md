# Lazarus Academy · versiones

Desde esta edición, cada actualización tendrá un número secuencial y un nombre. Las versiones menores (`1.2.0`, `1.3.0`…) agrupan mejoras visibles; los ajustes pequeños incrementan el último número (`1.1.1`, `1.1.2`…).

## v1.5.2 — Panel visible

**29 de octubre de 2026**

- Corrección de un error de sintaxis que impedía iniciar el JavaScript y dejaba la pantalla en blanco en móviles.
- El login y el panel vuelven a mostrarse con el inicio directo y la carga progresiva.

## v1.5.1 — Inicio directo

**29 de octubre de 2026**

- Se quitó la pantalla de carga animada para entrar directamente a Lazarus Academy.
- Se conservan la sincronización de progreso en segundo plano y la carga progresiva del historial.

## v1.5.0 — Carga ligera

**29 de octubre de 2026**

- El panel aparece con el progreso local y la sesión se sincroniza con Supabase en segundo plano.
- La pantalla de carga deja de esperar a la consulta de progreso en la nube.
- El historial ya no construye 840 filas al iniciar: carga 50 cuando se abre y permite mostrar más por bloques.
- Los scripts externos usan carga diferida para no bloquear el análisis del documento.

## v1.4.1 — Entrada animada

**29 de octubre de 2026**

- Pantalla de bienvenida con el logo de Lazarus Academy, movimiento orbital y barra de progreso animada.
- La entrada se mantiene mientras se restaura la sesión y el progreso; tiene un límite para no bloquear la web si la conexión tarda.
- Adaptación para móviles y respeto a la preferencia de movimiento reducido.

## v1.4.0 — Camino de código

**29 de octubre de 2026**

- Rutas de cursos organizadas como un camino visual con unidades de diez módulos y estados de avance.
- Navegación de aprendizaje, rutas y progreso con barra inferior en móviles.
- Energía para respuestas: 5 puntos iniciales, consume 1 por cada revisión y recupera 1 cada 30 minutos.
- Al agotarse la energía se conserva el editor y el progreso; se puede seguir leyendo mientras se recupera.
- Indicador y panel de energía con contador regresivo, señales visuales y acceso desde el encabezado.
- Vistas dinámicas de los módulos siguen abriendo rutas al cambiar de sección.

## v1.3.0 — Lección en foco

**29 de octubre de 2026**

- El navegador de fases muestra las cinco etapas a la vez en teléfonos; ya no queda una sola fase visible ocupando toda la fila.
- Panel de avance más compacto y con mensajes que cambian según el estado de la fase.
- Encabezado de la lección con mejor jerarquía y menos espacio vertical.
- Indicadores accesibles para la fase actual y el avance de la sesión.

## v1.2.0 — Movimiento vivo

**29 de octubre de 2026**

- Animaciones de entrada al desplazarse por rutas, estadísticas y lecciones.
- Efectos interactivos en tarjetas, navegación, botones y experiencia acumulada.
- Banner con brillo ambiental y señales visuales animadas.
- Las animaciones respetan la preferencia del dispositivo para reducir el movimiento.

## v1.1.0 — Aula móvil

**29 de octubre de 2026**

- Diseño reorganizado para teléfonos: tarjetas, rutas, sesiones y editor se adaptan al ancho disponible.
- Menú lateral móvil accesible, desplazable y fácil de cerrar tocando fuera o con Escape.
- Controles más cómodos para tocar, áreas seguras para móviles y paneles que caben con el teclado en pantalla.
- Mensajes más claros cuando Supabase limita el envío de correos.

## v1.0.0 — Primera luz

**28 de octubre de 2026**

- Primera edición de Lazarus Academy con 14 rutas y 60 módulos por lenguaje.
- Inicio de sesión, progreso guardado y lecciones prácticas.

