CDSS EBT Theft Claims Analysis Project
Introduction
This data science project aims to estimate the change in administrative theft claims and reimbursement payments following a policy change enacted by the California Department of Social Services (CDSS) on January 27, 2023.

The CDSS assists millions of low-income Californians through the Electronic Benefits Transfer (EBT) system. Like privately issued credit cards, EBT cards can be compromised, leading to the theft of people's benefits. The CDSS recently simplified the process for reporting EBT theft and obtaining reimbursement. This project investigates the impact of this policy change on the volume of theft reimbursement activity.

Objective
The primary objective is to write a two-page memo to the Research, Automation, and Data Division Deputy Director, summarizing the findings of the theft reporting and reimbursement analysis. The analysis should provide an assessment of how the administrative claims to the card issuing company and theft reimbursement payments changed after the policy change. It should also discuss the analytical model used, the rationale behind choosing it, and the limitations of the data or the chosen strategy.

Tools Used
MySQL: Used for database management and answering business questions.
Jupyter Notebook: Used for data cleaning, data preprocessing, and exploratory data analysis.
Data
The project utilizes two de-identified administrative data files from CDSS – claims.csv and reimbursements.csv.

claims.csv
This file contains individual-level claims filed with the card issuing company FIS between June 1st, 2022 and March 31st, 2023. Key data elements include:

CaseID: Encrypted benefit case number.
CardID: Encrypted EBT card number.
Case_county: County of residence of all individuals associated with a given case.
Client_language: Primary spoken language of the individual reporting the theft incident.
Retail_zip: Zip code of the retailer location where the theft transaction occurred.
Adj_amt: Dollar value of the theft transaction being reported.
Transact_date: Date on which the theft transaction occurred.
reimbursements.csv
This file contains individual-level reimbursement payments to EBT card holders by CDSS between June 1st, 2022 and March 31st, 2023. Key data elements include:

CaseID: Same as in claims.csv.
CardID_X (1-4): Encrypted EBT card numbers for up to 4 individuals on a given CaseID.
Case_county: County of residence of all individuals associated with a given case.
Client_language_X (1-4): Primary spoken languages of the individuals on a given CaseID.
Benefit_amount: Dollar value of the reimbursement payment to the victim of EBT theft.
Benefit_year: Year that the stolen benefits being reimbursed were originally issued.
Benefit_month: Month that the stolen benefits being reimbursed were originally issued.
Pay_date: Date that the reimbursement payment to the theft victim was processed.
Methodology
Data Preprocessing: Clean and preprocess data using Python libraries in Jupyter Notebook.
Exploratory Data Analysis: Analyze data to identify trends and patterns in the data.
Model Development: Develop a model or empirical strategy to estimate the change in administrative theft claims and reimbursement payments.
Evaluation and Analysis: Evaluate the model and analyze the results.
Report: Write a two-page memo summarizing the findings.
How to Use
Clone the repository.
Run the Jupyter Notebook for data cleaning, preprocessing, and analysis.
Use MySQL for database management and answering
