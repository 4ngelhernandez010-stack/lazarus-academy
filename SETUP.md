# Publicación y cuentas de Lazarus Academy

GitHub Pages sirve archivos estáticos. Para registrar usuarios y guardar el mismo progreso desde distintos dispositivos, conecta el frontend con Supabase:

1. El proyecto conectado es `https://taoerirvmdhrrrvthanm.supabase.co`; `supabase-config.js` contiene su URL y clave pública `publishable`.
2. En el SQL Editor del proyecto, ejecuta el contenido completo de `supabase/schema.sql`. Esto crea `lazarus_progress` y limita cada fila al usuario autenticado mediante políticas RLS.
3. En **Authentication → URL Configuration**, configura `https://4ngelhernandez010-stack.github.io/lazarus-academy/` como **Site URL** y agrega esa misma URL a **Redirect URLs**.
4. Mantén **Confirm email** activado si quieres verificar la dirección. El registro envía el enlace a la URL actual de GitHub Pages y, tras confirmarlo, Supabase devuelve la sesión para abrir el panel automáticamente.
5. Configura un SMTP personalizado antes de invitar estudiantes. El servicio SMTP de prueba de Supabase solo envía a miembros del equipo y está limitado; consulta la [guía de SMTP](https://supabase.com/docs/guides/auth/auth-smtp).
6. Publica la carpeta en GitHub Pages y prueba el registro y el inicio de sesión desde otro navegador.

La clave `anon`/`publishable` está diseñada para ser pública. La seguridad de los datos depende de las políticas RLS del archivo SQL. Nunca publiques una clave `secret` o `service_role` ni la contraseña de la base de datos.

Sin configurar un proyecto, el sitio se queda en la pantalla de acceso y no permite entrar al panel. Completa la configuración antes de publicar la web para estudiantes.
