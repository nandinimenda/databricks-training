-- 1. Extract digits from mixed value

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]';

-- 2. Extract alphabets from mixed value

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[a-zA-Z]';

-- 3. Extract starting digits

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '^[0-9]';

-- 4. Extract ending digits

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]$';

-- 5. Extract exactly two digits

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9][0-9]';

-- 6. Extract exactly one digit

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]';

-- 7. Extract country code

SELECT phone
FROM regex_practice
WHERE phone REGEXP '^\\+[0-9][0-9]';

-- 8. Extract numeric portion between alphabets

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[a-zA-Z][0-9]+[a-zA-Z]';

-- 9. Extract username before @

SELECT email
FROM regex_practice
WHERE email REGEXP '^[a-zA-Z0-9._-]+@';

-- 10. Extract domain with @

SELECT email
FROM regex_practice
WHERE email REGEXP '@[a-zA-Z.]';

-- 11. Extract domain without @

SELECT REPLACE(email,'@',' ')
FROM regex_practice;

-- 12. Extract extension

SELECT email
FROM regex_practice
WHERE email REGEXP '\\.[a-zA-Z]+$';

-- 13. Extract alphabets continuously

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[a-zA-Z]+';

-- 14. Extract numbers continuously

SELECT mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]+';

-- 15. Extract first three characters

SELECT LEFT(full_text,3)
FROM regex_practice;

-- 16. Extract last two characters

SELECT RIGHT(full_text,2)
FROM regex_practice;

-- 17. Extract employee number

SELECT full_text
FROM regex_practice
WHERE full_text REGEXP '[0-9]+';

-- 18. Extract ending country code

SELECT full_text
FROM regex_practice
WHERE full_text REGEXP '[0-9]+$';

-- 19. Extract text between underscores

SELECT full_text
FROM regex_practice
WHERE full_text REGEXP '_[A-Z]+_';

-- 20. Extract digits after +

SELECT phone
FROM regex_practice
WHERE phone REGEXP '^\\+[0-9][0-9]';
