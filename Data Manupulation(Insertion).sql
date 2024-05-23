# Using the Database for data manupulation (Records Insertion)
use indian_bank;

----------------------------------------------
# DATA MANUPULATION - VALUE INSERTION INTO TABLES
----------------------------------------------
# Values inserting into Bank table
insert into Banks (bank_id, bank_name, headquarters, founded_year, type) values
(1, 'State Bank of India', 'Mumbai', '1955-07-01', 'Public'),
(2, 'HDFC Bank', 'Mumbai', '1994-08-19', 'Private'),
(3, 'ICICI Bank', 'Mumbai', '1994-01-05', 'Private'),
(4, 'Punjab National Bank', 'New Delhi', '1894-05-19', 'Public'),
(5, 'Axis Bank', 'Mumbai', '1993-12-03', 'Private');

#checking Banks table
select * from Banks;

# Values inserting into Customers table
insert into Customers (customer_id, name, gender, age, account_type, account_balance) values
(1, 'Rajesh Kumar', 'Male', 35, 'Savings', 50000.00),
(2, 'Anita Sharma', 'Female', 28, 'Current', 75000.50),
(3, 'Vikram Singh', 'Male', 42, 'Savings', 150000.75),
(4, 'Priya Verma', 'Female', 30, 'Current', 30000.20),
(5, 'Ravi Patel', 'Male', 27, 'Savings', 20000.00),
(6, 'Sneha Iyer', 'Female', 33, 'Savings', 60000.35),
(7, 'Amit Gupta', 'Male', 40, 'Current', 85000.90),
(8, 'Suman Rao', 'Female', 45, 'Savings', 120000.10),
(9, 'Rahul Desai', 'Male', 38, 'Current', 95000.60),
(10, 'Kiran Joshi', 'Female', 29, 'Savings', 70000.80),
(11, 'Manish Thakur', 'Male', 32, 'Current', 65000.40),
(12, 'Neha Bansal', 'Female', 34, 'Savings', 40000.90),
(13, 'Arjun Mehta', 'Male', 36, 'Savings', 50000.75),
(14, 'Swati Jain', 'Female', 31, 'Current', 30000.30),
(15, 'Vikas Tiwari', 'Male', 29, 'Savings', 80000.20),
(16, 'Aishwarya Nair', 'Female', 27, 'Savings', 25000.00),
(17, 'Suresh Reddy', 'Male', 45, 'Current', 90000.50),
(18, 'Rohini Das', 'Female', 28, 'Savings', 55000.35),
(19, 'Deepak Aggarwal', 'Male', 39, 'Current', 65000.75),
(20, 'Meena Roy', 'Female', 26, 'Savings', 40000.80),
(21, 'Anil Kumar', 'Male', 44, 'Savings', 75000.10),
(22, 'Sita Devi', 'Female', 37, 'Current', 100000.00),
(23, 'Gaurav Malhotra', 'Male', 31, 'Savings', 90000.50),
(24, 'Pooja Singh', 'Female', 33, 'Savings', 50000.35),
(25, 'Nitin Khandelwal', 'Male', 30, 'Current', 70000.60),
(26, 'Vandana Mishra', 'Female', 42, 'Savings', 30000.20),
(27, 'Karthik Sinha', 'Male', 35, 'Savings', 85000.00),
(28, 'Smita Bhattacharya', 'Female', 29, 'Current', 60000.90),
(29, 'Ajay Pandey', 'Male', 38, 'Savings', 95000.75),
(30, 'Ruchi Kapoor', 'Female', 41, 'Savings', 65000.40),
(31, 'Naveen Chandra', 'Male', 32, 'Current', 40000.90),
(32, 'Lata Sen', 'Female', 30, 'Savings', 55000.80),
(33, 'Harish Shetty', 'Male', 44, 'Current', 80000.20),
(34, 'Jyoti Kaur', 'Female', 27, 'Savings', 60000.00),
(35, 'Ashok Patil', 'Male', 36, 'Savings', 70000.50),
(36, 'Ritika Agarwal', 'Female', 31, 'Current', 50000.35),
(37, 'Santosh Pillai', 'Male', 43, 'Savings', 85000.75),
(38, 'Sunita Mehta', 'Female', 40, 'Savings', 30000.80),
(39, 'Vinayak Kulkarni', 'Male', 45, 'Current', 100000.10),
(40, 'Rita Tiwari', 'Female', 29, 'Savings', 95000.60),
(41, 'Mukesh Arora', 'Male', 28, 'Savings', 70000.20),
(42, 'Pallavi Shah', 'Female', 35, 'Current', 65000.00),
(43, 'Girish Bhatia', 'Male', 32, 'Savings', 90000.50),
(44, 'Anjali Menon', 'Female', 30, 'Savings', 50000.35),
(45, 'Akhil Saxena', 'Male', 39, 'Current', 75000.75),
(46, 'Tanya Bose', 'Female', 38, 'Savings', 40000.80),
(47, 'Mohit Khanna', 'Male', 34, 'Savings', 85000.10),
(48, 'Rachna Dutta', 'Female', 31, 'Current', 60000.00),
(49, 'Aravind Rajan', 'Male', 41, 'Savings', 70000.50),
(50, 'Kavita Vyas', 'Female', 33, 'Savings', 30000.35);

