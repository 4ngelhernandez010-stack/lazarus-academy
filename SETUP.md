# Publicación y cuentas de Lazarus Academy

GitHub Pages sirve archivos estáticos. Para registrar usuarios y guardar el mismo progreso desde distintos dispositivos, conecta el frontend con Supabase:

1. El proyecto conectado es `https://taoerirvmdhrrrvthanm.supabase.co`; `supabase-config.js` contiene su URL y clave pública `publishable`.
2. En el SQL Editor del proyecto, ejecuta el contenido completo de `supabase/schema.sql`. Esto crea `lazarus_progress` y limita cada fila al usuario autenticado mediante políticas RLS.
3. En **Authentication → URL Configuration**, configura la URL de GitHub Pages como **Site URL** y agrega esa URL y la ruta del repositorio a **Redirect URLs**. Usa la URL real de publicación, por ejemplo `https://USUARIO.github.io/REPOSITORIO/` si es un proyecto Pages.
4. Publica la carpeta en GitHub Pages. Crea una cuenta, confirma el correo si está habilitado y prueba iniciar sesión desde otro navegador.

La clave `anon`/`publishable` está diseñada para ser pública. La seguridad de los datos depende de las políticas RLS del archivo SQL. Nunca publiques una clave `secret` o `service_role` ni la contraseña de la base de datos.

Sin configurar un proyecto, el sitio se queda en la pantalla de acceso y no permite entrar al panel. Completa la configuración antes de publicar la web para estudiantes.
