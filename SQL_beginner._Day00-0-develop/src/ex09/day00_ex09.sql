SELECT
  ( SELECT name
   FROM person
   WHERE id = tmp.person_id ) AS person_name,

  ( SELECT name
   FROM pizzeria
   WHERE id = tmp.pizzeria_id ) AS pizzeria_name
FROM
  ( SELECT *
   FROM person_visits
   WHERE ( visit_date BETWEEN '2022-01-07' AND '2022-01-09' ) ) as tmp
ORDER BY person_name ASC,
         pizzeria_name DESC;