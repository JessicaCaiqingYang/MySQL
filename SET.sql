SELECT * FROM Sweet;

SELECT * FROM Savoury;

SELECT * FROM Savoury
WHERE main_ingredient IN ('pork', 'beef');

SELECT * FROM Sweet
WHERE price <= 0.5;

SELECT * FROM Sweet
WHERE item_name != 'cannoli';

SELECT * FROM Sweet
WHERE item_name LIKE 'ci%';

SELECT * FROM Sweet
WHERE item_name LIKE 'c%';

SELECT * FROM Savoury
WHERE price > 1 AND price < 3
ORDER BY price;

SELECT COUNT(price) AS total_number
FROM sweet;


SELECT MAX(price) AS max_price
FROM Sweet
;


SELECT item_name, price
FROM Sweet
ORDER BY price DESC
LIMIT 1
;

UPDATE Savoury
SET
Savoury.price = 1.25
WHERE item_name = 'pasty';
