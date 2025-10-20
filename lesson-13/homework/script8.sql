SELECT COALESCE(email, phone, address) AS first_non_null_value
FROM person;
