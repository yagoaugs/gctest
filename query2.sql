-- Em qual dia mais jogadores deixaram de jogar no mês de fevereiro?

SELECT
  COUNT(player_monthly_stats.ref_date) AS qtd,
  player_monthly_stats.ref_date AS date
FROM player_monthly_stats
WHERE player_monthly_stats.ref_date between '2020-02-01' and '2020-02-29'
GROUP BY date
ORDER BY qtd ASC
LIMIT 10;

-- Qual a media de jogos por dia

-- Qual a media de jogos no mes dos jogadores