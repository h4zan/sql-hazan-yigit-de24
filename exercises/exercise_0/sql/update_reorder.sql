SELECT
	*
FROM
	main.course;

DELETE
FROM
	main.course
WHERE
	content = '02_setup_duckdb';

INSERT
	INTO
	main.course (
content,
	week,
	content_type 
)
VALUES
('02_setup_duckdb',
46,
'lecture')

SELECT
	*
FROM
	main.course
ORDER BY
	week ASC;
