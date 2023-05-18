use radd_data;

-- 1.Trend Analysis
-- transact_date, pay_date, adj_amt, benefit_amount
-- Analyze the trends in the volume and value of claims and theft reimbursements over time, and identify any significant differences before and 
-- after the policy change. Retrieve the monthly trends for both claims and reimbursements. 
-- Calculate the count of claims and reimbursements as well as the total amount for each month. 
-- Observe the trends in the volume and value of claims and reimbursements over time. 
-- Compare the trends before and after the policy change to identify any significant differences in the patterns.


SELECT
    DATE_FORMAT(transact_date, '%m') AS claim_month,
    COUNT(*) AS claims_count,
    SUM(adj_amt) AS total_claims_amount,
    'Claims' AS category
FROM
    claims
GROUP BY
    claim_month

UNION ALL

-- Reimbursements Trend Analysis
SELECT
    DATE_FORMAT(pay_date, '%m') AS reimbursement_month,
    COUNT(*) AS reimbursements_count,
    SUM(benefit_amount) AS total_reimbursements_amount,
    'Reimbursements' AS category
FROM
    reimbursements
GROUP BY
    reimbursement_month
ORDER BY
    claims_count DESC,
    total_claims_amount DESC;
    
-- CLAIM MONTH	CLAIM COUNT	TOTAL CLAIMS AMOUNT	CATEGORY
-- 12		51089		$15137407.33		Claims
-- 01		50909		$15772602.81		Claims
-- 11		43151		$12976470.18		Claims
-- 10		38248		$12659453.28		Claims
-- 09		35793		$10779262.66		Claims
-- 02		35162		$11781591.36		Claims
-- 08		32644		$9215761.81		Claims
-- 07		27012		$7865849.84		Claims
-- 06		25805		$8076146.29		Claims
-- 03		23030		$13770154.00		Reimbursements
-- 02		17414		$10347920.00		Reimbursements
-- 01		15788		$8886424.00		Reimbursements
-- 12		13120		$7938195.00		Reimbursements
-- 10		10155		$6870459.00		Reimbursements
-- 11		9806		$6371553.00		Reimbursements
-- 09		8946		$5499708.00		Reimbursements
-- 08		8865		$5815312.00		Reimbursements
-- 07		6486		$4365801.00		Reimbursements
-- 06		6405		$4399498.00		Reimbursements
-- 03		5774		$1918205.73		Claims


