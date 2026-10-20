-- ============================================================================
-- Nova aba "Links UTM" no painel ADM: gera links rastreáveis (ex. pra colar
-- num cadastro de plataforma) e mostra de onde vieram os acessos na aba
-- Métricas, em "De onde vieram" — usando o utm_source que já existe no site.
--
-- Diferente das outras tabelas, aqui NÃO existe leitura pública: só a Luana
-- (autenticada/admin) vê e mexe nesses links.
--
-- Supabase > SQL Editor > New query > cola tudo > Run.
-- ============================================================================

create table if not exists public.links_utm (
  id bigint generated always as identity primary key,
  nome text not null,
  site text not null default 'geral',
  fonte text not null,
  created_at timestamptz not null default now()
);

alter table public.links_utm enable row level security;

create policy "admin tudo" on public.links_utm
  for all to authenticated
  using (is_admin()) with check (is_admin());

grant select, insert, update, delete on public.links_utm to authenticated;
