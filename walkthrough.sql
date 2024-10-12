-- select and where
-- https://mystery.knightlab.com/walkthrough.html
SELECT count(*) FROM person;

SELECT * FROM person LIMIT 10;

SELECT DISTINCT type FROM crime_scene_report;

SELECT * FROM person WHERE name = 'Kinsey Erickson'

SELECT *
FROM crime_scene_report
WHERE
    type = 'theft'
    AND city = 'Chicago';

SELECT DISTINCT city FROM crime_scene_report WHERE city LIKE 'I%';

SELECT DISTINCT
    city
FROM crime_scene_report
WHERE
    city BETWEEN 'W%' AND 'Z%';

SELECT DISTINCT
    city
FROM crime_scene_report
WHERE
    LOWER(city) = 'sql city';

SELECT max(age) FROM drivers_license;

SELECT *
FROM drivers_license
ORDER BY age ASC
LIMIT 10
    -- Write a query that identifies the first witness.

SELECT *
FROM person
WHERE
    address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

-- Write a query that identifies the second witness.

SELECT *
FROM person
WHERE
    name like '%Annabel%'
    AND address_street_name = 'Franklin Ave';

-- joins
SELECT person.name, income.annual_income
FROM income
    JOIN person ON income.ssn = person.ssn
WHERE
    annual_income > 450000
    -- Write a query that shows the interview transcripts for our two subjects.
SELECT person.name, interview.transcript
FROM person
    JOIN interview ON person.id = interview.person_id
WHERE
    person.id = 14887
    OR person.id = 16371;

select *
from
    person
    join get_fit_now_member on person.id = get_fit_now_member.person_id
    join get_fit_now_check_in on get_fit_now_member.membership_start_date = get_fit_now_check_in.check_in_date
    join drivers_license on person.license_id = drivers_license.id
where
    membership_id like '48Z%'
    and membership_status = 'gold';
