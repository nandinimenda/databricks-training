-- 1. Extract digits from mixed value
SELECT REGEXP_SUBSTR(mixed_value, '[0-9]+')
FROM regex_practice;

-- 2. Extract alphabets from mixed value
SELECT REGEXP_SUBSTR(mixed_value, '[a-zA-Z]+')
FROM regex_practice;

-- 3. Extract starting digits
SELECT REGEXP_SUBSTR(mixed_value, '^[0-9]+')
FROM regex_practice;

-- 4. Extract ending digits
SELECT REGEXP_SUBSTR(mixed_value, '[0-9]+$')
FROM regex_practice;

-- 5. Extract exactly two digits
SELECT REGEXP_SUBSTR(mixed_value, '[0-9]{2}')
FROM regex_practice;

-- 6. Extract exactly one digit
SELECT REGEXP_SUBSTR(mixed_value, '[0-9]')
FROM regex_practice;

-- 7. Extract country code
SELECT REGEXP_SUBSTR(phone, '[0-9]{2}')
FROM regex_practice;

-- 8. Extract username before @
SELECT REGEXP_SUBSTR(email, '^[a-zA-Z0-9._-]+')
FROM regex_practice;

-- 9. Extract domain with @
SELECT REGEXP_SUBSTR(email, '@[a-zA-Z.]+')
FROM regex_practice;

-- 10. Extract domain without @
SELECT REPLACE(
REGEXP_SUBSTR(email, '@[a-zA-Z.]+'),
'@',
''
)
FROM regex_practice;

-- 11. Extract extension
SELECT REGEXP_SUBSTR(email, '\\.[a-zA-Z]+$')
FROM regex_practice;

 -- 12. Email Validation
SELECT email
FROM regex_practice
WHERE email REGEXP
'[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}';
