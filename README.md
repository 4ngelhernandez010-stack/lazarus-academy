# Lazarus Academy

Plataforma de aprendizaje web con 14 rutas y **60 módulos por lenguaje** (840 módulos en total). Incluye lecciones progresivas, editor, ejercicios, guardado local y cuentas con progreso en la nube cuando se conecta Supabase.

## Rutas

C++, SQL/PostgreSQL, Python, Java, JavaScript, TypeScript, C#, Go, Rust, PHP, Ruby, Kotlin, Swift y Dart. Las sesiones cubren lectura, escritura desde cero, edición, depuración, estructuras de datos, bibliotecas y proyectos.

## Abrir el sitio

Abre `index.html` o publica esta carpeta en GitHub Pages. Para que la autenticación y la sincronización funcionen, GitHub Pages necesita conectarse a un proyecto Supabase.

## Activar cuentas y progreso compartido

1. Crea un proyecto Supabase.
2. En **Project Settings → API**, copia la URL del proyecto y su clave pública `anon`/`publishable`. Nunca copies la clave `service_role` al sitio.
3. Pega ambos valores en `supabase-config.js` (`url` y `anonKey`). Este archivo solo debe contener la clave pública.
4. Ejecuta `supabase/schema.sql` una vez en el SQL Editor de Supabase. La tabla usa Row Level Security para que cada cuenta solo pueda leer y modificar su propio progreso.
5. En la configuración de Auth de Supabase, añade la URL de GitHub Pages del repositorio a las URL de redirección permitidas y ajusta la verificación de correo según prefieras.
6. Publica los cambios en GitHub Pages y prueba crear una cuenta e iniciar sesión.

El panel queda bloqueado en la pantalla de acceso hasta conectar Supabase. Configura la URL, la clave pública y la tabla antes de publicar para que los estudiantes puedan crear cuentas e iniciar sesión.

La autenticación usa la biblioteca oficial `supabase-js` desde jsDelivr. Los logos SVG locales son propios o proceden de [Simple Icons](https://github.com/simple-icons/simple-icons) y [Devicon](https://github.com/devicons/devicon). Los sonidos se generan en el navegador.
