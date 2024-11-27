SELECT
	regexp_replace(trim(description),
	' +',
	' ',
	'g') AS cleaned_description,
	lower(regexp_replace(trim(example),
	' +',
	' ',
	'g')) AS cleaned_example
FROM
	staging.sql_glossary;

SELECT
	*
FROM
	staging.sql_glossary
WHERE
	LOWER(description) LIKE '%select%';

SELECT
	*
FROM
	staging.sql_glossary
WHERE
	regexp_matches(LOWER(description),
	'select\b');
