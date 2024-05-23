# Financial Analytics in Indian Banking Sector

## Project Details
- **Industry:** Finance and Banking
- **SQL Difficulty Level:** Medium
- **Environment:** MySQL Workbench

## Project Description/Problem Statement
This project involves comprehensive data analysis on the Indian Bank dataset. The objective is to clean the data, perform exploratory data analysis (EDA), and extract meaningful insights to understand customer behaviors, transaction patterns, and bank performance.

## Database Tables Overview
1. **Banks Table:** Details of banks
   - `bank_id`: (INT) Unique identifier for each bank (Primary Key)
   - `bank_name`: (VARCHAR) Name of the bank
   - `headquarters`: (VARCHAR) Location of the bank's headquarters
   - `founded_year`: (INT) Year the bank was founded
   - `type`: (VARCHAR) Type of bank (Public/Private)

2. **Customers Table:** Details of customers
   - `customer_id`: (INT) Unique identifier for each customer (Primary Key)
   - `name`: (VARCHAR) Name of the customer
   - `gender`: (VARCHAR) Gender of the customer (Male/Female)
   - `age`: (INT) Age of the customer
   - `account_type`: (VARCHAR) Type of account held by the customer (Savings/Current)
   - `account_balance`: (DECIMAL) Current balance in the customer's account

3. **Transactions Table:** Details of transactions
   - `transaction_id`: (INT) Unique identifier for each transaction (Primary Key)
   - `customer_id`: (INT) Identifier linking to the Customers table (Foreign Key)
   - `branch_id`: (INT) Identifier linking to the Branches table (Foreign Key)
   - `transaction_date`: (DATE) Date the transaction was made
   - `transaction_amount`: (DECIMAL) Amount involved in the transaction
   - `transaction_type`: (VARCHAR) Type of transaction (Credit/Debit)

4. **Branches Table:** Details of branches
   - `branch_id`: (INT) Unique identifier for each branch (Primary Key)
   - `bank_id`: (INT) Identifier linking to the Banks table (Foreign Key)
   - `branch_name`: (VARCHAR) Name of the branch
   - `branch_location`: (VARCHAR) Location of the branch
   - `manager_name`: (VARCHAR) Name of the branch manager

## Queries Performed 
### Data Cleaning

1. **Finding Duplicate Records**
   - Identified duplicate records in `Customers`, `Banks`, `Branches`, and `Transactions` tables to ensure data integrity.
   - Results indicated no duplicate records, confirming the uniqueness of all entries.

2. **Handling Missing Values**
   - Checked for missing values in all tables (`Customers`, `Banks`, `Branches`, and `Transactions`).
   - No missing values were found, ensuring complete datasets for analysis.

### Exploratory Data Analysis (EDA)

1. **Bank Analysis**
   - Categorized banks by type and counted the total number of banks in each category.

2. **Customer Analysis**
   - Analyzed customer distribution by gender.
   - Calculated average, minimum, and maximum account balances for each account type.
   - Analyzed the age distribution of customers.

3. **Transaction Analysis**
   - Calculated total transaction amounts for each transaction type.
   - Identified the branch with the highest number of transactions.
   - Found the total transaction amount for each month.
   - Analyzed total transaction amounts per year.

### Data Relationships and Insights

1. **Customer and Bank Relationships**
   - Found the number of customers per bank.
   - Identified the top 10 customers by account balance.
   - Determined the bank with the highest total transaction amount.
   - Found the top 5 customers who made the highest number of transactions.

2. **Branch Analysis**
   - Calculated the average transaction amount for each branch.
   - Found the number of customers associated with each branch.
   - Identified the branch managers of the top 3 branches with the highest total transaction amounts.

3. **Customer Behavior**
   - Identified customers who made transactions in the last three consecutive years.
   - Found customers with account balances above the average.
   - Identified customers with more than one account.


## Summary Of The Key Components Used In The SQL Queries:
### Data Cleaning:
1. **Duplicate Detection**: Used `GROUP BY` and `COUNT(*)` with `HAVING` clause to find duplicate records across tables.
2. **Missing Values Handling**: Used `WHERE` clause with `IS NULL` conditions to identify and handle missing values.

### Exploratory Data Analysis (EDA):
3. **Data Distribution Analysis**: Employed `GROUP BY` with aggregate functions (`COUNT(*)`, `SUM()`, `AVG()`, `MIN()`, `MAX()`) to analyze data distributions.
4. **Ranking and Sorting**: Used `ORDER BY` to sort data in ascending or descending order.
5. **Date Formatting**: Utilized `DATE_FORMAT()` to extract month and year from date fields.

### Data Relationships and Insights:
6. **Join Operations**: Used `JOIN` with various tables (`Banks`, `Branches`, `Transactions`, `Customers`) to establish data relationships.
7. **Subqueries**: Used subqueries to calculate averages (`AVG()`), identify highest values (`MAX()`), and compare values (`>`).
8. **Grouping**: Employed `GROUP BY` to group data based on specified columns.
9. **Limiting Results**: Used `LIMIT` to restrict the number of rows returned in queries.

### Summary of Key Components:
- **Functions**: `COUNT(*)`, `SUM()`, `AVG()`, `MIN()`, `MAX()`, `YEAR()`, `DATE_FORMAT()`, `FLOOR()`, `ROUND()`
- **Clauses**: `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `JOIN`, `LIMIT`
- **Operations**: `=`, `>`, `IN`, `IS NULL`
- **Data Formatting**: `DATE_FORMAT()` for date manipulation

## Conclusion
The analysis provided valuable insights into customer demographics, transaction patterns, and bank performance. The data cleaning ensured the integrity and completeness of the dataset, facilitating accurate and meaningful analysis.
