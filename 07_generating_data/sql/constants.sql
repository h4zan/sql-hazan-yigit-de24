SELECT
	42 AS meaning_of_life;
VALUES (1),
(2),
(3);

CREATE TABLE IF NOT EXISTS people_records AS (
SELECT
	*
FROM
	(
VALUES 
	(1,'Adam'),
	(2,'Eva'),
	(3,'Cain')) AS people(id,
	name));

desc;
