# 🏦 Banking Management System

A **Banking Management System** developed using **MySQL** to manage customer accounts, banking transactions, loans, cards, fixed deposits, beneficiaries, and other banking operations.

This project demonstrates both **Basic** and **Advanced SQL** concepts and is designed for learning relational database management and real-world banking operations.

---

# 📌 Project Overview

The Banking Management System is a relational database project developed using MySQL.

It provides an efficient way to store, retrieve, update, and manage banking information such as customers, accounts, transactions, loans, cards, fixed deposits, beneficiaries, employees, and branches.

The project implements advanced SQL concepts to ensure data integrity, improve performance, and simplify report generation.

---

# 🎯 Project Objectives

- Manage customer information
- Manage bank accounts
- Record banking transactions
- Maintain loan information
- Store card details
- Manage beneficiaries
- Handle fixed deposits
- Generate banking reports
- Reduce data redundancy
- Improve data accuracy
- Demonstrate advanced SQL concepts

---

# 🛠 Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL

---

# 📂 Database Name

```sql
banking_database_db
```

---

# 📊 Database Tables

The project contains **20 relational tables**.

- Branches
- Account Types
- Transaction Types
- Loan Types
- Card Types
- Bank Services
- Payment Modes
- Employees
- Users
- Customers
- Accounts
- Beneficiaries
- Transactions
- Loans
- Loan Payments
- Cards
- Nominees
- Fixed Deposits
- Audit Logs
- Roles

---

# 📌 SQL Concepts Implemented

### DDL
- CREATE
- ALTER
- DROP
- TRUNCATE

### DML
- INSERT
- UPDATE
- DELETE

### DQL
- SELECT

### TCL
- COMMIT
- ROLLBACK
- SAVEPOINT

### DCL
- CREATE USER
- GRANT
- REVOKE

---

# 🔗 Database Features

- Primary Key
- Foreign Key
- Constraints
- Auto Increment
- Joins
- Aggregate Functions
- GROUP BY
- HAVING
- CASE Statement
- Views
- Stored Procedures
- Functions
- Triggers
- Transactions
- Indexes
- Window Functions
- Subqueries
- Query Optimization

---

# 📁 Project Structure

```
Banking Management System
│
├── Database.sql
├── Tables.sql
├── Insert_Data.sql
├── Queries.sql
├── Views.sql
├── Stored_Procedures.sql
├── Functions.sql
├── Triggers.sql
├── Transactions.sql
├── README.md
└── Documentation.pdf
```

---

# 📈 Business Reports

- Customer Account Report
- Customer Transaction Report
- Loan Details Report
- Card Details Report
- Fixed Deposit Report
- Beneficiary Report
- Branch-wise Account Report
- High Balance Customer Report
- Active Card Report
- Customer Summary Report

---

# ⚡ Advanced SQL Objects

## 👁 Views

- Customer Transactions View
- Loan Details View
- Card Details View
- Fixed Deposits View

## ⚙ Stored Procedures

- GetCustomerAccountDetails
- GetEmployeesByBranch
- GetAccountDetails

## 🔢 Functions

- CalculateInterest
- CalculateMaturityAmount

## 🔥 Triggers

- Transaction Audit Trigger

## 📌 Indexes

- Customer Name Index
- Balance Index

---

# 🔄 Entity Relationship

```
Customer
│
├── Account
│      ├── Transactions
│      ├── Cards
│      └── Fixed Deposits
│
├── Loans
│      └── Loan Payments
│
└── Beneficiaries

Branch
│
├── Employees
└── Accounts
```

---

# 🚀 How to Run

### Step 1

Open MySQL Workbench.

### Step 2

Create Database.

```sql
CREATE DATABASE banking_database_db;
USE banking_database_db;
```

### Step 3

Execute all CREATE TABLE queries.

### Step 4

Insert sample records.

### Step 5

Execute Views, Procedures, Functions, Triggers, and Indexes.

### Step 6

Run SQL queries.

### Step 7

Verify outputs.

---

# 📋 Advantages

- Easy to use
- Centralized database
- Secure data management
- Fast query execution
- Better customer management
- Improved banking operations
- Reduced data redundancy
- Accurate reports
- Easy maintenance
- Scalable database

---

# ⚠ Limitations

- Desktop-based database
- Manual data entry
- No online banking
- No mobile application
- No SMS or Email notifications

---

# 🚀 Future Enhancements

- Internet Banking
- Mobile Banking Application
- UPI Integration
- ATM Integration
- SMS Alerts
- Email Notifications
- AI-based Fraud Detection
- Cloud Database Integration

---

# 📚 Concepts Covered

- Relational Database Design
- SQL Programming
- Normalization
- Database Relationships
- Aggregate Functions
- Joins
- Views
- Stored Procedures
- Functions
- Triggers
- Transactions
- Indexes
- Window Functions
- Subqueries
- Query Optimization

---

# 👩‍💻 Author

## Priyadharshini

**B.Tech Information Technology**

**Banking Management System Project**

**Academic Year: 2026**

**GitHub:** https://github.com/Priyadharshini-270

---

# 📄 License

This project is created for educational and academic purposes.

Feel free to use and modify it for learning and research.
