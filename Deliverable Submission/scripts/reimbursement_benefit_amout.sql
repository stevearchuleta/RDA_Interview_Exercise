use radd_data;

-- 1
-- Total Reimbursemtns
-- benefit_amount
-- Calculate the total value of reimbursements reported before and after the policy change.
-- Sum the benefit_amount for transactions before the policy change date ('2023-01-27') and after the policy change date to 
-- observe the overall impact of the policy change on the monetary value of theft claims.
SELECT
    SUM(CASE WHEN pay_date < '2023-01-27' THEN benefit_amount ELSE 0 END) AS total_reimbursements_pre_policy,
    SUM(CASE WHEN pay_date >= '2023-01-27' THEN benefit_amount ELSE 0 END) AS total_reimbursements_post_policy
FROM reimbursements;

-- TOTAL REIMBURSEMENTS PRE POLICY: $ 48,896,250.00
-- TOTAL REIMBURSEMENTS POST POLICY: $ 25,368,774.00


-- 2.
-- benefit_amount
-- Calculate the average value of reimbursements by dividing the total benfit_amount by the number of reimbursements. 
-- Provide insights into whether the policy change affected not only the volume but also the average size of theft reimbursements.
SELECT
AVG(benefit_amount) AS average_reimbursement_value
FROM reimbursements;

SELECT
AVG(CASE WHEN pay_date < '2023-01-27' THEN benefit_amount END) AS average_reimbursement_value_pre_policy,
AVG(CASE WHEN pay_date >= '2023-01-27' THEN benefit_amount END) AS average_reimbursement_value_post_policy
FROM reimbursements;

-- AVERAGE REIMBURSEMENT VALUE PRE POLICY: $ 635.68
-- AVERAGE REIMBURSEMENT VALUE POST POLICY: $ 588.66


-- 3.Distribution of Reimbursements
-- benefit_amount
-- Generate a histogram of the reimbursement values (benefit_amount) grouped into ranges. 
-- Categorize the claims into pre-policy and post-policy periods and count the number of reimbursements falling within each value range. 
-- The histogram helps visualize any changes in the distribution of reimbursement values after the policy change. 
-- Analyze the total value, average value, and distribution of reimbursement values before and after the policy change. 
-- Gain insight into the impact of the policy change on the monetary aspects of theft reimbursements.

SELECT
CASE WHEN pay_date < '2023-01-27' THEN 'Pre-Policy' ELSE 'Post-Policy' END AS policy_period,
FLOOR(benefit_amount / 100) * 100 AS reimbursement_value_range,
COUNT(*) AS reimbursement_count
FROM reimbursements
GROUP BY policy_period, reimbursement_value_range
ORDER BY policy_period, reimbursement_value_range;

-- 80 rows returned