SELECT
	*
FROM
	staging.sql_glossary;

SELECT
	'SQL word' AS TYPE,
	sql_word,
	sql_word[:2],
	sql_word[2:5],
	sql_word[-1]
FROM
	staging.sql_glossary;

SELECT
	'fun' || ' joke';

SELECT
	'SQL command: ' || sql_word
FROM
	staging.sql_glossary;

SELECT
	trim(sql_word) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;

SELECT
	UPPER(trim(sql_word)) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;

SELECT
	*
FROM
	staging.sql_glossary;

SELECT
	replace(trim(description),
	' ',
	'')
FROM
	staging.sql_glossary;

---- 

SELECT
	UPPER(SUBSTR('hej', 1, 1)) || 'ej' || ' ' || UPPER('de24');

SELECT
	sql_word,
	UPPER(TRIM(sql_word)) AS sql_word,
FROM
	staging.sql_glossary;

SELECT
	REPLACE(TRIM(description),
	' ',
	'')
FROM
	staging.sql_glossary;

SELECT
	REPLACE(TRIM(description),
	' ',
	''),
	REPLACE(TRIM(description),
	' ',
	' ')
FROM
	staging.sql_glossary;
