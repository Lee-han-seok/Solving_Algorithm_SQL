SELECT PLACES.ID, PLACES.NAME, PLACES.HOST_ID
FROM (SELECT * 
           FROM PLACES
           GROUP BY HOST_ID
           HAVING COUNT(ID) >= 2) B
LEFT JOIN PLACES
ON B.HOST_ID = PLACES.HOST_ID
ORDER BY PLACES.ID;