#checking Customers table
select * from Customers;

# Values inserting into Branch table
insert into Branches (branch_id, bank_id, branch_name, branch_location, manager_name) values
(1, 1, 'SBI Main Branch', 'Mumbai', 'Rakesh Mehta'),
(2, 1, 'SBI Andheri Branch', 'Mumbai', 'Anita Gupta'),
(3, 2, 'ICICI Main Branch', 'Mumbai', 'Rajesh Khanna'),
(4, 2, 'ICICI Bandra Branch', 'Mumbai', 'Sunita Rao'),
(5, 3, 'HDFC Main Branch', 'Mumbai', 'Vikas Bhatia'),
(6, 3, 'HDFC Vashi Branch', 'Mumbai', 'Priya Jain'),
(7, 4, 'Axis Main Branch', 'Mumbai', 'Karan Kapoor'),
(8, 4, 'Axis Thane Branch', 'Thane', 'Deepa Verma'),
(9, 5, 'PNB Main Branch', 'New Delhi', 'Vikram Singh'),
(10, 5, 'PNB Dwarka Branch', 'New Delhi', 'Meera Sharma');

#checking Branches table
select * from Branches;

# Values inserting into Transactions table
insert into Transactions (transaction_id, customer_id, branch_id, transaction_date, transaction_amount, transaction_type) values
(1, 1, 1, '2024-01-01', 5000.00, 'Credit'),
(2, 2, 2, '2024-01-02', 3000.00, 'Debit'),
(3, 3, 3, '2024-01-03', 7500.00, 'Credit'),
(4, 4, 1, '2024-01-04', 2000.00, 'Debit'),
(5, 5, 2, '2024-01-05', 10000.00, 'Credit'),
(6, 6, 3, '2024-01-06', 2500.00, 'Debit'),
(7, 7, 1, '2024-01-07', 8000.00, 'Credit'),
(8, 8, 2, '2024-01-08', 500.00, 'Debit'),
(9, 9, 3, '2024-01-09', 9000.00, 'Credit'),
(10, 10, 1, '2024-01-10', 4500.00, 'Debit'),
(11, 1, 1, '2024-01-11', 1500.00, 'Credit'),
(12, 2, 2, '2024-01-12', 3500.00, 'Debit'),
(13, 3, 3, '2024-01-13', 12000.00, 'Credit'),
(14, 4, 1, '2024-01-14', 6000.00, 'Debit'),
(15, 5, 2, '2024-01-15', 8500.00, 'Credit'),
(16, 6, 3, '2024-01-16', 4000.00, 'Debit'),
(17, 7, 1, '2024-01-17', 7000.00, 'Credit'),
(18, 8, 2, '2024-01-18', 2000.00, 'Debit'),
(19, 9, 3, '2024-01-19', 11000.00, 'Credit'),
(20, 10, 1, '2024-01-20', 9000.00, 'Debit'),
(21, 1, 1, '2024-01-21', 3000.00, 'Credit'),
(22, 2, 2, '2024-01-22', 1500.00, 'Debit'),
(23, 3, 3, '2024-01-23', 4500.00, 'Credit'),
(24, 4, 1, '2024-01-24', 1000.00, 'Debit'),
(25, 5, 2, '2024-01-25', 7000.00, 'Credit'),
(26, 6, 3, '2024-01-26', 3000.00, 'Debit'),
(27, 7, 1, '2024-01-27', 9500.00, 'Credit'),
(28, 8, 2, '2024-01-28', 4500.00, 'Debit'),
(29, 9, 3, '2024-01-29', 2000.00, 'Credit'),
(30, 10, 1, '2024-01-30', 8000.00, 'Debit'),
(31, 1, 1, '2024-01-31', 5000.00, 'Credit'),
(32, 2, 2, '2024-02-01', 3500.00, 'Debit'),
(33, 3, 3, '2024-02-02', 6000.00, 'Credit'),
(34, 4, 1, '2024-02-03', 1500.00, 'Debit'),
(35, 5, 2, '2024-02-04', 9000.00, 'Credit'),
(36, 6, 3, '2024-02-05', 4500.00, 'Debit'),
(37, 7, 1, '2024-02-06', 8000.00, 'Credit'),
(38, 8, 2, '2024-02-07', 3500.00, 'Debit'),
(39, 9, 3, '2024-02-08', 5000.00, 'Credit'),
(40, 10, 1, '2024-02-09', 2000.00, 'Debit'),
(41, 1, 1, '2024-02-10', 7000.00, 'Credit'),
(42, 2, 2, '2024-02-11', 3000.00, 'Debit'),
(43, 3, 3, '2024-02-12', 8500.00, 'Credit'),
(44, 4, 1, '2024-02-13', 2500.00, 'Debit'),
(45, 5, 2, '2024-02-14', 6000.00, 'Credit'),
(46, 6, 3, '2024-02-15', 1000.00, 'Debit'),
(47, 7, 1, '2024-02-16', 5000.00, 'Credit'),
(48, 8, 2, '2024-02-17', 4000.00, 'Debit'),
(49, 9, 3, '2024-02-18', 8000.00, 'Credit'),
(50, 10, 1, '2024-02-19', 2500.00, 'Debit'),
(51, 1, 1, '2024-02-20', 9000.00, 'Credit'),
(52, 2, 2, '2024-02-21', 5000.00, 'Debit'),
(53, 3, 3, '2024-02-22', 7000.00, 'Credit'),
(54, 4, 1, '2024-02-23', 3000.00, 'Debit'),
(55, 5, 2, '2024-02-24', 9500.00, 'Credit'),
(56, 6, 3, '2024-02-25', 4500.00, 'Debit'),
(57, 7, 1, '2024-02-26', 5000.00, 'Credit'),
(58, 8, 2, '2024-02-27', 3500.00, 'Debit'),
(59, 9, 3, '2024-02-28', 8000.00, 'Credit'),
(60, 10, 1, '2024-02-29', 2000.00, 'Debit'),
(61, 1, 1, '2024-03-01', 4500.00, 'Credit'),
(62, 2, 2, '2024-03-02', 3000.00, 'Debit'),
(63, 3, 3, '2024-03-03', 7500.00, 'Credit'),
(64, 4, 1, '2024-03-04', 1000.00, 'Debit'),
(65, 5, 2, '2024-03-05', 7000.00, 'Credit'),
(66, 6, 3, '2024-03-06', 3500.00, 'Debit'),
(67, 7, 1, '2024-03-07', 5000.00, 'Credit'),
(68, 8, 2, '2024-03-08', 1500.00, 'Debit'),
(69, 9, 3, '2024-03-09', 9000.00, 'Credit'),
(70, 10, 1, '2024-03-10', 2500.00, 'Debit'),
(71, 1, 1, '2024-03-11', 6000.00, 'Credit'),
(72, 2, 2, '2024-03-12', 1000.00, 'Debit'),
(73, 3, 3, '2024-03-13', 8000.00, 'Credit'),
(74, 4, 1, '2024-03-14', 3000.00, 'Debit'),
(75, 5, 2, '2024-03-15', 5000.00, 'Credit'),
(76, 6, 3, '2024-03-16', 2500.00, 'Debit'),
(105, 11, 2, '2024-03-11', 6000.00, 'Credit'),
(106, 12, 3, '2024-03-12', 1000.00, 'Debit'),
(77, 13, 1, '2024-03-13', 8000.00, 'Credit'),
(78, 14, 2, '2024-03-14', 3000.00, 'Debit'),
(79, 15, 3, '2024-03-15', 5000.00, 'Credit'),
(80, 16, 1, '2024-03-16', 2500.00, 'Debit'),
(81, 17, 2, '2024-03-17', 7000.00, 'Credit'),
(82, 18, 3, '2024-03-18', 1500.00, 'Debit'),
(83, 19, 1, '2024-03-19', 9000.00, 'Credit'),
(84, 20, 2, '2024-03-20', 3500.00, 'Debit'),
(85, 21, 3, '2024-03-21', 7500.00, 'Credit'),
(86, 22, 1, '2024-03-22', 5000.00, 'Debit'),
(87, 23, 2, '2024-03-23', 8000.00, 'Credit'),
(88, 24, 3, '2024-03-24', 3000.00, 'Debit'),
(89, 25, 1, '2024-03-25', 6500.00, 'Credit'),
(90, 26, 2, '2024-03-26', 2000.00, 'Debit'),
(91, 27, 3, '2024-03-27', 7000.00, 'Credit'),
(92, 28, 1, '2024-03-28', 4500.00, 'Debit'),
(93, 29, 2, '2024-03-29', 9000.00, 'Credit'),
(94, 30, 3, '2024-03-30', 1000.00, 'Debit'),
(95, 31, 1, '2024-03-31', 6000.00, 'Credit'),
(96, 32, 2, '2024-04-01', 2500.00, 'Debit'),
(97, 33, 3, '2024-04-02', 7000.00, 'Credit'),
(98, 34, 1, '2024-04-03', 3500.00, 'Debit'),
(99, 35, 2, '2024-04-04', 8000.00, 'Credit'),
(100, 36, 3, '2024-04-05', 2000.00, 'Debit'),
(101, 37, 1, '2024-04-06', 9000.00, 'Credit'),
(102, 38, 2, '2024-04-07', 3000.00, 'Debit'),
(103, 39, 3, '2024-04-08', 6000.00, 'Credit'),
(104, 40, 1, '2024-04-09', 1500.00, 'Debit');

#checking Transactions table
select * from Transactions;
