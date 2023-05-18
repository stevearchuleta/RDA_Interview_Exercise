CREATE DATABASE RADD_data;

-- 1.
-- Total Claims
-- adj_amt
-- Calculate the total value of claims reported before and after the policy change. 
-- Sum the adj_amt for transactions before the policy change date ('2023-01-27') and after the policy change date to 
-- observe the overall impact of the policy change on the monetary value of theft claims. */
SELECT 
    SUM(CASE WHEN transact_date < '2023-01-27' THEN adj_amt ELSE 0 END) AS total_claims_pre_policy,
    SUM(CASE WHEN transact_date >= '2023-01-27' THEN adj_amt ELSE 0 END) AS total_claims_post_policy
FROM claims;
-- TOTAL CLAIMS PRE POLICY: $ 91,512,819.47
-- TOTAL CLAIMS POST POLICY: $ 14,669,931.82

-- 2.
-- Average Claims
-- adj. amt
-- Calculate the average value of claims by dividing the total adj_amt by the number of claims. 
-- Provide insights into whether the policy change affected not only the volume but also the average size of theft claims.
SELECT 
    AVG(CASE WHEN transact_date < '2023-01-27' THEN adj_amt END) AS average_claim_value_pre_policy,
    AVG(CASE WHEN transact_date >= '2023-01-27' THEN adj_amt END) AS average_claim_value_post_policy
FROM claims;
-- AVERAGE CLAIM VALUE PRE POLICY: $ 303.85
-- AVERAGE CLAIM VALUE POST POLICY: $ 330.34

-- 3.
-- Distribution of Claims Values
-- adj_amt
SELECT 
    CASE WHEN transact_date < '2023-01-27' THEN 'Pre-Policy' ELSE 'Post-Policy' END AS policy_period,
    FLOOR(adj_amt / 100) * 100 AS claim_value_range,
    COUNT(*) AS claim_count
FROM claims
WHERE transact_date < '2023-01-27' OR transact_date >= '2023-01-27' -- Adjust the dates as needed
GROUP BY policy_period, claim_value_range
ORDER BY policy_period, claim_value_range;

-- 233 rows returned

