CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS(
SELECT
	UPPER(trim(sql_word)) AS sql_word,
	regexp_replace(trim(description),
	' +',
	' ',
	'g') AS description,
	lower(regexp_replace(trim(example),
	' +',
	' ',
	'g')) AS example
FROM
	staging.sql_glossary);

SELECT * FROM refined.sql_glossary;

