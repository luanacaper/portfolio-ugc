-- ============================================================================
-- Aba "Vídeos (Geral)": agora dá pra marcar em qual portfólio cada vídeo
-- aparece (Geral, SI, os dois ou nenhum/oculto). Sem isso, todo vídeo
-- cadastrado aparecia nos dois sites ao mesmo tempo (Geral e SI leem a
-- mesma tabela videos_geral).
--
-- Default "todos" mantém o comportamento atual pros vídeos já cadastrados.
--
-- Supabase > SQL Editor > New query > cola tudo > Run.
-- ============================================================================

alter table public.videos_geral add column if not exists portfolio text not null default 'todos';
