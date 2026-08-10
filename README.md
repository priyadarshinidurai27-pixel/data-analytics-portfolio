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












---

# 📊 Cashflow Guardian 360 Dashboard

A professional **Cashflow Guardian 360 Dashboard** developed using **Microsoft Excel** to analyze invoice data, payment status, outstanding amounts, and financial risk.

The project transforms raw financial data into meaningful **KPIs, interactive charts, and dashboard insights** to support better financial monitoring and decision-making.

---

## 🎯 Project Objectives

- Monitor total invoices
- Analyze total invoice value
- Track paid and unpaid invoices
- Identify overdue invoices
- Monitor outstanding amounts
- Analyze customer payment behavior
- Identify high-risk invoices
- Analyze risk levels
- Generate financial reports
- Support data-driven decision making

---

## 🛠️ Tools & Technologies

- **Microsoft Excel**
- **Excel Formulas**
- **Pivot Tables**
- **Pivot Charts**
- **Slicers**
- **Conditional Formatting**
- **Sorting & Filtering**
- **Data Validation**
- **Dashboard Design**

---

## 📂 Project Structure

### 📄 Raw Data
Contains invoice-level data used for analysis and dashboard creation.

### 📊 Dashboard
Interactive dashboard containing KPI cards, charts, filters, and financial insights.

---

## 📌 Key Performance Indicators

- **Total Invoices**
- **Total Invoice Value**
- **Paid Invoices**
- **Unpaid Invoices**
- **Overdue Invoices**
- **Outstanding Amount**
- **High Risk Invoices**
- **Critical Risk Invoices**
- **Medium Risk Invoices**

---

## 📈 Dashboard Features

### 💰 Invoice Analysis

- Total invoice count
- Total invoice amount
- Customer-wise invoice analysis
- Invoice status analysis

### 💳 Payment Analysis

- Paid invoices
- Unpaid invoices
- Overdue invoices
- Outstanding payments

### ⚠️ Risk Analysis

- High Risk
- Medium Risk
- Critical Risk
- Risk-level distribution

### 📊 Interactive Dashboard

- KPI Cards
- Charts
- Slicers
- Filters
- Dynamic summaries

---

## 🧮 Excel Functions Used

- **SUM**
- **SUMIF**
- **SUMIFS**
- **COUNT**
- **COUNTIF**
- **COUNTIFS**
- **IF**
- **IFERROR**
- **XLOOKUP**
- **FILTER**
- **SORT**
- **SORTBY**
- **UNIQUE**
- **TEXT**
- **TODAY**

---

## 📊 Excel Features Used

- **Pivot Tables**
- **Pivot Charts**
- **Slicers**
- **Conditional Formatting**
- **Data Validation**
- **Advanced Filtering**
- **Sorting**
- **Dynamic Formulas**
- **KPI Cards**
- **Dashboard Visualization**

---

## 🔍 Business Insights

The dashboard helps identify:

- Total financial exposure
- Outstanding invoice amounts
- Payment performance
- Overdue invoices
- High-risk invoices
- Critical financial risks
- Customer payment trends

---

## 🚀 Project Outcome

This project demonstrates how **Microsoft Excel can be used as a Data Analytics and Business Intelligence tool** to transform raw financial data into an interactive dashboard and actionable business insights.

---

## 👩‍💻 Author

**Priyadharshini**

**B.Tech Information Technology**

**Data Analytics Portfolio**

**Academic Year: 2026**

---
