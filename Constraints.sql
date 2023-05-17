SELECT DISTINCT p.PNAME FROM PART p;
SELECT DISTINCT p.PNAME, p.P_ID
FROM PART p;
# it will return all rows because the p.P_ID is distinct, even though some of the values in p.PNAME are same
SELECT * FROM PROJECT j
WHERE j.CITY = 'LONDON';

SELECT * FROM PART;
SELECT * FROM PROJECT;
SELECT * FROM SUPPLIER;
SELECT * FROM SUPPLY;