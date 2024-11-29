SELECT
	*
FROM
	main.cleaned_salaries;

ALTER TABLE main.cleaned_salaries
ADD COLUMN employment_type_label TEXT;

ALTER TABLE main.cleaned_salaries
ADD COLUMN company_size_label TEXT;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_level TEXT;

ALTER TABLE main.cleaned_salaries
ADD COLUMN experience_level_label TEXT;

ALTER TABLE main.cleaned_salaries ADD COLUMN annual_salary_in_sek INTEGER;

ALTER TABLE main.cleaned_salaries ADD COLUMN monthly_salary_in_sek INTEGER;

UPDATE
	main.cleaned_salaries
SET
	annual_salary_in_sek = ROUND(salary_in_usd * 10.92 ),
	monthly_salary_in_sek = ROUND(salary_in_usd * 10.92 / 12);

UPDATE
	main.cleaned_salaries
SET
	employment_type_label = CASE 
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
		ELSE employment_type
	END;

UPDATE
	main.cleaned_salaries
SET 
	company_size_label = CASE 
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size
	END;

UPDATE
	main.cleaned_salaries
SET
	experience_level_label = CASE 
		WHEN experience_level = 'SE' THEN 'Senior Engineer'
		WHEN experience_level = 'MI' THEN 'Mid-Level Engineer'
		WHEN experience_level = 'EN' THEN 'Entry-Level Engineer'
		WHEN experience_level = 'EX' THEN 'Expert'
		ELSE experience_level
	END;

UPDATE
	main.cleaned_salaries
SET 
	salary_level = CASE 
		WHEN monthly_salary_in_sek < 93000 THEN 'low'
		WHEN monthly_salary_in_sek < 129000 THEN 'medium'
		WHEN monthly_salary_in_sek < 170000 THEN 'high'
		ELSE 'insanely_high'
	END;

CREATE OR REPLACE TABLE main.cleaned_salaries AS
SELECT
	experience_level,
	experience_level_label,
	employment_type,
	employment_type_label,
	job_title,
	annual_salary_in_sek,
	monthly_salary_in_sek,
	remote_ratio,
	company_size,
	company_size_label,
	salary_level
FROM 
	main.cleaned_salaries;

SELECT
	*
FROM
	main.cleaned_salaries;
