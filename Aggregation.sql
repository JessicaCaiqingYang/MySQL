USE shop;

SELECT COUNT(DISTINCT store) FROM SALES1;

SELECT Store, MIN(SalesAmount)
FROM SALES1
GROUP BY Store
HAVING MIN(SalesAmount) < 20;

SELECT * FROM SALES1;

SELECT * FROM SALES1
WHERE Store = 'London'
AND Month != 'Dec'
AND SalesPerson IN ('Bill', 'Frank')
AND SalesAmount > 50;

SELECT COUNT(Week) FROM SALES1;

SELECT Week, COUNT(Week) AS total_sales
FROM SALES1
GROUP BY Week
ORDER BY Week;

SELECT Week, COUNT(Week) AS total_sales
FROM SALES1
GROUP BY Week
ORDER BY Week DESC;