-- Quantos usuários únicos não jogaram após o dia 03/02/2020?
with played as (
    SELECT COUNT(distinct player_id) as played
        FROM matchmaking_stats_summary
    WHERE updated_at >= '2020-02-03'
), not_played as (
    SELECT COUNT(distinct player_id) as not_played
        FROM matchmaking_stats_summary
    WHERE updated_at >= '2020-02-03'
    and matches_played = 0
)
select * from played
union all
select * from not_played;

-- Com relacao ao inicio de entrada de players, qual o fluxo de jogadores por dia

-- Media de vitorias dos jogadores por dia

-- Media de vitorias por player

-- Quais jogadores sao recorrentes
