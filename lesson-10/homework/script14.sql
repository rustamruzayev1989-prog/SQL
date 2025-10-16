SELECT e1.name AS Employee1,
       e2.name AS Employee2,
       e1.manager_id AS ManagerID
FROM Employees e1
JOIN Employees e2 ON e1.manager_id = e2.manager_id
WHERE e1.id < e2.id
  AND e1.manager_id IS NOT NULL;
