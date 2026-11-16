-- ============================================================================
-- Aba "Links UTM": além de "fonte" (utm_source), agora dá pra preencher os
-- outros parâmetros padrão de UTM (meio, campanha, conteúdo, termo).
--
-- Supabase > SQL Editor > New query > cola tudo > Run.
-- ============================================================================

alter table public.links_utm add column if not exists meio text;
alter table public.links_utm add column if not exists campanha text;
alter table public.links_utm add column if not exists conteudo text;
alter table public.links_utm add column if not exists termo text;
