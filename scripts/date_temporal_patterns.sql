use radd_data;

-- Query 1: Claims Temporal Patterns - Before Policy Change
SELECT
    DAYOFMONTH(transact_date) AS claim_date,
    COUNT(*) AS claims_count,
    ROUND(SUM(adj_amt), 2) AS total_claims_amount,
    'Claims' AS category,
    'Before Policy Change' AS policy_period
FROM
    claims
WHERE
    transact_date < '2023-01-27'
GROUP BY
    claim_date
ORDER BY
    claims_count


/*
DATE COUNT  AMOUNT  CATEGORY   POLICY PERIOD
2	39800	21148473.74	Claims	Before Policy Change
1	32924	17351818.79	Claims	Before Policy Change
3	32749	15826408.76	Claims	Before Policy Change
10	13304	2715230.31	Claims	Before Policy Change
9	13118	2561357.63	Claims	Before Policy Change
8	13109	2672738.92	Claims	Before Policy Change
6	13054	2833728.45	Claims	Before Policy Change
4	13045	2642380.24	Claims	Before Policy Change
5	13010	2640267.46	Claims	Before Policy Change
7	12982	2604928.22	Claims	Before Policy Change
11	8873	1613984.65	Claims	Before Policy Change
12	8126	1648912.53	Claims	Before Policy Change
13	7394	1327469.6	Claims	Before Policy Change
15	6332	1049697.75	Claims	Before Policy Change
16	6184	1068442.22	Claims	Before Policy Change
14	6107	1170808.54	Claims	Before Policy Change
18	5997	1007335.91	Claims	Before Policy Change
17	5572	825830.21	Claims	Before Policy Change
19	5246	832878.22	Claims	Before Policy Change
23	4953	810636.62	Claims	Before Policy Change
22	4869	911274.41	Claims	Before Policy Change
21	4827	714185.76	Claims	Before Policy Change
20	4452	728838.75	Claims	Before Policy Change
24	3570	547634.65	Claims	Before Policy Change
30	3511	789004.38	Claims	Before Policy Change
29	3466	737656.98	Claims	Before Policy Change
25	3331	494648.79	Claims	Before Policy Change
26	3279	644835.28	Claims	Before Policy Change
28	3180	598719.34	Claims	Before Policy Change
27	2780	506728.23	Claims	Before Policy Change
31	2035	485964.13	Claims	Before Policy Change  
*/

-- =====================================================

-- Query 2: Claims Temporal Patterns - After Policy Change
SELECT
    DAYOFMONTH(transact_date) AS claim_date,
    COUNT(*) AS claims_count,
    ROUND(SUM(adj_amt), 2) AS total_claims_amount,
    'Claims' AS category,
    'After Policy Change' AS policy_period
FROM
    claims
WHERE
    transact_date >= '2023-01-27'
GROUP BY
    claim_date
ORDER BY
    claims_count
    
    /*
    DATE COUNT     AMOUNT     CATEGORY    PAY PERIOD
    2	6534	3493356.11	Claims	After Policy Change
1	5729	3004079.97	Claims	After Policy Change
3	5052	2402392.93	Claims	After Policy Change
6	2563	554809.27	Claims	After Policy Change
7	2367	481899.59	Claims	After Policy Change
9	2218	502853.61	Claims	After Policy Change
5	2194	427281.24	Claims	After Policy Change
10	2027	455730.65	Claims	After Policy Change
4	2022	409693.42	Claims	After Policy Change
8	2011	347870.58	Claims	After Policy Change
11	1246	215828.58	Claims	After Policy Change
13	1098	217640.78	Claims	After Policy Change
12	962	203305.93	Claims	After Policy Change
30	884	319395.3	Claims	After Policy Change
27	875	176032.37	Claims	After Policy Change
31	821	254155.99	Claims	After Policy Change
29	810	236357.04	Claims	After Policy Change
14	638	102157.8	Claims	After Policy Change
28	633	138570.18	Claims	After Policy Change
15	563	108322.29	Claims	After Policy Change
16	560	99076.69	Claims	After Policy Change
19	465	93626.81	Claims	After Policy Change
17	442	77546.99	Claims	After Policy Change
18	427	90458.13	Claims	After Policy Change
20	251	45849.69	Claims	After Policy Change
21	229	43595.49	Claims	After Policy Change
26	219	64188.17	Claims	After Policy Change
23	163	25176.27	Claims	After Policy Change
25	162	35474.18	Claims	After Policy Change
22	134	25038.85	Claims	After Policy Change
24	109	18166.92	Claims	After Policy Change
    */
-- =========================================================

