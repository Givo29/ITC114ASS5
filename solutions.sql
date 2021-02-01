-- Question 1

SELECT * FROM EMP WHERE EMP_MGR = 100 AND 30 > ANY (SELECT DATEDIFF(STR_TO_DATE(EMP_HIRE_DATE, '%m/%d/%Y'), STR_TO_DATE(EMP_DOB, '%m/%d/%Y'))/365 AS AGE FROM EMP);

-- Question 2

SELECT EMP_MGR, COUNT(*) FROM EMP GROUP BY EMP_MGR;

-- Question 3

SELECT EMP_MGR, COUNT(*) AS COUNT FROM EMP GROUP BY EMP_MGR ORDER BY COUNT DESC LIMIT 1;

-- Question 4

SELECT CUS_CODE FROM INVOICE WHERE INV_TOTAL > 100 AND INV_TOTAL < 1000;

-- Question 5

SELECT CUSTOMER.*, INVOICE.INV_TOTAL FROM INVOICE LEFT JOIN CUSTOMER ON CUSTOMER.CUS_CODE = INVOICE.CUS_CODE ORDER BY INV_TOTAL DESC LIMIT 1;

-- Question 6

SELECT * FROM PRODUCT WHERE P_MIN < 20 AND V_CODE = 21225;

-- Question 7

SELECT PRODUCT.*, LINE.LINE_PRICE FROM PRODUCT LEFT JOIN LINE ON LINE.P_CODE = PRODUCT.P_CODE ORDER BY LINE.LINE_PRICE DESC LIMIT 1;