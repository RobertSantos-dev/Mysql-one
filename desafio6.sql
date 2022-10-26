SELECT 
    MIN(plans.value_plan) AS faturamento_minimo,
    MAX(plans.value_plan) AS faturamento_maximo,
    ROUND(AVG(plans.value_plan), 2) AS faturamento_medio,
    SUM(plans.value_plan) AS faturamento_total
FROM
	SpotifyClone.users AS us
        INNER JOIN
    SpotifyClone.plans AS plans ON us.plan_id = plans.plan_id;