-- Reimbursements Temporal Patterns - Before Policy Change
SELECT
    DAYOFMONTH(pay_date) AS reimbursement_date,
    COUNT(*) AS reimbursements_count,
    ROUND(SUM(benefit_amount), 2) AS total_reimbursements_amount,
    'Reimbursements' AS category,
    'Before Policy Change' AS policy_period
FROM
    reimbursements
WHERE
    pay_date < '2023-01-27'
GROUP BY
    reimbursement_date
ORDER BY
    reimbursements_count
/*
DATE COUNT      AMOUNT      CATEGORY     POLICY PERIOD
19	3493	2289171	Reimbursements	Before Policy Change
15	3355	2114446	Reimbursements	Before Policy Change
9	3320	2235217	Reimbursements	Before Policy Change
21	3309	2022599	Reimbursements	Before Policy Change
13	3229	2140776	Reimbursements	Before Policy Change
18	3195	2127115	Reimbursements	Before Policy Change
23	3185	1875610	Reimbursements	Before Policy Change
16	3159	2038269	Reimbursements	Before Policy Change
14	3111	2047362	Reimbursements	Before Policy Change
20	3089	2022850	Reimbursements	Before Policy Change
12	3065	2074173	Reimbursements	Before Policy Change
22	3034	1832232	Reimbursements	Before Policy Change
17	2917	1835718	Reimbursements	Before Policy Change
8	2665	1800775	Reimbursements	Before Policy Change
10	2591	1707297	Reimbursements	Before Policy Change
7	2584	1689509	Reimbursements	Before Policy Change
6	2407	1628989	Reimbursements	Before Policy Change
28	2217	1348402	Reimbursements	Before Policy Change
26	2160	1268895	Reimbursements	Before Policy Change
29	2098	1198758	Reimbursements	Before Policy Change
11	2059	1457119	Reimbursements	Before Policy Change
5	2054	1393384	Reimbursements	Before Policy Change
25	1945	1172345	Reimbursements	Before Policy Change
30	1939	1060881	Reimbursements	Before Policy Change
27	1870	1133292	Reimbursements	Before Policy Change
24	1696	1025700	Reimbursements	Before Policy Change
2	1654	994972	Reimbursements	Before Policy Change
4	1638	1005081	Reimbursements	Before Policy Change
3	1522	951899	Reimbursements	Before Policy Change
1	1511	949362	Reimbursements	Before Policy Change
31	848	454052	Reimbursements	Before Policy Change

*/
-- =========================================================================

-- Reimbursements Temporal Patterns - After Policy Change

SELECT
    DAYOFMONTH(pay_date) AS reimbursement_date,
    COUNT(*) AS reimbursements_count,
    ROUND(SUM(benefit_amount), 2) AS total_reimbursements_amount,
    'Reimbursements' AS category,
    'After Policy Change' AS policy_period
FROM
    reimbursements
WHERE
    pay_date >= '2023-01-27'
GROUP BY
    reimbursement_date
ORDER BY
    reimbursements_count

/*
DATE COUNT     AMOUNT       CATEGORY      POLICY PERIOD
10	2363	1438088	Reimbursements	After Policy Change
16	2202	1300968	Reimbursements	After Policy Change
9	2200	1405894	Reimbursements	After Policy Change
8	2120	1312350	Reimbursements	After Policy Change
22	2113	1192907	Reimbursements	After Policy Change
15	2091	1266833	Reimbursements	After Policy Change
14	2056	1172922	Reimbursements	After Policy Change
17	2051	1167114	Reimbursements	After Policy Change
7	2020	1336970	Reimbursements	After Policy Change
27	2009	1115921	Reimbursements	After Policy Change
3	1926	1213773	Reimbursements	After Policy Change
23	1856	1100591	Reimbursements	After Policy Change
21	1793	1070358	Reimbursements	After Policy Change
13	1774	1073950	Reimbursements	After Policy Change
28	1706	959379	Reimbursements	After Policy Change
6	1665	1089084	Reimbursements	After Policy Change
24	1625	941495	Reimbursements	After Policy Change
2	1612	938494	Reimbursements	After Policy Change
30	1585	864303	Reimbursements	After Policy Change
1	1330	701121	Reimbursements	After Policy Change
29	1034	507898	Reimbursements	After Policy Change
31	995	531824	Reimbursements	After Policy Change
20	942	543377	Reimbursements	After Policy Change
18	641	362065	Reimbursements	After Policy Change
4	411	254095	Reimbursements	After Policy Change
25	274	166738	Reimbursements	After Policy Change
11	229	115620	Reimbursements	After Policy Change
19	198	98123	Reimbursements	After Policy Change
12	152	70986	Reimbursements	After Policy Change
26	83	36490	Reimbursements	After Policy Change
5	40	19043	Reimbursements	After Policy Change

*/
