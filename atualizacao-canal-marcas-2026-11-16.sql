-- ============================================================================
-- Conecta "de onde veio a visita" com "quem virou lead": adiciona a coluna
-- "canal" na tabela de leads (marcas), preenchida automaticamente pelos dois
-- sites a partir de agora (mesma lógica que já populava "De onde vieram" nas
-- Métricas: utm_source, ou Instagram/TikTok/Google/Direto etc. pelo referrer).
--
-- Sem essa coluna, o painel não sabe comparar canal por canal qual gera mais
-- lead de verdade — só sabia quais geravam mais visita.
--
-- Supabase > SQL Editor > New query > cola tudo > Run.
-- ============================================================================

alter table public.marcas add column if not exists canal text;
