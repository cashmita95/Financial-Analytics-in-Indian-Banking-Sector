#Creating Database
Create Database indian_bank;

----------------------------------------------
# WORKING ON STRUCTURE OF DATABASE
----------------------------------------------
# Using the Database
use indian_bank;

#  Creating Banks Table: Details of banks
create table Banks (bank_id int primary key,
    bank_name varchar(20) not null,
    headquarters varchar(15),
    founded_year date,
    type varchar(50) check (type in ('Public', 'Private')));

# Creating Customers Table: Details of customers
create table Customers (customer_id int primary key,
    name varchar(20) not null,
    gender varchar(6) check (gender in ('Male', 'Female')),
    age int,
    account_type varchar(10) check (account_type in ('Savings', 'Current')),
    account_balance decimal(15, 2));
    
# Creating Branches Table: Details of branches
create table Branches (branch_id int primary key,
    bank_id int,
    branch_name varchar(50) not null,
    branch_location varchar(15),
    manager_name varchar(20),
    foreign key (bank_id) references Banks(bank_id));

# Creating Transactions Table: Details of transactions
create table Transactions (transaction_id int primary key,
    customer_id int,
    branch_id int,
    transaction_date date,
    transaction_amount decimal(15, 2),
    transaction_type varchar(6) check (transaction_type in ('Credit', 'Debit')),
    foreign key (customer_id) references Customers(customer_id),
    foreign key (branch_id) references Branches(branch_id));
     
# Checking Tables in Database
show Tables;