CREATE SEQUENCE IF NOT EXISTS id_course_sequence START 1;

CREATE TABLE IF NOT EXISTS course(
	id INTEGER DEFAULT nextval('id_course_sequence'),
	content STRING,
	week INTEGER,
	content_type STRING
)

SELECT
	*
FROM
	main.course;

INSERT
	INTO
	main.course(
	content,
	week,
	content_type)
VALUES 
('00_intro',46,'lecture'),
('01_course_structure',46,'lecture'),
('02_setup_duckdb',46,'lecture'),
('03_setup_dbeaver',46,'lecture'),
('04_querying_data',46,'lecture'),
('05_filtering',47,'lecture'),
('06_crud_operations',47,'lecture'),
('07_generating_data',47,'lecture'),
('O8_grouping_data',47,'lecture'),
('09_strings',48,'lecture'),
('10_set_operations',48,'lecture'),
('11_joins',48,'lecture'),
('12_cte',49,'lecture'),
('13_macros',49,'lecture'),
('14_python_duckdb',49,'lecture'),
('15_sql_injection',50,'lecture'),
('16_duckdb_tricks',50,'lecture'),
('17_repetition',51,'old_exams'),
('exam',51,'old_exams'),
('exercise_0',46,'exercise'),
('exercise_1', 47,'exercise'),
('exercise_2',48,'exercise'),
('data', NULL,'material'),


SELECT * FROM main.course;