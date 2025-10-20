SELECT
  SUBSTRING_INDEX(FullName, ' ', 1) AS FirstName,
  CASE
      WHEN LENGTH(FullName) - LENGTH(REPLACE(FullName, ' ', '')) >= 2
           THEN SUBSTRING_INDEX(SUBSTRING_INDEX(FullName, ' ', 2), ' ', -1)
      ELSE NULL
  END AS MiddleName,
  CASE
      WHEN FullName LIKE '% %' THEN SUBSTRING_INDEX(FullName, ' ', -1)
      ELSE NULL
  END AS LastName
FROM Students;
