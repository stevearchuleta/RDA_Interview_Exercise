# This script will load data from two CSV files:
# claims.csv and reimbursements.csv,
# into two respective tables in the MySQL database: 'claims' and 'reimbursements'.
# Please note that the tables must already exist in the MySQL database,
# and their structure should match the structure of the CSV files.
# If the tables do not exist or have a different structure,
# an error will occur.

# To run this script, you need to:
# 1. Have a MySQL server running
# 2. Know the user, password, and database name.
# 3. Install the necessary Python library for connecting to MySQL (mysql-connector-python),
#    which can be installed using pip. For example, you can use the command:
#    pip install mysql-connector-python

# The script uses the mysql-connector-python library to connect to MySQL,
# create a cursor, execute INSERT statements to load data from the CSV files,
# commit the transactions, and finally close the cursor and the connection.

import csv
import mysql.connector

# MySQL configurations
user = 'stevearchuleta'
password = 'Gaels4572'
host = 'localhost'
database = 'RADD_data'

# define the file paths
claims_path = 'C:/Users/steve/Documents/RADD/RDA_Interview_Exercise/data/claims.csv'
reimbursements_path = 'C:/Users/steve/Documents/RADD/RDA_Interview_Exercise/data/reimbursements.csv'

# establish the connection to MySQL
cnx = mysql.connector.connect(user=user, password=password, host=host, database=database)
cursor = cnx.cursor()

# load the claims.csv
with open(claims_path, 'r') as f:
    reader = csv.reader(f)
    next(reader)  # skip the header
    for row in reader:
        cursor.execute(
            "INSERT INTO claims VALUES (%s, %s, %s, %s, %s, %s, %s)", row
        )

# load the reimbursements.csv
with open(reimbursements_path, 'r') as f:
    reader = csv.reader(f)
    next(reader)  # skip the header
    for row in reader:
        cursor.execute(
            "INSERT INTO reimbursements VALUES (%s, %s, %s, %s, %s, %s)", row
        )

cnx.commit()
cursor.close()
cnx.close()
