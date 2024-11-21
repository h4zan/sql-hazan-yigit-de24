SELECT * FROM main.food;

CREATE TABLE IF NOT EXISTS clean_food AS (
SELECT
	id AS food,
	week_id AS week,
	--week[:4] AS year
	SUBSTRING(week, 1, 4) AS year,
	value AS number_searches
FROM
	main.food);

SELECT * FROM main.clean_food;
	
