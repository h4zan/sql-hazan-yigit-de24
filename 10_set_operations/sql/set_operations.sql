SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;

SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
UNION ALL
SELECT * FROM synthetic.sales_feb;

SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;

SELECT product_name, amount  FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;

SELECT product_name, amount  FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;