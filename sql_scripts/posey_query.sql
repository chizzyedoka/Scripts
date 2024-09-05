#!/bin/bash

-- q1
SELECT id
FROM orders
WHERE (gloss_qty > 4000) OR (poster_qty > 4000);

-- q2
SELECT id
FROM orders
WHERE standard_qty=0 AND ((gloss_qty > 1000) OR (poster_qty > 1000));


-- q3
SELECT name AS company_name, primary_poc
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%')
AND (primary_poc NOT LIKE '%eane%');

-- q4
SELECT r.name AS region_name,
       s.name AS sales_rep_name,
       a.name AS account_name
FROM sales_reps s
JOIN accounts a ON s.id = a.sales_rep_id
JOIN region r ON r.id = s.region_id
ORDER BY 3;
