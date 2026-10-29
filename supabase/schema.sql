-- Ejecuta este archivo una vez en el SQL Editor de tu proyecto Supabase.
-- Cada persona solo puede leer o modificar su propio progreso.
create table if not exists public.lazarus_progress (
  user_id uuid primary key references auth.users (id) on delete cascade,
  progress jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.lazarus_progress enable row level security;

drop policy if exists "Users read their own Lazarus progress" on public.lazarus_progress;
create policy "Users read their own Lazarus progress"
  on public.lazarus_progress for select to authenticated
  using ((select auth.uid()) = user_id);

drop policy if exists "Users create their own Lazarus progress" on public.lazarus_progress;
create policy "Users create their own Lazarus progress"
  on public.lazarus_progress for insert to authenticated
  with check ((select auth.uid()) = user_id);

drop policy if exists "Users update their own Lazarus progress" on public.lazarus_progress;
create policy "Users update their own Lazarus progress"
  on public.lazarus_progress for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

grant select, insert, update on public.lazarus_progress to authenticated;
revoke all on public.lazarus_progress from anon;
