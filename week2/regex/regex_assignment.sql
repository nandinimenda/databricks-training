SELECT REGEXP_SUBSTR('abc123xyz', '[0-9]+');

SELECT REGEXP_SUBSTR('karthik@gmail.com', '@[a-zA-Z.]+');

SELECT REGEXP_SUBSTR('+91-9876543210', '[0-9]{10}');

SELECT REGEXP_REPLACE('abc123', '[0-9]', '');

SELECT 'gmail.com' REGEXP '[a-z]+';
