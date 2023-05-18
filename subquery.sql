USE customers;
SELECT * FROM customer;

SELECT ph.phone_id FROM phone_number ph
WHERE ph.phone_number = '555-3344';

--  FIRST LOOK AT THE INNER QUERY
SELECT 
            ph.phone_number_id
        FROM
            phone_number ph
        WHERE
            ph.phone_number = '555-3344';

-- THEN AT THE OUTER QUERY
SELECT 
    first_name, last_name
FROM
    customer c
WHERE
    c.customer_id IN (SELECT 
            ph.phone_number_id
        FROM
            phone_number ph
        WHERE
            ph.phone_number = '555-3344');