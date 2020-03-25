/* Quantos usuários únicos jogaram em fevereiro após o dia 06/02/2020? */
with played as (
    SELECT COUNT(distinct player_id) as played
        FROM matchmaking_stats_summary
    WHERE updated_at >= '2020-02-06'
), not_played as (
    SELECT COUNT(distinct player_id) as not_played
        FROM matchmaking_stats_summary
    WHERE updated_at >= '2020-02-06'
    and matches_played = 0
)
select * from played
union all
select * from not_played;
