SELECT
	*
FROM
	main.cleaned_salaries;

SELECT
	COUNT(job_title)
FROM
	main.cleaned_salaries
WHERE
	job_title = 'Data Engineer';

SELECT
	COUNT(DISTINCT(job_title))
FROM
	main.cleaned_salaries;

SELECT
	COUNT(job_title)
FROM
	main.cleaned_salaries
GROUP BY
	salary_level;

SELECT
	experience_level,
	MEDIAN(annual_salary_in_sek) AS median_salary,
	ROUND(AVG(annual_salary_in_sek)) AS mean_salary
FROM
	main.cleaned_salaries
GROUP BY
	experience_level ;

SELECT
	job_title,
	MEDIAN(annual_salary_in_sek) AS median_salary
FROM
	main.cleaned_salaries
GROUP BY
	job_title
ORDER BY
	median_salary DESC;

SELECT
	remote_ratio,
	ROUND(COUNT(*) * 100.0 / (
	SELECT
		COUNT(*)
	FROM
		main.cleaned_salaries),
	2) AS remote_percentage
FROM
	main.cleaned_salaries
GROUP BY
	remote_ratio;

SELECT
	company_size,
	ROUND(AVG(monthly_salary_in_sek)) AS average_salary_monthly
FROM
	main.cleaned_salaries
WHERE
	job_title = 'Data Engineer'
GROUP BY
	company_size
ORDER BY 
		average_salary_monthly DESC;
