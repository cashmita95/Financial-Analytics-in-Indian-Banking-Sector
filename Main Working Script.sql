# Using the Database for Analysis
use indian_bank;
show tables;

#------------------------------------------------------------
#Data Cleaning
#------------------------------------------------------------

#1)Finding any duplicate records in the Customers table
select customer_id, name, gender, age, account_type, account_balance, count(*)
from Customers
group by customer_id, name, gender, age, account_type, account_balance
having COUNT(*) > 1;

#2)Finding any duplicate records in the Bank table
select bank_id,bank_name,headquarters,founded_year,type, count(*)
from banks
group by bank_id,bank_name,headquarters,founded_year,type
having COUNT(*) > 1;

#3)Finding any duplicate records in the branches table
select branch_id,bank_id,branch_name,branch_location,manager_name, count(*)
from branches
group by branch_id,bank_id,branch_name,branch_location,manager_name
having COUNT(*) > 1;

#4)Finding any duplicate records in the transactions table
select transaction_id,customer_id,branch_id,transaction_date,transaction_amount,transaction_type, count(*)
from transactions
group by transaction_id,customer_id,branch_id,transaction_date,transaction_amount,transaction_type
having COUNT(*) > 1;

#Conclusion : From Q1 and Q4 we can conclude that there is no duplicates in the data, meaning all the records are unique.

#5)Identify and handle missing values in the Customers table
select * from customers
where name is null or gender is null or age is null or account_type is null or account_balance is null;

#6)Identify and handle missing values in the banks table
select * from banks
where bank_id is null or bank_name is null or headquarters is null or founded_year is null or type is null;

#7)Identify and handle missing values in the branchesbranches table
select * from branches
where branch_id is null or bank_id is null or branch_name is null or branch_location is null or manager_name is null;

#8)Identify and handle missing values in the transactions table
select * from transactions
where transaction_id is null or customer_id is null or branch_id is null or transaction_date is null or transaction_amount is null or transaction_type is null;

#Conclusion : From Q5 and Q8 we can conclude that there is no Missing values in the data.

#------------------------------------------------------------
#Exploratory Data Analysis (EDA)
#------------------------------------------------------------

#9)Find the total number of banks and categorize them by type
select type, count(*) as total_banks from Banks group by type;

#10)Analyzing the distribution of customers by gender
select gender, count(*) as total_customers from Customers group by gender;

#11)Finding the average, minimum, and maximum account balances for each account type
select account_type, avg(account_balance) as average_balance, min(account_balance) as minimum_balance, max(account_balance) as maximum_balance
from Customers group by account_type;

#12)Calculating the total transaction amount for each transaction type
select transaction_type, sum(transaction_amount) as total_amount
from Transactions group by transaction_type;

#13)Identifing the branch with the highest number of transactions
select branch_id, count(*) as `total transactions`
from transactions
group by branch_id order by `total transactions` desc limit 1;

#14)Analyzing the age distribution of customers
select age, count(*) as `total customers` from Customers
group by age order by age;

#15)Finding the total transaction amount for each month
select date_format(transaction_date, '%Y') as Year,
       date_format(transaction_date, '%M') as Month,
       sum(transaction_amount) as `Total Amount`
from transactions
group by Year, Month 
order by Year, Month;

#------------------------------------------------------------
#Data Relationships and Insights:
#------------------------------------------------------------
#16)Finding the number of customers per bank
select b.bank_name, count(c.customer_id) as total_customers
from banks b
join branches br Using (bank_id)
join transactions t using (branch_id)
join customers c using (customer_id)
group by b.bank_name;

#17)Identifing the top 10 customers by account balance
select customer_id, name, account_balance
from customers
order by account_balance desc limit 10;

#18)Identifying the bank with the highest total transaction amount
select bank_name, sum(transaction_amount) as total_transaction_amount
from banks
join branches br using (bank_id)
join transactions t using (branch_id)
group by bank_name
order by total_transaction_amount desc limit 1;

#19)Find the top 5 customers who have made the highest number of transactions
select c.customer_id, c.name, count(t.transaction_id) as total_transactions
from customers c
join transactions t using (customer_id)
group by c.customer_id, c.name
order by total_transactions desc
limit 5;


#20)Calculate the average transaction amount for each branch
select branch_id, branch_name, round(avg(transaction_amount), 2) as average_transaction_amount
from branches 
join transactions using(branch_id)
group by branch_id, branch_name;

#21)Find the average account balance for customers grouped by gender
select gender, round(avg(account_balance),2) as `avg balance`
from customers group by gender;

#22)Analyze the total transaction amount per year
select year(transaction_date) as transaction_year, sum(transaction_amount) as total_amount
from transactions
group by transaction_year order by transaction_year;

#23)Find the number of customers associated with each branch
select br.branch_id, br.branch_name, count(distinct c.customer_id) as total_customers
from branches br
join transactions t on br.branch_id = t.branch_id
join customers c on t.customer_id = c.customer_id
group by br.branch_id, br.branch_name;

#24)Calculate the total transaction amount for each customer age group
select floor(age/10)*10 as age_group, sum(t.transaction_amount) as total_amount
from customers c
join transactions t on c.customer_id = t.customer_id
group by age_group order by age_group;

#25)Identify the branch managers of the top 3 branches with the highest total transaction amount
select branch_name, manager_name, sum(transaction_amount) as total_transaction_amount
from branches
join transactions using (branch_id)
group by branch_name, manager_name
order by total_transaction_amount desc limit 3;

#26)Find customers who have made transactions in the last three consecutive years
select c.customer_id, c.name
from customers c
join transactions t using (customer_id)
where year(t.transaction_date) in (year(current_date) - 2, year(current_date) - 1, year(current_date))
group by c.customer_id, c.name
having count(distinct year(t.transaction_date)) = 3;

#27)Find customers whose account balance is above the average account balance of all customers
select customer_id, name, account_balance
from customers
where account_balance > (select avg(account_balance) from customers);

#28)Identify customers who have more than one account
select customer_id, name
from customers
where customer_id in (select customer_id
    from customers
    group by customer_id
    having count(*) > 1);

















