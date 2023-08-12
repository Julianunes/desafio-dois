SELECT E.id, E.name, AVG(S.value) AS MEDIA
FROM employee E JOIN salary S
 ON E.id = S.employee_id
WHERE S.payment_date > now() - INTERVAL 3 MONTH
GROUP BY E.id, E.name
ORDER BY MEDIA DESC
LIMIT 3
