use radd_data;



SELECT
    'Claims - Before Policy Change' AS category,
    COUNT(*) AS count,
    SUM(adj_amt) AS total_amount
FROM
    claims
WHERE
    transact_date < '2023-01-27'

UNION ALL

SELECT
    'Claims - After Policy Change' AS category,
    COUNT(*) AS count,
    SUM(adj_amt) AS total_amount
FROM
    claims
WHERE
    transact_date >= '2023-01-27'

UNION ALL

SELECT
    'Reimbursements - Before Policy Change' AS category,
    COUNT(*) AS count,
    SUM(benefit_amount) AS total_amount
FROM
    reimbursements
WHERE
    pay_date < '2023-01-27'

UNION ALL

SELECT
    'Reimbursements - After Policy Change' AS category,
    COUNT(*) AS count,
    SUM(benefit_amount) AS total_amount
FROM
    reimbursements
WHERE
    pay_date >= '2023-01-27';

-- CATEGORY									COUNT		TOTAL AMOUNT
-- Claims - Before Policy Change: 			301179 		$91,512,819.47
-- Claims - After Policy Change:  			44408 		$14,669,931.82
-- Reimbursements - Before Policy Change: 	76919		$48,896,250.00
-- Reimbursements - After Policy Change:   	43096 		$25,368,774.00