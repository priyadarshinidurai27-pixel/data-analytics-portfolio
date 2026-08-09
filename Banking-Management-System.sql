
-- DATABASE CREATION

create database banking_database_db;

-- TABLE CREATION

use banking_database_db;

SELECT DATABASE();

CREATE TABLE roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL,
    status VARCHAR(20) DEFAULT 'active'
);

show tables;

desc roles;

-- DATA INSERTION

INSERT INTO roles (role_name, status) VALUES
('Admin','Active'),
('Super Admin','Active'),
('Regional Manager','Active'),
('Zonal Manager','Active'),
('Branch Manager','Active'),
('Assistant Branch Manager','Active'),
('Operations Manager','Active'),
('Cashier','Active'),
('Senior Cashier','Active'),
('Junior Cashier','Active'),
('Customer Service Executive','Active'),
('Senior Customer Service Executive','Active'),
('Relationship Manager','Active'),
('Senior Relationship Manager','Active'),
('Loan Officer','Active'),
('Senior Loan Officer','Active'),
('Credit Analyst','Active'),
('Risk Analyst','Active'),
('Recovery Officer','Active'),
('Collection Officer','Active'),
('Investment Advisor','Active'),
('Wealth Manager','Active'),
('Finance Manager','Active'),
('HR Manager','Active'),
('HR Executive','Active'),
('IT Administrator','Active'),
('System Administrator','Active'),
('Database Administrator','Active'),
('Network Administrator','Active'),
('Security Officer','Active'),
('Compliance Officer','Active'),
('Internal Auditor','Active'),
('Audit Officer','Active'),
('Legal Advisor','Active'),
('Marketing Executive','Active'),
('Sales Executive','Active'),
('Insurance Officer','Active'),
('Foreign Exchange Officer','Active'),
('Treasury Officer','Active'),
('ATM Administrator','Active'),
('ATM Support Executive','Active'),
('Call Center Executive','Active'),
('Customer Support Executive','Active'),
('Digital Banking Officer','Active'),
('Mobile Banking Officer','Active'),
('Internet Banking Officer','Active'),
('KYC Verification Officer','Active'),
('Account Opening Officer','Active'),
('Customer','Active'),
('Guest User','Active');

-- BASIC SELECT QUERIES

SELECT 
    *
FROM
    roles;

CREATE TABLE branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_code VARCHAR(10) NOT NULL UNIQUE,
    branch_name VARCHAR(100) NOT NULL,
    ifsc_code VARCHAR(20) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    district VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    phone_no VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    manager_name VARCHAR(100),
    opening_date DATE,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC branches;

INSERT INTO branches
(branch_code, branch_name, ifsc_code, address, city, district, state, pincode, phone_no, email, manager_name, opening_date)
VALUES
('BR001','Chennai Main Branch','BMS0001001','12 Anna Salai','Chennai','Chennai','Tamil Nadu','600002','9876500001','chennai@bank.com','Arun Kumar','2015-01-15'),
('BR002','Coimbatore Branch','BMS0001002','45 Avinashi Road','Coimbatore','Coimbatore','Tamil Nadu','641018','9876500002','coimbatore@bank.com','Priya Devi','2016-03-12'),
('BR003','Madurai Branch','BMS0001003','78 KK Nagar','Madurai','Madurai','Tamil Nadu','625020','9876500003','madurai@bank.com','Suresh Babu','2017-05-18'),
('BR004','Trichy Branch','BMS0001004','15 Cantonment','Trichy','Trichy','Tamil Nadu','620001','9876500004','trichy@bank.com','Karthik Raj','2018-06-20'),
('BR005','Salem Branch','BMS0001005','22 Five Roads','Salem','Salem','Tamil Nadu','636004','9876500005','salem@bank.com','Ravi Kumar','2019-07-11'),
('BR006','Vellore Branch','BMS0001006','10 Katpadi Road','Vellore','Vellore','Tamil Nadu','632004','9876500006','vellore@bank.com','Mohan Raj','2017-08-19'),
('BR007','Tirunelveli Branch','BMS0001007','21 Junction Road','Tirunelveli','Tirunelveli','Tamil Nadu','627001','9876500007','nellai@bank.com','Anitha','2016-09-10'),
('BR008','Erode Branch','BMS0001008','14 Brough Road','Erode','Erode','Tamil Nadu','638001','9876500008','erode@bank.com','Sathish Kumar','2018-04-09'),
('BR009','Thanjavur Branch','BMS0001009','8 Medical College Road','Thanjavur','Thanjavur','Tamil Nadu','613004','9876500009','thanjavur@bank.com','Deepa','2020-01-01'),
('BR010','Kanchipuram Branch','BMS0001010','30 Gandhi Road','Kanchipuram','Kanchipuram','Tamil Nadu','631501','9876500010','kanchi@bank.com','Saravanan','2021-02-15'),
('BR011','Bengaluru MG Road','BMS0001011','MG Road','Bengaluru','Bengaluru Urban','Karnataka','560001','9876500011','blr1@bank.com','Mahesh','2018-11-01'),
('BR012','Hyderabad Branch','BMS0001012','Banjara Hills','Hyderabad','Hyderabad','Telangana','500034','9876500012','hyd@bank.com','Divya','2019-12-20'),
('BR013','Mumbai Andheri','BMS0001013','Andheri East','Mumbai','Mumbai','Maharashtra','400069','9876500013','mumbai@bank.com','Rahul Sharma','2016-10-10'),
('BR014','Delhi CP Branch','BMS0001014','Connaught Place','New Delhi','New Delhi','Delhi','110001','9876500014','delhi@bank.com','Neha Singh','2015-08-08'),
('BR015','Pune Shivaji Nagar','BMS0001015','Shivaji Nagar','Pune','Pune','Maharashtra','411005','9876500015','pune@bank.com','Amit Joshi','2017-03-22'),
('BR016','Kochi Branch','BMS0001016','MG Road','Kochi','Ernakulam','Kerala','682011','9876500016','kochi@bank.com','Joseph','2019-09-09'),
('BR017','Vijayawada Branch','BMS0001017','Benz Circle','Vijayawada','Krishna','Andhra Pradesh','520010','9876500017','vijayawada@bank.com','Prakash','2020-05-15'),
('BR018','Mysuru Branch','BMS0001018','Sayyaji Rao Road','Mysuru','Mysuru','Karnataka','570001','9876500018','mysuru@bank.com','Shalini','2018-02-14'),
('BR019','Visakhapatnam Branch','BMS0001019','Dwaraka Nagar','Visakhapatnam','Visakhapatnam','Andhra Pradesh','530016','9876500019','vizag@bank.com','Ramesh','2021-06-18'),
('BR020','Puducherry Branch','BMS0001020','Mission Street','Puducherry','Puducherry','Puducherry','605001','9876500020','pondy@bank.com','Lavanya','2022-01-10'),
('BR021','Tiruppur Branch','BMS0001021','Avinashi Road','Tiruppur','Tiruppur','Tamil Nadu','641602','9876500021','tiruppur@bank.com','Bala','2019-06-10'),
('BR022','Hosur Branch','BMS0001022','Bagalur Road','Hosur','Krishnagiri','Tamil Nadu','635109','9876500022','hosur@bank.com','Gopi','2020-04-14'),
('BR023','Karur Branch','BMS0001023','Jawahar Bazaar','Karur','Karur','Tamil Nadu','639001','9876500023','karur@bank.com','Kiran','2018-07-25'),
('BR024','Namakkal Branch','BMS0001024','Salem Road','Namakkal','Namakkal','Tamil Nadu','637001','9876500024','namakkal@bank.com','Siva','2017-02-18'),
('BR025','Cuddalore Branch','BMS0001025','Beach Road','Cuddalore','Cuddalore','Tamil Nadu','607001','9876500025','cuddalore@bank.com','Naveen','2021-09-12'),
('BR026','Thoothukudi Branch','BMS0001026','Beach Road','Thoothukudi','Thoothukudi','Tamil Nadu','628001','9876500026','thoothukudi@bank.com','Vignesh','2020-11-15'),
('BR027','Dindigul Branch','BMS0001027','Main Road','Dindigul','Dindigul','Tamil Nadu','624001','9876500027','dindigul@bank.com','Harish','2019-04-18'),
('BR028','Sivakasi Branch','BMS0001028','Virudhunagar Road','Sivakasi','Virudhunagar','Tamil Nadu','626123','9876500028','sivakasi@bank.com','Ganesh','2021-03-21'),
('BR029','Virudhunagar Branch','BMS0001029','Collector Office Road','Virudhunagar','Virudhunagar','Tamil Nadu','626001','9876500029','virudhunagar@bank.com','Aravind','2018-06-19'),
('BR030','Kumbakonam Branch','BMS0001030','Town High Road','Kumbakonam','Thanjavur','Tamil Nadu','612001','9876500030','kumbakonam@bank.com','Muthukumar','2022-02-12'),
('BR031','Nagapattinam Branch','BMS0001031','New Beach Road','Nagapattinam','Nagapattinam','Tamil Nadu','611001','9876500031','nagai@bank.com','Srinivasan','2017-08-15'),
('BR032','Mayiladuthurai Branch','BMS0001032','M.G Road','Mayiladuthurai','Mayiladuthurai','Tamil Nadu','609001','9876500032','mayiladuthurai@bank.com','Pradeep','2018-09-20'),
('BR033','Pollachi Branch','BMS0001033','Palakkad Road','Pollachi','Coimbatore','Tamil Nadu','642001','9876500033','pollachi@bank.com','Lokesh','2019-10-11'),
('BR034','Ooty Branch','BMS0001034','Commercial Road','Ooty','Nilgiris','Tamil Nadu','643001','9876500034','ooty@bank.com','Ranjith','2016-05-16'),
('BR035','Tenkasi Branch','BMS0001035','Court Road','Tenkasi','Tenkasi','Tamil Nadu','627811','9876500035','tenkasi@bank.com','Manikandan','2020-12-01'),
('BR036','Dharmapuri Branch','BMS0001036','Pennagaram Road','Dharmapuri','Dharmapuri','Tamil Nadu','636701','9876500036','dharmapuri@bank.com','Pravin','2018-03-05'),
('BR037','Krishnagiri Branch','BMS0001037','Bangalore Road','Krishnagiri','Krishnagiri','Tamil Nadu','635001','9876500037','krishnagiri@bank.com','Ashok','2019-06-08'),
('BR038','Ariyalur Branch','BMS0001038','Perambalur Road','Ariyalur','Ariyalur','Tamil Nadu','621704','9876500038','ariyalur@bank.com','Sathya','2021-07-13'),
('BR039','Perambalur Branch','BMS0001039','Trichy Main Road','Perambalur','Perambalur','Tamil Nadu','621212','9876500039','perambalur@bank.com','Ragul','2020-08-19'),
('BR040','Ramanathapuram Branch','BMS0001040','East Coast Road','Ramanathapuram','Ramanathapuram','Tamil Nadu','623501','9876500040','ramnad@bank.com','Jeeva','2017-11-25'),
('BR041','Karaikudi Branch','BMS0001041','Sekkalai Road','Karaikudi','Sivagangai','Tamil Nadu','630001','9876500041','karaikudi@bank.com','Hari Prasad','2018-01-30'),
('BR042','Nagercoil Branch','BMS0001042','Cape Road','Nagercoil','Kanniyakumari','Tamil Nadu','629001','9876500042','nagercoil@bank.com','Anand','2022-03-14'),
('BR043','Chengalpattu Branch','BMS0001043','GST Road','Chengalpattu','Chengalpattu','Tamil Nadu','603001','9876500043','chengalpattu@bank.com','Vinoth','2019-09-27'),
('BR044','Tambaram Branch','BMS0001044','Velachery Main Road','Tambaram','Chengalpattu','Tamil Nadu','600045','9876500044','tambaram@bank.com','Rajesh','2020-05-17'),
('BR045','Velachery Branch','BMS0001045','100 Feet Road','Chennai','Chennai','Tamil Nadu','600042','9876500045','velachery@bank.com','Dinesh','2021-10-21'),
('BR046','Anna Nagar Branch','BMS0001046','2nd Avenue','Chennai','Chennai','Tamil Nadu','600040','9876500046','annanagar@bank.com','Karthikeyan','2018-12-09'),
('BR047','T. Nagar Branch','BMS0001047','Usman Road','Chennai','Chennai','Tamil Nadu','600017','9876500047','tnagar@bank.com','Vijay','2017-04-26'),
('BR048','Adyar Branch','BMS0001048','LB Road','Chennai','Chennai','Tamil Nadu','600020','9876500048','adyar@bank.com','Bharath','2020-06-11'),
('BR049','Porur Branch','BMS0001049','Mount Poonamallee Road','Chennai','Chennai','Tamil Nadu','600116','9876500049','porur@bank.com','Senthil','2021-08-04'),
('BR050','Ambattur Branch','BMS0001050','MTH Road','Chennai','Chennai','Tamil Nadu','600053','9876500050','ambattur@bank.com','Kamal','2022-04-01');


SELECT 
    COUNT(*) AS total_branches
FROM
    branches;
    
select * from branches;


CREATE TABLE account_types (
    account_type_id INT PRIMARY KEY AUTO_INCREMENT,
    account_type_name VARCHAR(50) NOT NULL UNIQUE,
    minimum_balance DECIMAL(10 , 2 ) NOT NULL,
    interest_rate DECIMAL(5 , 2 ) NOT NULL,
    withdrawal_limit DECIMAL(12 , 2 ) NOT NULL,
    daily_transaction_limit INT NOT NULL,
    maintenance_fee DECIMAL(10 , 2 ) DEFAULT 0,
    description VARCHAR(255),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DESC account_types;


INSERT INTO account_types
(account_type_name, minimum_balance, interest_rate, withdrawal_limit, daily_transaction_limit, maintenance_fee, description)
VALUES
('Savings Account',1000,3.50,50000,10,100,'Savings account'),
('Current Account',5000,0.00,500000,100,250,'Current account'),
('Salary Account',0,3.00,100000,20,0,'Salary account'),
('Student Account',500,2.50,25000,5,0,'Student account'),
('Senior Citizen Account',1000,6.50,50000,10,50,'Senior citizen account'),
('Women Account',1000,4.00,50000,10,50,'Women account'),
('Joint Account',2000,3.50,100000,20,150,'Joint account'),
('NRI Account',10000,4.50,500000,20,500,'NRI account'),
('Fixed Deposit',5000,7.25,0,0,0,'FD account'),
('Recurring Deposit',1000,6.75,0,0,0,'RD account'),
('Business Premium',25000,1.00,1000000,500,1000,'Business account'),
('Corporate Account',50000,1.25,5000000,1000,2000,'Corporate account'),
('Kids Savings',100,3.75,10000,3,0,'Kids account'),
('Pension Account',500,4.50,25000,5,0,'Pension account'),
('Farmer Account',500,4.00,30000,5,0,'Farmer account'),
('MSME Account',10000,2.00,2000000,200,500,'MSME account'),
('Startup Account',5000,2.50,500000,100,300,'Startup account'),
('Premium Savings',25000,5.00,200000,20,500,'Premium savings account'),
('Elite Savings',50000,5.50,500000,50,1000,'Elite account'),
('Digital Account',0,3.25,50000,20,0,'Digital banking account');

DESC account_types;


CREATE TABLE transaction_types (
    transaction_type_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_type_name VARCHAR(50) NOT NULL UNIQUE,
    transaction_description VARCHAR(255),
    transaction_limit DECIMAL(12 , 2 ),
    service_charge DECIMAL(10 , 2 ) DEFAULT 0,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DESC transaction_types;


INSERT INTO transaction_types
(transaction_type_name, transaction_description, transaction_limit, service_charge)
VALUES
('Cash Deposit','Deposit cash into account',1000000,0),
('Cash Withdrawal','Withdraw cash from account',50000,0),
('ATM Withdrawal','Withdraw cash using ATM',20000,10),
('Fund Transfer','Transfer funds to another account',500000,5),
('NEFT','National Electronic Fund Transfer',1000000,2),
('RTGS','Real Time Gross Settlement',5000000,25),
('IMPS','Immediate Payment Service',500000,5),
('UPI Payment','UPI transaction',100000,0),
('Cheque Deposit','Deposit cheque into account',1000000,0),
('Cheque Withdrawal','Withdraw using cheque',1000000,0),
('Online Banking','Internet banking transaction',1000000,0),
('Mobile Banking','Mobile banking transaction',500000,0),
('POS Transaction','Point of Sale payment',200000,0),
('Debit Card Payment','Debit card transaction',500000,0),
('Credit Card Payment','Credit card transaction',500000,0),
('Bill Payment','Electricity, Water, Gas bill payment',100000,0),
('Loan EMI Payment','Loan installment payment',500000,0),
('Fixed Deposit Opening','Open a fixed deposit',10000000,0),
('Recurring Deposit Payment','Recurring deposit installment',500000,0),
('Balance Enquiry','Check account balance',0,0),
('Mini Statement','View last transactions',0,0),
('Account Statement','Download account statement',0,0),
('Interest Credit','Interest credited to account',1000000,0),
('Service Charge Deduction','Deduct service charges',100000,0),
('Cheque Clearance','Cheque clearing transaction',1000000,0),
('Salary Credit','Salary credited to account',1000000,0),
('Pension Credit','Pension credited to account',500000,0),
('Cashback Credit','Cashback amount credited',50000,0),
('Reward Points Redemption','Redeem reward points',50000,0),
('Standing Instruction','Automatic scheduled payment',500000,0),
('Auto Debit','Automatic debit transaction',500000,0),
('Loan Disbursement','Loan amount credited',10000000,0),
('Loan Closure','Loan account closed',10000000,0),
('FD Closure','Fixed Deposit closed',10000000,0),
('RD Closure','Recurring Deposit closed',5000000,0),
('UPI Refund','Refund through UPI',100000,0),
('Card Refund','Refund to debit/credit card',200000,0),
('International Transfer','International fund transfer',10000000,250),
('Forex Transaction','Foreign currency exchange',5000000,150),
('Merchant Payment','Payment to merchant',500000,2),
('QR Code Payment','QR code payment transaction',100000,0),
('ECS Debit','Electronic Clearing Service Debit',500000,5),
('ECS Credit','Electronic Clearing Service Credit',500000,5),
('Bank Charges','Monthly bank charges',10000,0),
('SMS Alert Charges','SMS service charges',1000,0),
('Account Opening Fee','Charges for opening account',5000,100),
('Dormant Account Activation','Activate dormant account',10000,50),
('Nominee Update','Nominee update request',0,0),
('KYC Update','Customer KYC update',0,0),
('Account Closure','Customer account closure',0,0);


SELECT 
    COUNT(*) AS total_transaction_types
FROM
    transaction_types;

DESC transaction_types;

select * from  transaction_types;
CREATE TABLE loan_types (
    loan_type_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_type_name VARCHAR(50) NOT NULL UNIQUE,
    interest_rate DECIMAL(5 , 2 ) NOT NULL,
    max_loan_amount DECIMAL(15 , 2 ) NOT NULL,
    max_tenure_months INT NOT NULL,
    processing_fee DECIMAL(10 , 2 ) DEFAULT 0,
    eligibility VARCHAR(255),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC loan_types;


INSERT INTO loan_types
(loan_type_name, interest_rate, max_loan_amount, max_tenure_months, processing_fee, eligibility)
VALUES
('Home Loan',8.50,10000000,360,5000,'Salaried/Business'),
('Personal Loan',11.50,2000000,60,2500,'Salaried'),
('Vehicle Loan',9.25,3000000,84,3000,'Salaried/Business'),
('Education Loan',7.50,5000000,180,1000,'Students'),
('Gold Loan',8.00,500000,36,500,'Gold Owners'),
('Business Loan',12.00,10000000,120,7000,'Business Owners'),
('Agriculture Loan',6.50,3000000,120,1000,'Farmers'),
('Mortgage Loan',9.75,15000000,240,6000,'Property Owners'),
('Two Wheeler Loan',10.25,300000,60,500,'All Customers'),
('Consumer Durable Loan',13.50,500000,36,1000,'All Customers'),
('Medical Loan',9.50,1000000,60,1500,'Medical Purpose'),
('Travel Loan',12.50,1000000,48,1500,'Travel Purpose'),
('Wedding Loan',11.75,1500000,60,2000,'Marriage Purpose'),
('Startup Loan',10.50,5000000,120,3000,'Startup Owners'),
('MSME Loan',9.00,8000000,120,3500,'MSME Businesses'),
('Working Capital Loan',11.00,10000000,60,4000,'Business Owners'),
('Commercial Vehicle Loan',9.75,7000000,84,3500,'Transport Business'),
('Equipment Loan',10.25,5000000,84,2500,'Business Owners'),
('Solar Loan',7.25,3000000,120,1000,'Renewable Projects'),
('Green Loan',7.75,5000000,120,1500,'Eco Projects'),
('Bridge Loan',12.00,2000000,24,2500,'Property Buyers'),
('Top-up Loan',10.00,3000000,120,2000,'Existing Customers'),
('Loan Against FD',6.00,1000000,36,500,'FD Holders'),
('Loan Against Property',9.25,10000000,240,5000,'Property Owners'),
('Overdraft Loan',13.00,5000000,12,3000,'Current Account Holders'),
('Retail Loan',10.50,3000000,84,2500,'Retail Customers'),
('Education Plus Loan',7.25,7500000,180,1500,'Students'),
('Women Entrepreneur Loan',8.50,5000000,120,1000,'Women Entrepreneurs'),
('Doctor Loan',8.75,10000000,180,3000,'Medical Professionals'),
('Teacher Loan',8.25,3000000,120,1000,'Teachers'),
('Engineer Loan',9.00,5000000,120,1500,'Engineers'),
('Professional Loan',9.25,8000000,180,2500,'Professionals'),
('Housing Renovation Loan',8.75,3000000,120,1500,'Home Owners'),
('Plot Purchase Loan',9.50,5000000,180,2500,'Property Buyers'),
('Construction Loan',8.90,10000000,240,3500,'House Construction'),
('Business Expansion Loan',10.75,15000000,180,5000,'Business Owners'),
('Export Finance Loan',9.80,20000000,120,6000,'Exporters'),
('Import Finance Loan',9.80,20000000,120,6000,'Importers'),
('Commercial Property Loan',10.25,25000000,240,7000,'Commercial Property Owners'),
('Agricultural Equipment Loan',7.50,4000000,84,1000,'Farmers'),
('Dairy Farm Loan',7.25,3000000,84,1000,'Dairy Farmers'),
('Poultry Farm Loan',7.25,3000000,84,1000,'Poultry Farmers'),
('Fishery Loan',7.50,3000000,84,1000,'Fish Farmers'),
('Self Employment Loan',9.25,2000000,84,1500,'Self Employed'),
('Small Business Loan',10.00,5000000,120,2500,'Small Business Owners'),
('Micro Finance Loan',11.00,500000,36,500,'Low Income Customers'),
('Festival Loan',12.00,300000,24,250,'All Customers'),
('Emergency Loan',13.00,500000,24,500,'Existing Customers'),
('Bridge Finance Loan',11.50,3000000,36,3000,'Property Buyers'),
('Education Abroad Loan',8.25,10000000,180,2500,'Students Studying Abroad');


SELECT 
    COUNT(*) AS total_loan_types
FROM
    loan_types;
    
select * from loan_types;    
    
    


CREATE TABLE card_types (
    card_type_id INT PRIMARY KEY AUTO_INCREMENT,
    card_type_name VARCHAR(50) NOT NULL UNIQUE,
    card_category VARCHAR(30) NOT NULL,
    annual_fee DECIMAL(10 , 2 ) DEFAULT 0,
    credit_limit DECIMAL(12 , 2 ),
    validity_years INT NOT NULL,
    reward_points VARCHAR(100),
    card_network VARCHAR(30),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC card_types;


INSERT INTO card_types
(card_type_name, card_category, annual_fee, credit_limit, validity_years, reward_points, card_network)
VALUES
('Classic Debit Card','Debit',150,0,5,'Basic Rewards','Visa'),
('Gold Debit Card','Debit',250,0,5,'Gold Rewards','Visa'),
('Platinum Debit Card','Debit',500,0,5,'Premium Rewards','Visa'),
('Signature Debit Card','Debit',750,0,5,'Luxury Rewards','Visa'),
('Business Debit Card','Debit',1000,0,5,'Business Rewards','MasterCard'),
('Classic Credit Card','Credit',500,100000,5,'Reward Points','Visa'),
('Gold Credit Card','Credit',1000,200000,5,'Gold Rewards','Visa'),
('Platinum Credit Card','Credit',2500,500000,5,'Premium Rewards','Visa'),
('Titanium Credit Card','Credit',3000,750000,5,'Cashback Rewards','MasterCard'),
('Infinite Credit Card','Credit',5000,1000000,5,'Luxury Benefits','Visa'),
('Student Debit Card','Debit',0,0,5,'Student Benefits','RuPay'),
('Senior Citizen Debit Card','Debit',0,0,5,'Senior Benefits','RuPay'),
('Women Credit Card','Credit',750,150000,5,'Shopping Rewards','Visa'),
('Travel Credit Card','Credit',2000,500000,5,'Travel Miles','MasterCard'),
('Shopping Credit Card','Credit',1500,300000,5,'Shopping Cashback','Visa'),
('Fuel Credit Card','Credit',1000,250000,5,'Fuel Cashback','RuPay'),
('Corporate Credit Card','Credit',4000,1000000,5,'Corporate Rewards','MasterCard'),
('Business Credit Card','Credit',3500,800000,5,'Business Cashback','Visa'),
('Premium Debit Card','Debit',600,0,5,'Premium Benefits','MasterCard'),
('Youth Debit Card','Debit',100,0,5,'Youth Offers','RuPay'),
('International Debit Card','Debit',1000,0,5,'International Access','Visa'),
('International Credit Card','Credit',4500,1500000,5,'Global Rewards','MasterCard'),
('Virtual Debit Card','Debit',0,0,3,'Online Security','Visa'),
('Virtual Credit Card','Credit',500,100000,3,'Online Rewards','MasterCard'),
('RuPay Platinum Card','Debit',300,0,5,'RuPay Rewards','RuPay'),
('Silver Debit Card','Debit',200,0,5,'Silver Rewards','Visa'),
('Diamond Debit Card','Debit',800,0,5,'Diamond Rewards','MasterCard'),
('Corporate Debit Card','Debit',1200,0,5,'Corporate Benefits','Visa'),
('Travel Debit Card','Debit',700,0,5,'Travel Benefits','MasterCard'),
('Student Credit Card','Credit',300,50000,5,'Student Cashback','RuPay'),
('Senior Citizen Credit Card','Credit',500,100000,5,'Senior Rewards','Visa'),
('Health Credit Card','Credit',1500,300000,5,'Medical Cashback','MasterCard'),
('Lifestyle Credit Card','Credit',1800,400000,5,'Lifestyle Rewards','Visa'),
('Shopping Plus Card','Credit',2200,600000,5,'Shopping Offers','MasterCard'),
('Fuel Plus Card','Credit',1200,300000,5,'Fuel Rewards','RuPay'),
('Business Plus Card','Credit',4200,1200000,5,'Business Benefits','Visa'),
('Corporate Platinum Card','Credit',5500,2000000,5,'Corporate Rewards','MasterCard'),
('Elite Credit Card','Credit',6500,2500000,5,'Elite Rewards','Visa'),
('Titan Black Card','Credit',8000,5000000,5,'Luxury Privileges','MasterCard'),
('Signature Plus Card','Credit',3500,800000,5,'Signature Rewards','Visa'),
('Student Premium Card','Debit',150,0,5,'Student Offers','RuPay'),
('Women Premium Card','Credit',1000,250000,5,'Shopping Cashback','Visa'),
('Family Debit Card','Debit',400,0,5,'Family Benefits','MasterCard'),
('Business Signature Card','Credit',4500,1500000,5,'Business Cashback','Visa'),
('Corporate Elite Card','Credit',7000,3000000,5,'Elite Business Rewards','MasterCard'),
('RuPay Select Card','Debit',500,0,5,'RuPay Select Rewards','RuPay'),
('Visa Infinite Card','Credit',9000,6000000,5,'Infinite Privileges','Visa'),
('MasterCard World Card','Credit',8500,5500000,5,'World Rewards','MasterCard'),
('Digital Banking Card','Debit',100,0,5,'Digital Rewards','RuPay'),
('Premium Business Card','Credit',5000,1800000,5,'Business Premium Rewards','Visa');

select * from card_types;




SELECT 
    COUNT(*) AS total_cards
FROM
    card_types;


CREATE TABLE bank_services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(100) NOT NULL UNIQUE,
    service_category VARCHAR(50) NOT NULL,
    service_charge DECIMAL(10 , 2 ) DEFAULT 0,
    processing_time VARCHAR(50),
    description VARCHAR(255),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC bank_services;


INSERT INTO bank_services
(service_name, service_category, service_charge, processing_time, description)
VALUES
('Savings Account Opening','Account Service',0,'1 Day','Open savings account'),
('Current Account Opening','Account Service',500,'1 Day','Open current account'),
('Account Closure','Account Service',250,'2 Days','Close bank account'),
('Cheque Book Request','Cheque Service',100,'3 Days','Issue cheque book'),
('Debit Card Issue','Card Service',250,'7 Days','Issue debit card'),
('Credit Card Issue','Card Service',500,'7 Days','Issue credit card'),
('ATM PIN Generation','ATM Service',0,'Instant','Generate ATM PIN'),
('Mobile Banking Registration','Digital Banking',0,'Instant','Activate mobile banking'),
('Internet Banking Registration','Digital Banking',0,'Instant','Activate internet banking'),
('SMS Alert Registration','Notification',50,'Instant','Enable SMS alerts'),
('Email Alert Registration','Notification',0,'Instant','Enable email alerts'),
('Passbook Printing','Passbook Service',20,'Instant','Print passbook'),
('Statement Download','Statement Service',0,'Instant','Download account statement'),
('Demand Draft','Payment Service',100,'Same Day','Issue demand draft'),
('NEFT Transfer','Fund Transfer',2,'Same Day','NEFT transaction'),
('RTGS Transfer','Fund Transfer',25,'Same Day','RTGS transaction'),
('IMPS Transfer','Fund Transfer',5,'Instant','IMPS transaction'),
('UPI Registration','Digital Banking',0,'Instant','Register UPI'),
('Fixed Deposit Opening','Deposit Service',0,'1 Day','Open FD account'),
('Recurring Deposit Opening','Deposit Service',0,'1 Day','Open RD account'),
('Loan Application','Loan Service',250,'3 Days','Apply for loan'),
('Loan Foreclosure','Loan Service',500,'5 Days','Close loan'),
('Locker Facility','Locker Service',1500,'1 Day','Provide locker'),
('Nominee Registration','Customer Service',0,'Instant','Add nominee'),
('KYC Update','Customer Service',0,'1 Day','Update KYC details');

SELECT 
    *
FROM
    bank_services;


INSERT INTO bank_services
(service_name, service_category, service_charge, processing_time, description)
VALUES
('Debit Card Replacement','Card Service',300,'5 Days','Replace lost debit card'),
('Credit Card Replacement','Card Service',500,'5 Days','Replace lost credit card'),
('ATM Card Blocking','Card Service',0,'Instant','Block ATM card'),
('Credit Card Blocking','Card Service',0,'Instant','Block credit card'),
('Cheque Stop Payment','Cheque Service',150,'1 Day','Stop cheque payment'),
('Cheque Bounce Notification','Cheque Service',250,'Instant','Notify bounced cheque'),
('Cash Deposit','Cash Service',0,'Instant','Deposit cash'),
('Cash Withdrawal','Cash Service',0,'Instant','Withdraw cash'),
('Balance Enquiry','ATM Service',0,'Instant','Check account balance'),
('Mini Statement','ATM Service',0,'Instant','Print mini statement'),
('Fund Transfer Within Bank','Fund Transfer',0,'Instant','Transfer within bank'),
('Fund Transfer Other Bank','Fund Transfer',10,'Same Day','Transfer to other bank'),
('Bill Payment','Payment Service',5,'Instant','Utility bill payment'),
('Recharge Service','Payment Service',0,'Instant','Mobile/DTH recharge'),
('FASTag Recharge','Payment Service',0,'Instant','Recharge FASTag'),
('Insurance Premium Payment','Insurance Service',0,'Instant','Pay insurance premium'),
('Tax Payment','Government Service',0,'Instant','Income/GST tax payment'),
('PAN Update','Customer Service',0,'1 Day','Update PAN details'),
('Address Update','Customer Service',0,'1 Day','Update customer address'),
('Mobile Number Update','Customer Service',0,'Instant','Update mobile number'),
('Email Update','Customer Service',0,'Instant','Update email address'),
('Net Banking Password Reset','Digital Banking',0,'Instant','Reset internet banking password'),
('Mobile Banking Password Reset','Digital Banking',0,'Instant','Reset mobile banking password'),
('Locker Renewal','Locker Service',1000,'1 Day','Renew locker facility'),
('Dormant Account Activation','Account Service',100,'2 Days','Activate dormant account');


SELECT 
    COUNT(*) AS total_services
FROM
    bank_services;


CREATE TABLE payment_modes (
    payment_mode_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_mode_name VARCHAR(50) NOT NULL UNIQUE,
    payment_category VARCHAR(50) NOT NULL,
    transaction_limit DECIMAL(15 , 2 ),
    processing_fee DECIMAL(10 , 2 ) DEFAULT 0,
    processing_time VARCHAR(50),
    description VARCHAR(255),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC payment_modes;


INSERT INTO payment_modes
(payment_mode_name,payment_category,transaction_limit,processing_fee,processing_time,description)
VALUES
('Cash','Offline',1000000,0,'Instant','Cash payment'),
('Cheque','Offline',1000000,0,'2 Days','Cheque payment'),
('Demand Draft','Offline',5000000,100,'Same Day','Demand Draft'),
('NEFT','Online',1000000,2,'Same Day','NEFT transfer'),
('RTGS','Online',10000000,25,'Instant','RTGS transfer'),
('IMPS','Online',500000,5,'Instant','IMPS transfer'),
('UPI','Online',100000,0,'Instant','UPI payment'),
('Debit Card','Card',200000,0,'Instant','Debit card payment'),
('Credit Card','Card',500000,0,'Instant','Credit card payment'),
('Net Banking','Online',5000000,0,'Instant','Internet banking'),
('Mobile Banking','Online',2000000,0,'Instant','Mobile banking'),
('Wallet','Digital Wallet',100000,0,'Instant','Wallet payment'),
('Google Pay','UPI',100000,0,'Instant','Google Pay'),
('PhonePe','UPI',100000,0,'Instant','PhonePe'),
('Paytm','Wallet',100000,0,'Instant','Paytm'),
('Amazon Pay','Wallet',100000,0,'Instant','Amazon Pay'),
('BHIM','UPI',100000,0,'Instant','BHIM UPI'),
('POS Machine','Card',500000,0,'Instant','POS swipe'),
('QR Code','Digital',100000,0,'Instant','QR payment'),
('Standing Instruction','Automatic',1000000,0,'Scheduled','Auto payment'),
('Auto Debit','Automatic',1000000,0,'Scheduled','Auto debit'),
('ECS','Electronic',5000000,5,'1 Day','Electronic Clearing Service'),
('NACH','Electronic',5000000,5,'1 Day','National ACH'),
('SWIFT','International',50000000,500,'2 Days','International payment'),
('Forex Transfer','International',10000000,250,'1 Day','Foreign exchange payment'),
('Apple Pay','Digital Wallet',100000,0,'Instant','Apple Pay transaction'),
('Samsung Pay','Digital Wallet',100000,0,'Instant','Samsung Pay transaction'),
('RuPay Card','Card',300000,0,'Instant','RuPay card payment'),
('Visa Card','Card',500000,0,'Instant','Visa card payment'),
('MasterCard','Card',500000,0,'Instant','MasterCard payment'),
('American Express','Card',1000000,100,'Instant','Amex card payment'),
('Corporate Net Banking','Online',10000000,0,'Instant','Corporate banking'),
('Business UPI','UPI',500000,0,'Instant','Business UPI payment'),
('Cash Deposit Machine','Offline',1000000,0,'Instant','CDM transaction'),
('ATM Cash Deposit','ATM',500000,0,'Instant','ATM cash deposit'),
('ATM Cash Withdrawal','ATM',50000,0,'Instant','ATM withdrawal'),
('Cardless Cash Withdrawal','ATM',20000,0,'Instant','Cardless ATM withdrawal'),
('Loan EMI Auto Debit','Automatic',500000,0,'Scheduled','Auto debit EMI'),
('Credit Card Auto Payment','Automatic',500000,0,'Scheduled','Auto credit card payment'),
('Utility Bill Auto Pay','Automatic',100000,0,'Scheduled','Utility auto payment'),
('Insurance Auto Debit','Automatic',100000,0,'Scheduled','Insurance premium payment'),
('Recurring Deposit Auto Debit','Automatic',500000,0,'Scheduled','RD auto payment'),
('Fixed Deposit Maturity Credit','Deposit',10000000,0,'Same Day','FD maturity payment'),
('Loan Disbursement','Loan',50000000,0,'Same Day','Loan amount disbursement'),
('Loan Closure Payment','Loan',10000000,0,'Same Day','Loan closure payment'),
('Merchant QR Payment','Digital',100000,0,'Instant','Merchant QR payment'),
('International SWIFT','International',50000000,500,'2 Days','SWIFT transfer'),
('Forex Card Payment','International',10000000,250,'Instant','Forex card payment'),
('Government Tax Payment','Government',10000000,0,'Same Day','Government tax payment'),
('Education Fee Payment','Education',500000,0,'Instant','College and school fee payment');


SELECT 
    *
FROM
    payment_modes;

SELECT 
    COUNT(*) AS total_payment_modes
FROM
    payment_modes;

SELECT 
    COUNT(*)
FROM
    payment_modes;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    employee_id INT,
    email VARCHAR(100) NOT NULL UNIQUE,
    mobile_no VARCHAR(15) NOT NULL UNIQUE,
    last_login DATETIME,
    account_status ENUM('Active', 'Inactive', 'Locked') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id)
        REFERENCES roles (role_id)
);

DESC users;

drop table users;

INSERT INTO users
(username,password,role_id,employee_id,email,mobile_no,last_login)
VALUES
('admin01','admin@123',1,1,'admin01@bank.com','9000000001','2026-06-29 09:00:00'),
('manager01','manager@123',5,2,'manager01@bank.com','9000000002','2026-06-29 09:10:00'),
('cashier01','cashier@123',8,3,'cashier01@bank.com','9000000003','2026-06-29 09:15:00'),
('loan01','loan@123',15,4,'loan01@bank.com','9000000004','2026-06-29 09:20:00'),
('itadmin01','it@123',26,5,'itadmin01@bank.com','9000000005','2026-06-29 09:25:00'),
('audit01','audit@123',33,6,'audit01@bank.com','9000000006','2026-06-29 09:30:00'),
('support01','support@123',43,7,'support01@bank.com','9000000007','2026-06-29 09:35:00'),
('regional01','regional@123',3,8,'regional01@bank.com','9000000008','2026-06-29 09:40:00'),
('zonal01','zonal@123',4,9,'zonal01@bank.com','9000000009','2026-06-29 09:45:00'),
('finance01','finance@123',24,10,'finance01@bank.com','9000000010','2026-06-29 09:50:00'),
('user11','pass11',8,11,'user11@bank.com','9000000011','2026-06-29 10:00:00'),
('user12','pass12',8,12,'user12@bank.com','9000000012','2026-06-29 10:05:00'),
('user13','pass13',8,13,'user13@bank.com','9000000013','2026-06-29 10:10:00'),
('user14','pass14',8,14,'user14@bank.com','9000000014','2026-06-29 10:15:00'),
('user15','pass15',8,15,'user15@bank.com','9000000015','2026-06-29 10:20:00'),
('user16','pass16',8,16,'user16@bank.com','9000000016','2026-06-29 10:25:00'),
('user17','pass17',8,17,'user17@bank.com','9000000017','2026-06-29 10:30:00'),
('user18','pass18',8,18,'user18@bank.com','9000000018','2026-06-29 10:35:00'),
('user19','pass19',8,19,'user19@bank.com','9000000019','2026-06-29 10:40:00'),
('user20','pass20',8,20,'user20@bank.com','9000000020','2026-06-29 10:45:00'),
('user21','pass21',8,21,'user21@bank.com','9000000021','2026-06-29 10:50:00'),
('user22','pass22',8,22,'user22@bank.com','9000000022','2026-06-29 10:55:00'),
('user23','pass23',8,23,'user23@bank.com','9000000023','2026-06-29 11:00:00'),
('user24','pass24',8,24,'user24@bank.com','9000000024','2026-06-29 11:05:00'),
('user25','pass25',8,25,'user25@bank.com','9000000025','2026-06-29 11:10:00'),
('user26','pass26',8,25,'user26@bank.com','9000000026','2026-06-29 11:15:00'),
('user27','pass27',8,26,'user27@bank.com','9000000027','2026-06-29 11:20:00'),
('user28','pass28',8,27,'user28@bank.com','9000000028','2026-06-29 11:25:00'),
('user29','pass29',8,28,'user29@bank.com','9000000029','2026-06-29 11:30:00'),
('user30','pass30',8,29,'user30@bank.com','9000000030','2026-06-29 11:35:00'),
('user31','pass31',8,30,'user31@bank.com','9000000031','2026-06-29 11:40:00'),
('user32','pass32',8,31,'user32@bank.com','9000000032','2026-06-29 11:45:00'),
('user33','pass33',8,32,'user33@bank.com','9000000033','2026-06-29 11:50:00'),
('user34','pass34',8,33,'user34@bank.com','9000000034','2026-06-29 11:55:00'),
('user35','pass35',8,34,'user35@bank.com','9000000035','2026-06-29 12:00:00'),
('user36','pass36',8,35,'user36@bank.com','9000000036','2026-06-29 12:05:00'),
('user37','pass37',8,36,'user37@bank.com','9000000037','2026-06-29 12:10:00'),
('user38','pass38',8,37,'user38@bank.com','9000000038','2026-06-29 12:15:00'),
('user39','pass39',8,38,'user39@bank.com','9000000039','2026-06-29 12:20:00'),
('user40','pass40',8,39,'user40@bank.com','9000000040','2026-06-29 12:25:00'),
('user41','pass41',8,40,'user41@bank.com','9000000041','2026-06-29 12:30:00'),
('user42','pass42',8,41,'user42@bank.com','9000000042','2026-06-29 12:35:00'),
('user43','pass43',8,42,'user43@bank.com','9000000043','2026-06-29 12:40:00'),
('user44','pass44',8,43,'user44@bank.com','9000000044','2026-06-29 12:45:00'),
('user45','pass45',8,44,'user45@bank.com','9000000045','2026-06-29 12:50:00'),
('user46','pass46',8,45,'user46@bank.com','9000000046','2026-06-29 12:55:00'),
('user47','pass47',8,46,'user47@bank.com','9000000047','2026-06-29 13:00:00'),
('user48','pass48',8,47,'user48@bank.com','9000000048','2026-06-29 13:05:00'),
('user49','pass49',8,48,'user49@bank.com','9000000049','2026-06-29 13:10:00'),
('user50','pass50',8,49,'user50@bank.com','9000000050','2026-06-29 13:15:00');

SELECT 
    *
FROM
    users;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_code VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile_no VARCHAR(15) UNIQUE NOT NULL,
    aadhaar_no VARCHAR(12) UNIQUE NOT NULL,
    pan_no VARCHAR(10) UNIQUE NOT NULL,
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),
    occupation VARCHAR(50),
    annual_income DECIMAL(12 , 2 ),
    kyc_status ENUM('Pending', 'Verified', 'Rejected') DEFAULT 'Pending',
    branch_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (branch_id)
        REFERENCES branches (branch_id)
);

DESC customers;

INSERT INTO customers
(customer_code,first_name,last_name,gender,dob,email,mobile_no,aadhaar_no,pan_no,address,city,state,pincode,occupation,annual_income,kyc_status,branch_id)
VALUES
('CUST001','Arun','Kumar','Male','1998-01-15','arun1@gmail.com','9001110001','123456789001','ABCDE1001F','Anna Nagar','Chennai','Tamil Nadu','600040','Software Engineer',800000,'Verified',1),

('CUST002','Priya','R','Female','1999-03-20','priya2@gmail.com','9001110002','123456789002','ABCDE1002F','RS Puram','Coimbatore','Tamil Nadu','641002','Teacher',500000,'Verified',2),

('CUST003','Karthik','S','Male','1997-07-11','karthik3@gmail.com','9001110003','123456789003','ABCDE1003F','KK Nagar','Madurai','Tamil Nadu','625020','Doctor',1200000,'Verified',3),

('CUST004','Divya','M','Female','2000-02-18','divya4@gmail.com','9001110004','123456789004','ABCDE1004F','Cantonment','Trichy','Tamil Nadu','620001','Student',150000,'Pending',4),

('CUST005','Suresh','B','Male','1995-05-25','suresh5@gmail.com','9001110005','123456789005','ABCDE1005F','Five Roads','Salem','Tamil Nadu','636004','Business',1500000,'Verified',5),

('CUST006','Lavanya','P','Female','1998-09-12','lavanya6@gmail.com','9001110006','123456789006','ABCDE1006F','Katpadi','Vellore','Tamil Nadu','632004','Bank Employee',650000,'Verified',6),

('CUST007','Rahul','Sharma','Male','1996-06-08','rahul7@gmail.com','9001110007','123456789007','ABCDE1007F','Junction','Tirunelveli','Tamil Nadu','627001','Engineer',900000,'Verified',7),

('CUST008','Anitha','K','Female','1999-08-19','anitha8@gmail.com','9001110008','123456789008','ABCDE1008F','Brough Road','Erode','Tamil Nadu','638001','Nurse',450000,'Verified',8),

('CUST009','Ramesh','R','Male','1994-12-01','ramesh9@gmail.com','9001110009','123456789009','ABCDE1009F','Medical College Road','Thanjavur','Tamil Nadu','613004','Farmer',350000,'Verified',9),

('CUST010','Meena','T','Female','1997-10-05','meena10@gmail.com','9001110010','123456789010','ABCDE1010F','Gandhi Road','Kanchipuram','Tamil Nadu','631501','Lecturer',700000,'Verified',10),

('CUST011','Vignesh','Kumar','Male','1996-04-15','vignesh11@gmail.com','9001110011','123456789011','ABCDE1011F','MG Road','Bengaluru','Karnataka','560001','Software Engineer',950000,'Verified',11),

('CUST012','Sneha','Reddy','Female','1998-06-20','sneha12@gmail.com','9001110012','123456789012','ABCDE1012F','Banjara Hills','Hyderabad','Telangana','500034','HR Manager',700000,'Verified',12),

('CUST013','Ajay','Sharma','Male','1995-09-10','ajay13@gmail.com','9001110013','123456789013','ABCDE1013F','Andheri East','Mumbai','Maharashtra','400069','Business',1800000,'Verified',13),

('CUST014','Pooja','Singh','Female','1999-12-05','pooja14@gmail.com','9001110014','123456789014','ABCDE1014F','Connaught Place','Delhi','Delhi','110001','Lawyer',1100000,'Verified',14),

('CUST015','Hari','Prasad','Male','1994-11-28','hari15@gmail.com','9001110015','123456789015','ABCDE1015F','Shivaji Nagar','Pune','Maharashtra','411005','Chartered Accountant',1300000,'Verified',15),

('CUST016','Keerthana','M','Female','2000-01-08','keerthana16@gmail.com','9001110016','123456789016','ABCDE1016F','MG Road','Kochi','Kerala','682011','Teacher',450000,'Verified',16),

('CUST017','Prakash','R','Male','1993-03-19','prakash17@gmail.com','9001110017','123456789017','ABCDE1017F','Benz Circle','Vijayawada','Andhra Pradesh','520010','Farmer',500000,'Verified',17),

('CUST018','Swathi','K','Female','1998-08-12','swathi18@gmail.com','9001110018','123456789018','ABCDE1018F','Sayyaji Rao Road','Mysuru','Karnataka','570001','Student',200000,'Pending',18),

('CUST019','Bharath','S','Male','1997-07-22','bharath19@gmail.com','9001110019','123456789019','ABCDE1019F','Dwaraka Nagar','Visakhapatnam','Andhra Pradesh','530016','Civil Engineer',850000,'Verified',19),

('CUST020','Janani','P','Female','1996-02-14','janani20@gmail.com','9001110020','123456789020','ABCDE1020F','Mission Street','Puducherry','Puducherry','605001','Bank Employee',650000,'Verified',20),

('CUST021','Kavin','Raj','Male','1995-05-16','kavin21@gmail.com','9001110021','123456789021','ABCDE1021F','Avinashi Road','Tiruppur','Tamil Nadu','641602','Textile Business',1400000,'Verified',21),

('CUST022','Nandhini','S','Female','1998-09-24','nandhini22@gmail.com','9001110022','123456789022','ABCDE1022F','Bagalur Road','Hosur','Tamil Nadu','635109','Software Engineer',850000,'Verified',22),

('CUST023','Mohan','Kumar','Male','1994-12-11','mohan23@gmail.com','9001110023','123456789023','ABCDE1023F','Jawahar Bazaar','Karur','Tamil Nadu','639001','Business',1200000,'Verified',23),

('CUST024','Deepika','R','Female','1999-03-30','deepika24@gmail.com','9001110024','123456789024','ABCDE1024F','Salem Road','Namakkal','Tamil Nadu','637001','Doctor',1500000,'Verified',24),

('CUST025','Saravanan','M','Male','1996-07-18','saravanan25@gmail.com','9001110025','123456789025','ABCDE1025F','Beach Road','Cuddalore','Tamil Nadu','607001','Government Employee',700000,'Verified',25),

('CUST026','Harish','Kumar','Male','1995-01-15','harish26@gmail.com','9001110026','123456789026','ABCDE1026F','Beach Road','Thoothukudi','Tamil Nadu','628001','Business',900000,'Verified',26),

('CUST027','Nisha','Priya','Female','1998-04-18','nisha27@gmail.com','9001110027','123456789027','ABCDE1027F','Main Road','Dindigul','Tamil Nadu','624001','Teacher',450000,'Verified',27),

('CUST028','Vignesh','R','Male','1994-06-20','vignesh28@gmail.com','9001110028','123456789028','ABCDE1028F','Virudhunagar Road','Sivakasi','Tamil Nadu','626123','Engineer',850000,'Verified',28),

('CUST029','Keerthana','S','Female','1999-02-10','keerthana29@gmail.com','9001110029','123456789029','ABCDE1029F','Collector Office Road','Virudhunagar','Tamil Nadu','626001','Nurse',500000,'Verified',29),

('CUST030','Mohan','Raj','Male','1993-09-25','mohan30@gmail.com','9001110030','123456789030','ABCDE1030F','Town High Road','Kumbakonam','Tamil Nadu','612001','Bank Employee',750000,'Verified',30),

('CUST031','Preethi','K','Female','1997-07-14','preethi31@gmail.com','9001110031','123456789031','ABCDE1031F','Beach Road','Nagapattinam','Tamil Nadu','611001','Student',250000,'Pending',31),

('CUST032','Aravind','M','Male','1995-11-12','aravind32@gmail.com','9001110032','123456789032','ABCDE1032F','M.G Road','Mayiladuthurai','Tamil Nadu','609001','Business',1300000,'Verified',32),

('CUST033','Sathish','P','Male','1994-03-09','sathish33@gmail.com','9001110033','123456789033','ABCDE1033F','Palakkad Road','Pollachi','Tamil Nadu','642001','Farmer',400000,'Verified',33),

('CUST034','Monika','R','Female','1998-12-18','monika34@gmail.com','9001110034','123456789034','ABCDE1034F','Commercial Road','Ooty','Tamil Nadu','643001','Doctor',1600000,'Verified',34),

('CUST035','Kavin','S','Male','1993-05-30','kavin35@gmail.com','9001110035','123456789035','ABCDE1035F','Court Road','Tenkasi','Tamil Nadu','627811','Advocate',1100000,'Verified',35),

('CUST036','Janani','M','Female','1997-08-15','janani36@gmail.com','9001110036','123456789036','ABCDE1036F','Pennagaram Road','Dharmapuri','Tamil Nadu','636701','Teacher',480000,'Verified',36),

('CUST037','Saravanan','K','Male','1992-04-17','saravanan37@gmail.com','9001110037','123456789037','ABCDE1037F','Bangalore Road','Krishnagiri','Tamil Nadu','635001','Business',1800000,'Verified',37),

('CUST038','Deepika','R','Female','1996-10-22','deepika38@gmail.com','9001110038','123456789038','ABCDE1038F','Perambalur Road','Ariyalur','Tamil Nadu','621704','Software Engineer',950000,'Verified',38),

('CUST039','Naveen','P','Male','1995-02-08','naveen39@gmail.com','9001110039','123456789039','ABCDE1039F','Trichy Main Road','Perambalur','Tamil Nadu','621212','Bank Employee',700000,'Verified',39),

('CUST040','Aarthi','S','Female','1998-06-06','aarthi40@gmail.com','9001110040','123456789040','ABCDE1040F','East Coast Road','Ramanathapuram','Tamil Nadu','623501','Nurse',550000,'Verified',40),

('CUST041','Ragul','M','Male','1993-12-14','ragul41@gmail.com','9001110041','123456789041','ABCDE1041F','Sekkalai Road','Karaikudi','Tamil Nadu','630001','Chartered Accountant',1450000,'Verified',41),

('CUST042','Swathi','K','Female','1997-03-11','swathi42@gmail.com','9001110042','123456789042','ABCDE1042F','Cape Road','Nagercoil','Tamil Nadu','629001','Professor',1000000,'Verified',42),

('CUST043','Dinesh','R','Male','1994-09-20','dinesh43@gmail.com','9001110043','123456789043','ABCDE1043F','GST Road','Chengalpattu','Tamil Nadu','603001','Mechanical Engineer',850000,'Verified',43),

('CUST044','Gayathri','P','Female','1996-11-25','gayathri44@gmail.com','9001110044','123456789044','ABCDE1044F','Velachery Main Road','Tambaram','Tamil Nadu','600045','HR Manager',750000,'Verified',44),

('CUST045','Vinoth','S','Male','1992-01-19','vinoth45@gmail.com','9001110045','123456789045','ABCDE1045F','100 Feet Road','Chennai','Tamil Nadu','600042','Business Owner',2200000,'Verified',45),

('CUST046','Shalini','M','Female','1998-08-08','shalini46@gmail.com','9001110046','123456789046','ABCDE1046F','2nd Avenue','Chennai','Tamil Nadu','600040','Software Engineer',950000,'Verified',46),

('CUST047','Bharath','K','Male','1994-05-16','bharath47@gmail.com','9001110047','123456789047','ABCDE1047F','Usman Road','Chennai','Tamil Nadu','600017','Civil Engineer',850000,'Verified',47),

('CUST048','Priyanka','R','Female','1997-07-07','priyanka48@gmail.com','9001110048','123456789048','ABCDE1048F','LB Road','Chennai','Tamil Nadu','600020','Doctor',1800000,'Verified',48),

('CUST049','Karthikeyan','P','Male','1993-02-24','karthikeyan49@gmail.com','9001110049','123456789049','ABCDE1049F','Mount Poonamallee Road','Chennai','Tamil Nadu','600116','Business Owner',2500000,'Verified',49),

('CUST050','Anand','V','Male','1991-10-30','anand50@gmail.com','9001110050','123456789050','ABCDE1050F','MTH Road','Chennai','Tamil Nadu','600053','Regional Manager',1500000,'Verified',50);

SELECT 
    *
FROM
    customers;

SELECT 
    COUNT(*) AS total_customers
FROM
    customers;


CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number BIGINT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    account_type_id INT NOT NULL,
    branch_id INT NOT NULL,
    opening_date DATE NOT NULL,
    balance DECIMAL(15 , 2 ) DEFAULT 0,
    account_status ENUM('Active', 'Inactive', 'Closed', 'Frozen') DEFAULT 'Active',
    nominee_name VARCHAR(100),
    nominee_relation VARCHAR(50),
    debit_card_issued ENUM('Yes', 'No') DEFAULT 'No',
    cheque_book_issued ENUM('Yes', 'No') DEFAULT 'No',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_type_id)
        REFERENCES account_types (account_type_id),
    FOREIGN KEY (branch_id)
        REFERENCES branches (branch_id)
);

DESC accounts;


INSERT INTO accounts
(account_number,customer_id,account_type_id,branch_id,opening_date,balance,account_status,nominee_name,nominee_relation,debit_card_issued,cheque_book_issued)
VALUES
(100000000001,1,1,1,'2024-01-15',25000,'Active','Lakshmi','Mother','Yes','Yes'),
(100000000002,2,1,2,'2024-01-18',45000,'Active','Ravi','Father','Yes','Yes'),
(100000000003,3,2,3,'2024-01-20',150000,'Active','Priya','Wife','Yes','Yes'),
(100000000004,4,3,4,'2024-01-22',12000,'Active','Kumar','Father','Yes','No'),
(100000000005,5,1,5,'2024-01-25',85000,'Active','Meena','Mother','Yes','Yes'),
(100000000006,6,4,6,'2024-01-28',9500,'Active','Anitha','Sister','Yes','No'),
(100000000007,7,1,7,'2024-02-01',67000,'Active','Suresh','Brother','Yes','Yes'),
(100000000008,8,5,8,'2024-02-03',35000,'Active','Divya','Mother','Yes','Yes'),
(100000000009,9,2,9,'2024-02-05',240000,'Active','Ramesh','Father','Yes','Yes'),
(100000000010,10,1,10,'2024-02-07',78000,'Active','Priya','Mother','Yes','Yes'),
(100000000011,11,2,11,'2024-02-10',125000,'Active','Kavitha','Mother','Yes','Yes'),
(100000000012,12,1,12,'2024-02-12',45000,'Active','Ramesh','Father','Yes','Yes'),
(100000000013,13,3,13,'2024-02-14',18000,'Active','Priya','Sister','Yes','No'),
(100000000014,14,1,14,'2024-02-16',92000,'Active','Suresh','Brother','Yes','Yes'),
(100000000015,15,5,15,'2024-02-18',350000,'Active','Lakshmi','Mother','Yes','Yes'),
(100000000016,16,2,16,'2024-02-20',156000,'Active','Anitha','Wife','Yes','Yes'),
(100000000017,17,4,17,'2024-02-22',24000,'Active','Mohan','Father','Yes','No'),
(100000000018,18,1,18,'2024-02-24',67000,'Active','Keerthana','Mother','Yes','Yes'),
(100000000019,19,2,19,'2024-02-26',98000,'Active','Deepa','Wife','Yes','Yes'),
(100000000020,20,3,20,'2024-02-28',15000,'Active','Arun','Father','Yes','No'),
(100000000021,21,1,21,'2024-03-01',45000,'Active','Priya','Mother','Yes','Yes'),
(100000000022,22,2,22,'2024-03-03',210000,'Active','Kumar','Father','Yes','Yes'),
(100000000023,23,3,23,'2024-03-05',18000,'Active','Divya','Sister','Yes','No'),
(100000000024,24,1,24,'2024-03-07',89000,'Active','Ravi','Brother','Yes','Yes'),
(100000000025,25,5,25,'2024-03-09',420000,'Active','Meena','Mother','Yes','Yes'),
(100000000026,26,2,26,'2024-03-11',132000,'Active','Anitha','Wife','Yes','Yes'),
(100000000027,27,4,27,'2024-03-13',27000,'Active','Suresh','Father','Yes','No'),
(100000000028,28,1,28,'2024-03-15',73000,'Active','Lakshmi','Mother','Yes','Yes'),
(100000000029,29,2,29,'2024-03-17',115000,'Active','Karthik','Brother','Yes','Yes'),
(100000000030,30,3,30,'2024-03-19',22000,'Active','Geetha','Mother','Yes','No'),
(100000000031,31,1,31,'2024-03-21',58000,'Active','Ramesh','Father','Yes','Yes'),
(100000000032,32,2,32,'2024-03-23',185000,'Active','Priya','Wife','Yes','Yes'),
(100000000033,33,3,33,'2024-03-25',12000,'Active','Anitha','Mother','Yes','No'),
(100000000034,34,1,34,'2024-03-27',95000,'Active','Kumar','Father','Yes','Yes'),
(100000000035,35,5,35,'2024-03-29',510000,'Active','Lakshmi','Mother','Yes','Yes'),
(100000000036,36,2,36,'2024-04-01',143000,'Active','Mohan','Brother','Yes','Yes'),
(100000000037,37,4,37,'2024-04-03',29000,'Active','Deepa','Sister','Yes','No'),
(100000000038,38,1,38,'2024-04-05',82000,'Active','Saravanan','Father','Yes','Yes'),
(100000000039,39,2,39,'2024-04-07',168000,'Active','Meena','Mother','Yes','Yes'),
(100000000040,40,3,40,'2024-04-09',25000,'Active','Ravi','Brother','Yes','No'),
(100000000041,41,1,41,'2024-04-11',68000,'Active','Kavitha','Mother','Yes','Yes'),
(100000000042,42,2,42,'2024-04-13',195000,'Active','Suresh','Father','Yes','Yes'),
(100000000043,43,3,43,'2024-04-15',18000,'Active','Divya','Sister','Yes','No'),
(100000000044,44,1,44,'2024-04-17',89000,'Active','Anand','Brother','Yes','Yes'),
(100000000045,45,5,45,'2024-04-19',620000,'Active','Lakshmi','Mother','Yes','Yes'),
(100000000046,46,2,46,'2024-04-21',156000,'Active','Meena','Wife','Yes','Yes'),
(100000000047,47,4,47,'2024-04-23',32000,'Active','Ramesh','Father','Yes','No'),
(100000000048,48,1,48,'2024-04-25',98000,'Active','Priya','Mother','Yes','Yes'),
(100000000049,49,2,49,'2024-04-27',225000,'Active','Karthik','Brother','Yes','Yes'),
(100000000050,50,3,50,'2024-04-29',27000,'Active','Geetha','Mother','Yes','No');


SELECT 
    COUNT(*) AS total_accounts
FROM
    accounts;

SELECT 
    *
FROM
    ACCOUNTS;


CREATE TABLE beneficiaries (
    beneficiary_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    beneficiary_name VARCHAR(100) NOT NULL,
    beneficiary_account_no BIGINT NOT NULL,
    beneficiary_bank_name VARCHAR(100) NOT NULL,
    ifsc_code VARCHAR(20) NOT NULL,
    nickname VARCHAR(50),
    relationship VARCHAR(50),
    mobile_no VARCHAR(15),
    email VARCHAR(100),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    added_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);


DESC beneficiaries;

INSERT INTO beneficiaries
(customer_id,beneficiary_name,beneficiary_account_no,beneficiary_bank_name,ifsc_code,nickname,relationship,mobile_no,email,added_date)
VALUES
(1,'Ravi Kumar',200000000001,'State Bank of India','SBIN0001001','Ravi','Father','9100000001','ravi1@gmail.com','2024-01-10'),
(2,'Priya Devi',200000000002,'Indian Bank','IDIB0001002','Priya','Sister','9100000002','priya2@gmail.com','2024-01-12'),
(3,'Suresh Kumar',200000000003,'Canara Bank','CNRB0001003','Suresh','Brother','9100000003','suresh3@gmail.com','2024-01-15'),
(4,'Lakshmi',200000000004,'HDFC Bank','HDFC0001004','Lakshmi','Mother','9100000004','lakshmi4@gmail.com','2024-01-18'),
(5,'Anitha',200000000005,'ICICI Bank','ICIC0001005','Anitha','Wife','9100000005','anitha5@gmail.com','2024-01-20'),
(6,'Karthik',200000000006,'Axis Bank','UTIB0001006','Karthik','Brother','9100000006','karthik6@gmail.com','2024-01-22'),
(7,'Meena',200000000007,'Bank of Baroda','BARB0001007','Meena','Mother','9100000007','meena7@gmail.com','2024-01-24'),
(8,'Deepa',200000000008,'Punjab National Bank','PUNB0001008','Deepa','Sister','9100000008','deepa8@gmail.com','2024-01-26'),
(9,'Mohan',200000000009,'Union Bank','UBIN0001009','Mohan','Father','9100000009','mohan9@gmail.com','2024-01-28'),
(10,'Swathi',200000000010,'Indian Overseas Bank','IOBA0001010','Swathi','Friend','9100000010','swathi10@gmail.com','2024-01-30'),
(11,'Arun Prakash',200000000011,'State Bank of India','SBIN0001011','Arun','Brother','9100000011','arun11@gmail.com','2024-02-01'),
(12,'Kavitha',200000000012,'Indian Bank','IDIB0001012','Kavi','Mother','9100000012','kavi12@gmail.com','2024-02-03'),
(13,'Saravanan',200000000013,'Canara Bank','CNRB0001013','Sara','Father','9100000013','saravanan13@gmail.com','2024-02-05'),
(14,'Janani',200000000014,'Axis Bank','UTIB0001014','Janu','Sister','9100000014','janani14@gmail.com','2024-02-07'),
(15,'Hari Prasad',200000000015,'HDFC Bank','HDFC0001015','Hari','Friend','9100000015','hari15@gmail.com','2024-02-09'),
(16,'Nandhini',200000000016,'ICICI Bank','ICIC0001016','Nandu','Mother','9100000016','nandhini16@gmail.com','2024-02-11'),
(17,'Vignesh',200000000017,'Bank of Baroda','BARB0001017','Vicky','Brother','9100000017','vignesh17@gmail.com','2024-02-13'),
(18,'Keerthana',200000000018,'Punjab National Bank','PUNB0001018','Keerthi','Sister','9100000018','keerthi18@gmail.com','2024-02-15'),
(19,'Ramesh',200000000019,'Union Bank','UBIN0001019','Ramesh','Father','9100000019','ramesh19@gmail.com','2024-02-17'),
(20,'Monika',200000000020,'Indian Overseas Bank','IOBA0001020','Moni','Friend','9100000020','monika20@gmail.com','2024-02-19'),
(21,'Praveen',200000000021,'State Bank of India','SBIN0001021','Praveen','Brother','9100000021','praveen21@gmail.com','2024-02-21'),
(22,'Gayathri',200000000022,'Indian Bank','IDIB0001022','Gayu','Sister','9100000022','gayathri22@gmail.com','2024-02-23'),
(23,'Bharath',200000000023,'Canara Bank','CNRB0001023','Bharath','Friend','9100000023','bharath23@gmail.com','2024-02-25'),
(24,'Priyanka',200000000024,'Axis Bank','UTIB0001024','Priya','Wife','9100000024','priyanka24@gmail.com','2024-02-27'),
(25,'Anand',200000000025,'HDFC Bank','HDFC0001025','Anand','Father','9100000025','anand25@gmail.com','2024-03-01'),
(26,'Harish Kumar',200000000026,'ICICI Bank','ICIC0001026','Harish','Brother','9100000026','harish26@gmail.com','2024-03-03'),
(27,'Nisha Priya',200000000027,'Axis Bank','UTIB0001027','Nisha','Sister','9100000027','nisha27@gmail.com','2024-03-05'),
(28,'Vignesh R',200000000028,'Canara Bank','CNRB0001028','Vicky','Friend','9100000028','vignesh28@gmail.com','2024-03-07'),
(29,'Keerthana S',200000000029,'HDFC Bank','HDFC0001029','Keerthi','Mother','9100000029','keerthana29@gmail.com','2024-03-09'),
(30,'Mohan Raj',200000000030,'State Bank of India','SBIN0001030','Mohan','Father','9100000030','mohan30@gmail.com','2024-03-11'),
(31,'Preethi K',200000000031,'Indian Bank','IDIB0001031','Preethi','Sister','9100000031','preethi31@gmail.com','2024-03-13'),
(32,'Aravind M',200000000032,'Bank of Baroda','BARB0001032','Aravind','Brother','9100000032','aravind32@gmail.com','2024-03-15'),
(33,'Sathish P',200000000033,'Punjab National Bank','PUNB0001033','Sathish','Friend','9100000033','sathish33@gmail.com','2024-03-17'),
(34,'Monika R',200000000034,'Union Bank','UBIN0001034','Monika','Sister','9100000034','monika34@gmail.com','2024-03-19'),
(35,'Kavin S',200000000035,'Indian Overseas Bank','IOBA0001035','Kavin','Brother','9100000035','kavin35@gmail.com','2024-03-21'),
(36,'Janani M',200000000036,'ICICI Bank','ICIC0001036','Janani','Friend','9100000036','janani36@gmail.com','2024-03-23'),
(37,'Saravanan K',200000000037,'Axis Bank','UTIB0001037','Sara','Father','9100000037','saravanan37@gmail.com','2024-03-25'),
(38,'Deepika R',200000000038,'Canara Bank','CNRB0001038','Deepika','Sister','9100000038','deepika38@gmail.com','2024-03-27'),
(39,'Naveen P',200000000039,'HDFC Bank','HDFC0001039','Naveen','Brother','9100000039','naveen39@gmail.com','2024-03-29'),
(40,'Aarthi S',200000000040,'State Bank of India','SBIN0001040','Aarthi','Mother','9100000040','aarthi40@gmail.com','2024-03-31'),
(41,'Ragul M',200000000041,'Indian Bank','IDIB0001041','Ragul','Friend','9100000041','ragul41@gmail.com','2024-04-02'),
(42,'Swathi K',200000000042,'Bank of Baroda','BARB0001042','Swathi','Sister','9100000042','swathi42@gmail.com','2024-04-04'),
(43,'Dinesh R',200000000043,'Punjab National Bank','PUNB0001043','Dinesh','Brother','9100000043','dinesh43@gmail.com','2024-04-06'),
(44,'Gayathri P',200000000044,'Union Bank','UBIN0001044','Gayu','Friend','9100000044','gayathri44@gmail.com','2024-04-08'),
(45,'Vinoth S',200000000045,'Indian Overseas Bank','IOBA0001045','Vinoth','Father','9100000045','vinoth45@gmail.com','2024-04-10'),
(46,'Shalini M',200000000046,'ICICI Bank','ICIC0001046','Shalini','Sister','9100000046','shalini46@gmail.com','2024-04-12'),
(47,'Bharath K',200000000047,'Axis Bank','UTIB0001047','Bharath','Brother','9100000047','bharath47@gmail.com','2024-04-14'),
(48,'Priyanka R',200000000048,'Canara Bank','CNRB0001048','Priya','Friend','9100000048','priyanka48@gmail.com','2024-04-16'),
(49,'Karthikeyan P',200000000049,'HDFC Bank','HDFC0001049','Karthik','Father','9100000049','karthikeyan49@gmail.com','2024-04-18'),
(50,'Anand V',200000000050,'State Bank of India','SBIN0001050','Anand','Brother','9100000050','anand50@gmail.com','2024-04-20');


SELECT 
    COUNT(*) AS total_beneficiaries
FROM
    beneficiaries;

SELECT 
    *
FROM
    beneficiaries;


CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_reference VARCHAR(30) UNIQUE NOT NULL,
    account_id INT NOT NULL,
    beneficiary_id INT,
    transaction_type_id INT NOT NULL,
    payment_mode_id INT NOT NULL,
    transaction_date DATETIME NOT NULL,
    amount DECIMAL(15 , 2 ) NOT NULL,
    transaction_status ENUM('Success', 'Pending', 'Failed') DEFAULT 'Success',
    remarks VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id),
    FOREIGN KEY (beneficiary_id)
        REFERENCES beneficiaries (beneficiary_id),
    FOREIGN KEY (transaction_type_id)
        REFERENCES transaction_types (transaction_type_id),
    FOREIGN KEY (payment_mode_id)
        REFERENCES payment_modes (payment_mode_id)
);

DESC transactions;


INSERT INTO transactions
(transaction_reference,account_id,beneficiary_id,transaction_type_id,payment_mode_id,transaction_date,amount,transaction_status,remarks)
VALUES
('TXN000001',1,1,1,7,'2024-05-01 09:10:00',5000,'Success','UPI Transfer'),
('TXN000002',2,2,2,4,'2024-05-01 09:20:00',10000,'Success','NEFT Transfer'),
('TXN000003',3,3,3,5,'2024-05-01 09:30:00',25000,'Success','RTGS Transfer'),
('TXN000004',4,4,4,1,'2024-05-01 09:40:00',3000,'Success','Cash Deposit'),
('TXN000005',5,5,5,8,'2024-05-01 09:50:00',1500,'Success','Debit Card Payment'),
('TXN000006',6,6,6,9,'2024-05-01 10:00:00',4500,'Success','Credit Card Payment'),
('TXN000007',7,7,1,10,'2024-05-01 10:10:00',7000,'Success','Net Banking'),
('TXN000008',8,8,2,11,'2024-05-01 10:20:00',8500,'Success','Mobile Banking'),
('TXN000009',9,9,3,6,'2024-05-01 10:30:00',50000,'Success','IMPS Transfer'),
('TXN000010',10,10,4,2,'2024-05-01 10:40:00',12000,'Success','Cheque Deposit'),
('TXN000011',11,11,1,7,'2024-05-01 10:50:00',2500,'Success','UPI Payment'),
('TXN000012',12,12,2,4,'2024-05-01 11:00:00',15000,'Success','NEFT Transfer'),
('TXN000013',13,13,3,5,'2024-05-01 11:10:00',60000,'Success','RTGS Transfer'),
('TXN000014',14,14,4,1,'2024-05-01 11:20:00',4500,'Success','Cash Deposit'),
('TXN000015',15,15,5,8,'2024-05-01 11:30:00',2000,'Success','POS Purchase'),
('TXN000016',16,16,6,9,'2024-05-01 11:40:00',9000,'Success','Credit Card Payment'),
('TXN000017',17,17,1,10,'2024-05-01 11:50:00',3500,'Success','Net Banking'),
('TXN000018',18,18,2,11,'2024-05-01 12:00:00',11000,'Success','Mobile Banking'),
('TXN000019',19,19,3,6,'2024-05-01 12:10:00',75000,'Success','IMPS Transfer'),
('TXN000020',20,20,4,2,'2024-05-01 12:20:00',8000,'Success','Cheque Deposit'),
('TXN000021',21,21,1,7,'2024-05-01 12:30:00',4500,'Success','UPI Payment'),
('TXN000022',22,22,2,4,'2024-05-01 12:40:00',18000,'Success','NEFT Transfer'),
('TXN000023',23,23,3,5,'2024-05-01 12:50:00',45000,'Success','RTGS Transfer'),
('TXN000024',24,24,4,1,'2024-05-01 13:00:00',5500,'Success','Cash Deposit'),
('TXN000025',25,25,5,8,'2024-05-01 13:10:00',3000,'Success','Debit Card Payment'),
('TXN000026',26,26,6,9,'2024-05-01 13:20:00',9500,'Success','Credit Card Payment'),
('TXN000027',27,27,1,10,'2024-05-01 13:30:00',4000,'Success','Net Banking'),
('TXN000028',28,28,2,11,'2024-05-01 13:40:00',13500,'Success','Mobile Banking'),
('TXN000029',29,29,3,6,'2024-05-01 13:50:00',85000,'Success','IMPS Transfer'),
('TXN000030',30,30,4,2,'2024-05-01 14:00:00',9500,'Success','Cheque Deposit'),
('TXN000031',31,31,1,7,'2024-05-01 14:10:00',5000,'Success','UPI Transfer'),
('TXN000032',32,32,2,4,'2024-05-01 14:20:00',25000,'Success','NEFT Transfer'),
('TXN000033',33,33,3,5,'2024-05-01 14:30:00',70000,'Success','RTGS Transfer'),
('TXN000034',34,34,4,1,'2024-05-01 14:40:00',3000,'Success','Cash Deposit'),
('TXN000035',35,35,5,8,'2024-05-01 14:50:00',2500,'Success','Debit Card Payment'),
('TXN000036',36,36,6,9,'2024-05-01 15:00:00',8500,'Success','Credit Card Payment'),
('TXN000037',37,37,1,10,'2024-05-01 15:10:00',6000,'Success','Net Banking'),
('TXN000038',38,38,2,11,'2024-05-01 15:20:00',16500,'Success','Mobile Banking'),
('TXN000039',39,39,3,6,'2024-05-01 15:30:00',95000,'Success','IMPS Transfer'),
('TXN000040',40,40,4,2,'2024-05-01 15:40:00',10000,'Success','Cheque Deposit'),
('TXN000041',41,41,1,7,'2024-05-01 15:50:00',5500,'Success','UPI Payment'),
('TXN000042',42,42,2,4,'2024-05-01 16:00:00',22000,'Success','NEFT Transfer'),
('TXN000043',43,43,3,5,'2024-05-01 16:10:00',55000,'Success','RTGS Transfer'),
('TXN000044',44,44,4,1,'2024-05-01 16:20:00',4500,'Success','Cash Deposit'),
('TXN000045',45,45,5,8,'2024-05-01 16:30:00',3200,'Success','Debit Card Payment'),
('TXN000046',46,46,6,9,'2024-05-01 16:40:00',12500,'Success','Credit Card Payment'),
('TXN000047',47,47,1,10,'2024-05-01 16:50:00',7000,'Success','Net Banking'),
('TXN000048',48,48,2,11,'2024-05-01 17:00:00',18000,'Success','Mobile Banking'),
('TXN000049',49,49,3,6,'2024-05-01 17:10:00',125000,'Success','IMPS Transfer'),
('TXN000050',50,50,4,2,'2024-05-01 17:20:00',12000,'Success','Cheque Deposit');

SELECT 
    *
FROM
    transactions;

SELECT 
    COUNT(*) AS total_transactions
FROM
    transactions;


CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    loan_type_id INT NOT NULL,
    loan_amount DECIMAL(15 , 2 ) NOT NULL,
    interest_rate DECIMAL(5 , 2 ) NOT NULL,
    tenure_months INT NOT NULL,
    emi_amount DECIMAL(15 , 2 ) NOT NULL,
    loan_status ENUM('Pending', 'Approved', 'Rejected', 'Closed') DEFAULT 'Pending',
    sanction_date DATE,
    disbursement_date DATE,
    outstanding_amount DECIMAL(15 , 2 ),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id),
    FOREIGN KEY (loan_type_id)
        REFERENCES loan_types (loan_type_id)
);

DESC loans;


INSERT INTO loans
(customer_id,account_id,loan_type_id,loan_amount,interest_rate,tenure_months,emi_amount,loan_status,sanction_date,disbursement_date,outstanding_amount)
VALUES
(1,1,1,500000,8.50,60,10258,'Approved','2024-01-15','2024-01-20',420000),
(2,2,2,300000,9.00,48,7468,'Approved','2024-01-18','2024-01-22',250000),
(3,3,3,1500000,7.50,180,13903,'Approved','2024-01-25','2024-01-30',1450000),
(4,4,4,200000,10.50,36,6500,'Approved','2024-02-01','2024-02-05',180000),
(5,5,5,800000,8.25,84,12475,'Approved','2024-02-10','2024-02-15',760000),
(6,6,6,250000,11.00,24,11645,'Approved','2024-02-20','2024-02-25',210000),
(7,7,7,1000000,9.25,120,12830,'Approved','2024-03-01','2024-03-05',950000),
(8,8,8,5000000,7.00,240,38765,'Approved','2024-03-10','2024-03-15',4900000),
(9,9,9,400000,9.50,48,10062,'Approved','2024-03-20','2024-03-25',360000),
(10,10,10,150000,12.00,24,7060,'Approved','2024-04-01','2024-04-05',130000),
(11,11,1,600000,8.50,60,12310,'Approved','2024-04-10','2024-04-15',550000),
(12,12,2,350000,9.00,48,8713,'Approved','2024-04-18','2024-04-22',310000),
(13,13,3,1800000,7.50,180,16684,'Approved','2024-04-25','2024-04-30',1750000),
(14,14,4,250000,10.50,36,8125,'Approved','2024-05-02','2024-05-06',225000),
(15,15,5,900000,8.25,84,14035,'Approved','2024-05-10','2024-05-15',850000),
(16,16,6,300000,11.00,24,13974,'Approved','2024-05-18','2024-05-22',275000),
(17,17,7,1200000,9.25,120,15396,'Approved','2024-05-25','2024-05-30',1150000),
(18,18,8,4500000,7.00,240,34889,'Approved','2024-06-01','2024-06-05',4400000),
(19,19,9,500000,9.50,60,10501,'Approved','2024-06-08','2024-06-12',470000),
(20,20,10,180000,12.00,24,8472,'Approved','2024-06-15','2024-06-20',160000),
(21,21,1,700000,8.50,72,12400,'Approved','2024-06-22','2024-06-25',680000),
(22,22,2,450000,9.00,60,9340,'Approved','2024-06-25','2024-06-28',420000),
(23,23,3,2000000,7.50,180,18538,'Approved','2024-06-28','2024-06-30',1980000),
(24,24,4,300000,10.50,48,7700,'Approved','2024-07-01','2024-07-05',285000),
(25,25,5,1000000,8.25,96,14690,'Approved','2024-07-05','2024-07-10',980000),
(26,'2024-09-05',11250,7600,3650,7,'Paid','LP000026','UPI EMI'),
(27,'2024-09-08',9850,6500,3350,4,'Paid','LP000027','NEFT EMI'),
(28,'2024-09-10',15800,10500,5300,10,'Paid','LP000028','Net Banking'),
(29,'2024-09-12',8450,5600,2850,1,'Paid','LP000029','Cash Payment'),
(30,'2024-09-15',13200,8900,4300,8,'Paid','LP000030','Debit Card EMI'),
(31,'2024-09-18',11900,7900,4000,9,'Paid','LP000031','Credit Card EMI'),
(32,'2024-09-20',17500,11800,5700,7,'Paid','LP000032','UPI EMI'),
(33,'2024-09-22',9100,6100,3000,4,'Paid','LP000033','NEFT EMI'),
(34,'2024-09-25',14150,9400,4750,10,'Paid','LP000034','Net Banking'),
(35,'2024-09-28',7800,5100,2700,1,'Paid','LP000035','Cash Payment'),
(36,'2024-10-01',12500,8300,4200,8,'Paid','LP000036','Debit Card EMI'),
(37,'2024-10-03',10800,7200,3600,9,'Paid','LP000037','Credit Card EMI'),
(38,'2024-10-05',16950,11400,5550,7,'Paid','LP000038','UPI EMI'),
(39,'2024-10-08',9300,6200,3100,4,'Paid','LP000039','NEFT EMI'),
(40,'2024-10-10',15200,10100,5100,10,'Paid','LP000040','Net Banking'),
(41,'2024-10-12',8600,5700,2900,1,'Paid','LP000041','Cash Payment'),
(42,'2024-10-15',13400,9000,4400,8,'Paid','LP000042','Debit Card EMI'),
(43,'2024-10-18',11700,7800,3900,9,'Paid','LP000043','Credit Card EMI'),
(44,'2024-10-20',18100,12200,5900,7,'Paid','LP000044','UPI EMI'),
(45,'2024-10-22',9700,6500,3200,4,'Paid','LP000045','NEFT EMI'),
(46,'2024-10-25',14500,9700,4800,10,'Paid','LP000046','Net Banking'),
(47,'2024-10-28',8200,5400,2800,1,'Paid','LP000047','Cash Payment'),
(48,'2024-11-01',12800,8500,4300,8,'Paid','LP000048','Debit Card EMI'),
(49,'2024-11-03',11100,7400,3700,9,'Paid','LP000049','Credit Card EMI'),
(50,'2024-11-05',19200,13000,6200,7,'Paid','LP000050','UPI EMI');


SELECT 
    *
FROM
    LOANS;


CREATE TABLE cards (
    card_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    card_type_id INT NOT NULL,
    card_number VARCHAR(20) UNIQUE NOT NULL,
    card_holder_name VARCHAR(100) NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    cvv CHAR(3) NOT NULL,
    card_status ENUM('Active', 'Blocked', 'Expired') DEFAULT 'Active',
    daily_limit DECIMAL(12 , 2 ) DEFAULT 50000,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id),
    FOREIGN KEY (card_type_id)
        REFERENCES card_types (card_type_id)
);

DESC cards;


INSERT INTO cards
(customer_id,account_id,card_type_id,card_number,card_holder_name,issue_date,expiry_date,cvv,card_status,daily_limit)
VALUES
(1,1,1,'4567123412340001','Arun Kumar','2024-01-15','2029-01-14','321','Active',50000),
(2,2,2,'4567123412340002','Priya R','2024-01-18','2029-01-17','654','Active',50000),
(3,3,6,'4567123412340003','Karthik S','2024-01-20','2029-01-19','456','Active',100000),
(4,4,3,'4567123412340004','Divya M','2024-01-22','2029-01-21','741','Active',50000),
(5,5,7,'4567123412340005','Suresh B','2024-01-25','2029-01-24','852','Active',200000),
(6,6,4,'4567123412340006','Lavanya P','2024-01-28','2029-01-27','963','Active',50000),
(7,7,1,'4567123412340007','Rahul Sharma','2024-02-01','2029-01-31','147','Active',50000),
(8,8,8,'4567123412340008','Anitha K','2024-02-03','2029-02-02','258','Active',300000),
(9,9,6,'4567123412340009','Ramesh R','2024-02-05','2029-02-04','369','Active',100000),
(10,10,2,'4567123412340010','Meena T','2024-02-07','2029-02-06','159','Active',50000),
(11,11,1,'4567123412340011','Vignesh Kumar','2024-02-10','2029-02-09','357','Active',50000),
(12,12,2,'4567123412340012','Sneha Reddy','2024-02-12','2029-02-11','951','Active',50000),
(13,13,6,'4567123412340013','Ajay Sharma','2024-02-14','2029-02-13','258','Active',100000),
(14,14,3,'4567123412340014','Pooja Singh','2024-02-16','2029-02-15','753','Active',50000),
(15,15,7,'4567123412340015','Hari Prasad','2024-02-18','2029-02-17','852','Active',200000),
(16,16,4,'4567123412340016','Keerthana M','2024-02-20','2029-02-19','456','Active',50000),
(17,17,1,'4567123412340017','Prakash R','2024-02-22','2029-02-21','654','Active',50000),
(18,18,8,'4567123412340018','Swathi K','2024-02-24','2029-02-23','741','Active',300000),
(19,19,6,'4567123412340019','Bharath S','2024-02-26','2029-02-25','963','Active',100000),
(20,20,2,'4567123412340020','Janani P','2024-02-28','2029-02-27','357','Active',50000),
(21,21,1,'4567123412340021','Kavin Raj','2024-03-01','2029-02-28','258','Active',50000),
(22,22,7,'4567123412340022','Nandhini S','2024-03-03','2029-03-02','951','Active',200000),
(23,23,6,'4567123412340023','Mohan Kumar','2024-03-05','2029-03-04','753','Active',100000),
(24,24,3,'4567123412340024','Deepika R','2024-03-07','2029-03-06','852','Active',50000),
(25,25,8,'4567123412340025','Saravanan M','2024-03-09','2029-03-08','654','Active',300000),
(26,26,1,'4567123412340026','Harish Kumar','2024-03-11','2029-03-10','321','Active',50000),
(27,27,2,'4567123412340027','Nisha Priya','2024-03-13','2029-03-12','654','Active',50000),
(28,28,6,'4567123412340028','Vignesh R','2024-03-15','2029-03-14','456','Active',100000),
(29,29,3,'4567123412340029','Keerthana S','2024-03-17','2029-03-16','741','Active',50000),
(30,30,7,'4567123412340030','Mohan Raj','2024-03-19','2029-03-18','852','Active',200000),
(31,31,4,'4567123412340031','Preethi K','2024-03-21','2029-03-20','963','Active',50000),
(32,32,1,'4567123412340032','Aravind M','2024-03-23','2029-03-22','147','Active',50000),
(33,33,8,'4567123412340033','Sathish P','2024-03-25','2029-03-24','258','Active',300000),
(34,34,6,'4567123412340034','Monika R','2024-03-27','2029-03-26','369','Active',100000),
(35,35,2,'4567123412340035','Kavin S','2024-03-29','2029-03-28','159','Active',50000),
(36,36,1,'4567123412340036','Janani M','2024-04-01','2029-03-31','357','Active',50000),
(37,37,7,'4567123412340037','Saravanan K','2024-04-03','2029-04-02','951','Active',200000),
(38,38,6,'4567123412340038','Deepika R','2024-04-05','2029-04-04','258','Active',100000),
(39,39,3,'4567123412340039','Naveen P','2024-04-07','2029-04-06','753','Active',50000),
(40,40,8,'4567123412340040','Aarthi S','2024-04-09','2029-04-08','852','Active',300000),
(41,41,1,'4567123412340041','Ragul M','2024-04-11','2029-04-10','456','Active',50000),
(42,42,2,'4567123412340042','Swathi K','2024-04-13','2029-04-12','654','Active',50000),
(43,43,6,'4567123412340043','Dinesh R','2024-04-15','2029-04-14','741','Active',100000),
(44,44,3,'4567123412340044','Gayathri P','2024-04-17','2029-04-16','852','Active',50000),
(45,45,7,'4567123412340045','Vinoth S','2024-04-19','2029-04-18','963','Active',200000),
(46,46,4,'4567123412340046','Shalini M','2024-04-21','2029-04-20','147','Active',50000),
(47,47,1,'4567123412340047','Bharath K','2024-04-23','2029-04-22','258','Active',50000),
(48,48,8,'4567123412340048','Priyanka R','2024-04-25','2029-04-24','369','Active',300000),
(49,49,6,'4567123412340049','Karthikeyan P','2024-04-27','2029-04-26','159','Active',100000),
(50,50,2,'4567123412340050','Anand V','2024-04-29','2029-04-28','357','Active',50000);

SELECT 
    COUNT(*) AS total_cards
FROM
    cards;

SELECT * FROM  cards;
 

CREATE TABLE nominees (
    nominee_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    nominee_name VARCHAR(100) NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    mobile_no VARCHAR(15),
    aadhaar_no VARCHAR(12) UNIQUE,
    address VARCHAR(255),
    nominee_percentage DECIMAL(5 , 2 ) DEFAULT 100,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id)
);


SELECT 
    *
FROM
    CARDS;

CREATE TABLE nominees (
    nominee_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    nominee_name VARCHAR(100) NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    mobile_no VARCHAR(15),
    aadhaar_no VARCHAR(12) UNIQUE,
    address VARCHAR(255),
    nominee_percentage DECIMAL(5 , 2 ) DEFAULT 100,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id)
);
DESC nominees;

INSERT INTO nominees
(customer_id,account_id,nominee_name,relationship,gender,dob,mobile_no,aadhaar_no,address,nominee_percentage)
VALUES
(1,1,'Lakshmi','Mother','Female','1972-05-12','9200000001','987654321001','Chennai',100),
(2,2,'Ravi','Father','Male','1968-07-20','9200000002','987654321002','Coimbatore',100),
(3,3,'Priya','Wife','Female','1998-08-15','9200000003','987654321003','Madurai',100),
(4,4,'Kumar','Father','Male','1970-01-10','9200000004','987654321004','Trichy',100),
(5,5,'Meena','Mother','Female','1975-11-18','9200000005','987654321005','Salem',100),
(6,6,'Anitha','Sister','Female','2000-04-22','9200000006','987654321006','Vellore',100),
(7,7,'Suresh','Brother','Male','1995-06-14','9200000007','987654321007','Tirunelveli',100),
(8,8,'Divya','Mother','Female','1976-09-05','9200000008','987654321008','Erode',100),
(9,9,'Ramesh','Father','Male','1969-03-18','9200000009','987654321009','Thanjavur',100),
(10,10,'Priya','Mother','Female','1974-12-11','9200000010','987654321010','Kanchipuram',100),
(11,11,'Kavitha','Mother','Female','1978-04-10','9200000011','987654321011','Bengaluru',100),
(12,12,'Mohan','Father','Male','1967-06-25','9200000012','987654321012','Hyderabad',100),
(13,13,'Anjali','Sister','Female','1999-08-18','9200000013','987654321013','Mumbai',100),
(14,14,'Rakesh','Brother','Male','1996-05-09','9200000014','987654321014','Delhi',100),
(15,15,'Geetha','Mother','Female','1973-10-30','9200000015','987654321015','Pune',100),
(16,16,'Hari','Father','Male','1968-09-17','9200000016','987654321016','Kochi',100),
(17,17,'Swathi','Sister','Female','1998-07-08','9200000017','987654321017','Vijayawada',100),
(18,18,'Prakash','Brother','Male','1994-02-20','9200000018','987654321018','Mysuru',100),
(19,19,'Deepa','Mother','Female','1975-11-02','9200000019','987654321019','Visakhapatnam',100),
(20,20,'Arun','Father','Male','1966-03-12','9200000020','987654321020','Puducherry',100),
(21,21,'Lakshmi','Mother','Female','1972-01-15','9200000021','987654321021','Tiruppur',100),
(22,22,'Ravi','Father','Male','1969-07-22','9200000022','987654321022','Hosur',100),
(23,23,'Meena','Mother','Female','1974-06-14','9200000023','987654321023','Karur',100),
(24,24,'Suresh','Brother','Male','1995-09-28','9200000024','987654321024','Namakkal',100),
(25,25,'Anitha','Wife','Female','1998-12-05','9200000025','987654321025','Cuddalore',100),
(26,26,'Harish Kumar','Brother','Male','1995-04-18','9200000026','987654321026','Thoothukudi',100),
(27,27,'Nisha Priya','Sister','Female','1998-07-15','9200000027','987654321027','Dindigul',100),
(28,28,'Vignesh R','Brother','Male','1994-05-20','9200000028','987654321028','Sivakasi',100),
(29,29,'Keerthana S','Sister','Female','1999-09-11','9200000029','987654321029','Virudhunagar',100),
(30,30,'Mohan Raj','Father','Male','1969-12-08','9200000030','987654321030','Kumbakonam',100),
(31,31,'Preethi K','Mother','Female','1973-06-14','9200000031','987654321031','Nagapattinam',100),
(32,32,'Aravind M','Brother','Male','1993-02-17','9200000032','987654321032','Mayiladuthurai',100),
(33,33,'Sathish P','Father','Male','1968-11-24','9200000033','987654321033','Pollachi',100),
(34,34,'Monika R','Sister','Female','1998-03-30','9200000034','987654321034','Ooty',100),
(35,35,'Kavin S','Brother','Male','1995-10-18','9200000035','987654321035','Tenkasi',100),
(36,36,'Janani M','Mother','Female','1975-08-25','9200000036','987654321036','Dharmapuri',100),
(37,37,'Saravanan K','Father','Male','1967-04-16','9200000037','987654321037','Krishnagiri',100),
(38,38,'Deepika R','Sister','Female','1997-07-28','9200000038','987654321038','Ariyalur',100),
(39,39,'Naveen P','Brother','Male','1994-05-19','9200000039','987654321039','Perambalur',100),
(40,40,'Aarthi S','Mother','Female','1972-09-09','9200000040','987654321040','Ramanathapuram',100),
(41,41,'Ragul M','Brother','Male','1993-12-15','9200000041','987654321041','Karaikudi',100),
(42,42,'Swathi K','Sister','Female','1998-04-22','9200000042','987654321042','Nagercoil',100),
(43,43,'Dinesh R','Father','Male','1969-07-07','9200000043','987654321043','Chengalpattu',100),
(44,44,'Gayathri P','Mother','Female','1974-02-10','9200000044','987654321044','Tambaram',100),
(45,45,'Vinoth S','Brother','Male','1995-11-12','9200000045','987654321045','Chennai',100),
(46,46,'Shalini M','Sister','Female','1998-08-08','9200000046','987654321046','Chennai',100),
(47,47,'Bharath K','Father','Male','1968-01-25','9200000047','987654321047','Chennai',100),
(48,48,'Priyanka R','Mother','Female','1973-03-17','9200000048','987654321048','Chennai',100),
(49,49,'Karthikeyan P','Brother','Male','1994-06-21','9200000049','987654321049','Chennai',100),
(50,50,'Anand V','Father','Male','1967-10-05','9200000050','987654321050','Chennai',100);

SELECT 
    *
FROM
    NOMINEES;


SELECT 
    COUNT(*) AS total_nominees
FROM
    nominees;


CREATE TABLE fixed_deposits (
    fd_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT NOT NULL,
    fd_account_number BIGINT UNIQUE NOT NULL,
    deposit_amount DECIMAL(15 , 2 ) NOT NULL,
    interest_rate DECIMAL(5 , 2 ) NOT NULL,
    tenure_months INT NOT NULL,
    maturity_amount DECIMAL(15 , 2 ) NOT NULL,
    opening_date DATE NOT NULL,
    maturity_date DATE NOT NULL,
    nominee_name VARCHAR(100),
    status ENUM('Active', 'Matured', 'Closed') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id)
);

DESC fixed_deposits;


INSERT INTO fixed_deposits
(customer_id,account_id,fd_account_number,deposit_amount,interest_rate,tenure_months,maturity_amount,opening_date,maturity_date,nominee_name,status)
VALUES
(1,1,900000000001,100000,7.25,12,107250,'2024-01-10','2025-01-10','Lakshmi','Active'),
(2,2,900000000002,150000,7.50,24,172500,'2024-01-15','2026-01-15','Ravi','Active'),
(3,3,900000000003,200000,7.75,36,246500,'2024-01-20','2027-01-20','Priya','Active'),
(4,4,900000000004,50000,7.00,12,53500,'2024-01-25','2025-01-25','Kumar','Active'),
(5,5,900000000005,300000,8.00,60,420000,'2024-02-01','2029-02-01','Meena','Active'),
(6,6,900000000006,80000,7.25,24,91600,'2024-02-05','2026-02-05','Anitha','Active'),
(7,7,900000000007,120000,7.50,36,147000,'2024-02-10','2027-02-10','Suresh','Active'),
(8,8,900000000008,250000,8.00,48,330000,'2024-02-15','2028-02-15','Divya','Active'),
(9,9,900000000009,175000,7.75,24,202125,'2024-02-20','2026-02-20','Ramesh','Active'),
(10,10,900000000010,90000,7.00,12,96300,'2024-02-25','2025-02-25','Priya','Active'),
(11,11,900000000011,110000,7.25,12,117975,'2024-03-01','2025-03-01','Kavitha','Active'),
(12,12,900000000012,140000,7.50,24,161000,'2024-03-05','2026-03-05','Mohan','Active'),
(13,13,900000000013,220000,7.75,36,271150,'2024-03-10','2027-03-10','Anjali','Active'),
(14,14,900000000014,60000,7.00,12,64200,'2024-03-15','2025-03-15','Rakesh','Active'),
(15,15,900000000015,350000,8.00,60,490000,'2024-03-20','2029-03-20','Geetha','Active'),
(16,16,900000000016,95000,7.25,24,108775,'2024-03-25','2026-03-25','Hari','Active'),
(17,17,900000000017,160000,7.50,36,196000,'2024-04-01','2027-04-01','Swathi','Active'),
(18,18,900000000018,270000,8.00,48,356400,'2024-04-05','2028-04-05','Prakash','Active'),
(19,19,900000000019,180000,7.75,24,207900,'2024-04-10','2026-04-10','Deepa','Active'),
(20,20,900000000020,100000,7.00,12,107000,'2024-04-15','2025-04-15','Arun','Active'),
(21,21,900000000021,125000,7.25,12,134063,'2024-04-20','2025-04-20','Lakshmi','Active'),
(22,22,900000000022,155000,7.50,24,178250,'2024-04-25','2026-04-25','Ravi','Active'),
(23,23,900000000023,210000,7.75,36,258825,'2024-05-01','2027-05-01','Meena','Active'),
(24,24,900000000024,70000,7.00,12,74900,'2024-05-05','2025-05-05','Suresh','Active'),
(25,25,900000000025,320000,8.00,60,448000,'2024-05-10','2029-05-10','Anitha','Active'),
(26,26,900000000026,85000,7.25,12,91163,'2024-05-15','2025-05-15','Harish Kumar','Active'),
(27,27,900000000027,145000,7.50,24,166750,'2024-05-20','2026-05-20','Nisha Priya','Active'),
(28,28,900000000028,230000,7.75,36,283475,'2024-05-25','2027-05-25','Vignesh R','Active'),
(29,29,900000000029,75000,7.00,12,80250,'2024-06-01','2025-06-01','Keerthana S','Active'),
(30,30,900000000030,340000,8.00,60,476000,'2024-06-05','2029-06-05','Mohan Raj','Active'),
(31,31,900000000031,90000,7.25,24,103050,'2024-06-10','2026-06-10','Preethi K','Active'),
(32,32,900000000032,170000,7.50,36,208250,'2024-06-15','2027-06-15','Aravind M','Active'),
(33,33,900000000033,280000,8.00,48,369600,'2024-06-20','2028-06-20','Sathish P','Active'),
(34,34,900000000034,185000,7.75,24,213675,'2024-06-25','2026-06-25','Monika R','Active'),
(35,35,900000000035,95000,7.00,12,101650,'2024-07-01','2025-07-01','Kavin S','Active'),
(36,36,900000000036,130000,7.25,12,139425,'2024-07-05','2025-07-05','Janani M','Active'),
(37,37,900000000037,160000,7.50,24,184000,'2024-07-10','2026-07-10','Saravanan K','Active'),
(38,38,900000000038,240000,7.75,36,295800,'2024-07-15','2027-07-15','Deepika R','Active'),
(39,39,900000000039,80000,7.00,12,85600,'2024-07-20','2025-07-20','Naveen P','Active'),
(40,40,900000000040,360000,8.00,60,504000,'2024-07-25','2029-07-25','Aarthi S','Active'),
(41,41,900000000041,100000,7.25,24,114500,'2024-08-01','2026-08-01','Ragul M','Active'),
(42,42,900000000042,180000,7.50,36,220500,'2024-08-05','2027-08-05','Swathi K','Active'),
(43,43,900000000043,290000,8.00,48,382800,'2024-08-10','2028-08-10','Dinesh R','Active'),
(44,44,900000000044,195000,7.75,24,225225,'2024-08-15','2026-08-15','Gayathri P','Active'),
(45,45,900000000045,105000,7.00,12,112350,'2024-08-20','2025-08-20','Vinoth S','Active'),
(46,46,900000000046,140000,7.25,12,150150,'2024-08-25','2025-08-25','Shalini M','Active'),
(47,47,900000000047,190000,7.50,24,218500,'2024-09-01','2026-09-01','Bharath K','Active'),
(48,48,900000000048,250000,7.75,36,308125,'2024-09-05','2027-09-05','Priyanka R','Active'),
(49,49,900000000049,85000,7.00,12,90950,'2024-09-10','2025-09-10','Karthikeyan P','Active'),
(50,50,900000000050,380000,8.00,60,532000,'2024-09-15','2029-09-15','Anand V','Active');

SELECT 
    *
FROM
    fixed_deposits;


SELECT 
    COUNT(*) AS total_fixed_deposits
FROM
    fixed_deposits;


CREATE TABLE audit_logs (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    action_type VARCHAR(100) NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    record_id INT NOT NULL,
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),
    device_name VARCHAR(100),
    remarks VARCHAR(255),
    FOREIGN KEY (user_id)
        REFERENCES users (user_id)
);

DESC audit_logs;


INSERT INTO audit_logs
(user_id,action_type,table_name,record_id,action_time,ip_address,device_name,remarks)
VALUES
(1,'INSERT','customers',1,'2024-01-10 09:00:00','192.168.1.1','Desktop','Customer created'),
(2,'UPDATE','accounts',2,'2024-01-10 09:10:00','192.168.1.2','Laptop','Balance updated'),
(3,'INSERT','transactions',3,'2024-01-10 09:20:00','192.168.1.3','Desktop','Transaction added'),
(4,'DELETE','beneficiaries',4,'2024-01-10 09:30:00','192.168.1.4','Mobile','Beneficiary removed'),
(5,'UPDATE','loans',5,'2024-01-10 09:40:00','192.168.1.5','Laptop','Loan approved'),
(6,'INSERT','cards',6,'2024-01-10 09:50:00','192.168.1.6','Desktop','Card issued'),
(7,'UPDATE','loan_payments',7,'2024-01-10 10:00:00','192.168.1.7','Mobile','EMI updated'),
(8,'INSERT','fixed_deposits',8,'2024-01-10 10:10:00','192.168.1.8','Desktop','FD created'),
(9,'UPDATE','users',9,'2024-01-10 10:20:00','192.168.1.9','Laptop','Password changed'),
(10,'INSERT','employees',10,'2024-01-10 10:30:00','192.168.1.10','Desktop','Employee added'),
(11,'UPDATE','customers',11,'2024-01-10 10:40:00','192.168.1.11','Laptop','KYC updated'),
(12,'INSERT','accounts',12,'2024-01-10 10:50:00','192.168.1.12','Desktop','Account opened'),
(13,'UPDATE','transactions',13,'2024-01-10 11:00:00','192.168.1.13','Mobile','Transaction verified'),
(14,'INSERT','beneficiaries',14,'2024-01-10 11:10:00','192.168.1.14','Laptop','Beneficiary added'),
(15,'UPDATE','cards',15,'2024-01-10 11:20:00','192.168.1.15','Desktop','Card activated'),
(16,'INSERT','loan_payments',16,'2024-01-10 11:30:00','192.168.1.16','Desktop','EMI received'),
(17,'UPDATE','fixed_deposits',17,'2024-01-10 11:40:00','192.168.1.17','Laptop','FD renewed'),
(18,'INSERT','loans',18,'2024-01-10 11:50:00','192.168.1.18','Mobile','Loan created'),
(19,'UPDATE','employees',19,'2024-01-10 12:00:00','192.168.1.19','Desktop','Salary updated'),
(20,'INSERT','users',20,'2024-01-10 12:10:00','192.168.1.20','Laptop','User created'),
(21,'UPDATE','customers',21,'2024-01-10 12:20:00','192.168.1.21','Desktop','Address updated'),
(22,'INSERT','accounts',22,'2024-01-10 12:30:00','192.168.1.22','Mobile','Savings account opened'),
(23,'UPDATE','transactions',23,'2024-01-10 12:40:00','192.168.1.23','Laptop','Transaction approved'),
(24,'INSERT','cards',24,'2024-01-10 12:50:00','192.168.1.24','Desktop','Debit card issued'),
(25,'UPDATE','loan_payments',25,'2024-01-10 13:00:00','192.168.1.25','Laptop','EMI status updated'),
(26,'INSERT','customers',26,'2024-01-10 13:10:00','192.168.1.26','Desktop','Customer created'),
(27,'UPDATE','accounts',27,'2024-01-10 13:20:00','192.168.1.27','Laptop','Balance updated'),
(28,'INSERT','transactions',28,'2024-01-10 13:30:00','192.168.1.28','Desktop','Transaction completed'),
(29,'DELETE','beneficiaries',29,'2024-01-10 13:40:00','192.168.1.29','Mobile','Beneficiary deleted'),
(30,'UPDATE','loans',30,'2024-01-10 13:50:00','192.168.1.30','Laptop','Loan approved'),
(31,'INSERT','cards',31,'2024-01-10 14:00:00','192.168.1.31','Desktop','Card issued'),
(32,'UPDATE','loan_payments',32,'2024-01-10 14:10:00','192.168.1.32','Mobile','EMI paid'),
(33,'INSERT','fixed_deposits',33,'2024-01-10 14:20:00','192.168.1.33','Desktop','FD opened'),
(34,'UPDATE','users',34,'2024-01-10 14:30:00','192.168.1.34','Laptop','Password updated'),
(35,'INSERT','employees',35,'2024-01-10 14:40:00','192.168.1.35','Desktop','Employee registered'),
(36,'UPDATE','customers',36,'2024-01-10 14:50:00','192.168.1.36','Laptop','Customer KYC updated'),
(37,'INSERT','accounts',37,'2024-01-10 15:00:00','192.168.1.37','Desktop','Current account opened'),
(38,'UPDATE','transactions',38,'2024-01-10 15:10:00','192.168.1.38','Mobile','Transaction verified'),
(39,'INSERT','beneficiaries',39,'2024-01-10 15:20:00','192.168.1.39','Laptop','Beneficiary added'),
(40,'UPDATE','cards',40,'2024-01-10 15:30:00','192.168.1.40','Desktop','Card blocked'),
(41,'INSERT','loan_payments',41,'2024-01-10 15:40:00','192.168.1.41','Desktop','EMI payment received'),
(42,'UPDATE','fixed_deposits',42,'2024-01-10 15:50:00','192.168.1.42','Laptop','FD matured'),
(43,'INSERT','loans',43,'2024-01-10 16:00:00','192.168.1.43','Mobile','Loan application created'),
(44,'UPDATE','employees',44,'2024-01-10 16:10:00','192.168.1.44','Desktop','Employee designation updated'),
(45,'INSERT','users',45,'2024-01-10 16:20:00','192.168.1.45','Laptop','New user created'),
(46,'UPDATE','customers',46,'2024-01-10 16:30:00','192.168.1.46','Desktop','Mobile number updated'),
(47,'INSERT','accounts',47,'2024-01-10 16:40:00','192.168.1.47','Mobile','Salary account opened'),
(48,'UPDATE','transactions',48,'2024-01-10 16:50:00','192.168.1.48','Laptop','Transaction reversed'),
(49,'INSERT','cards',49,'2024-01-10 17:00:00','192.168.1.49','Desktop','Credit card issued'),
(50,'UPDATE','loan_payments',50,'2024-01-10 17:10:00','192.168.1.50','Laptop','EMI overdue updated');

SELECT 
    *
FROM
    audit_logs;
    
    CREATE TABLE notifications (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    notification_title VARCHAR(100) NOT NULL,
    notification_message VARCHAR(255) NOT NULL,
    notification_type VARCHAR(50),
    notification_status ENUM('Sent','Pending','Read') DEFAULT 'Pending',
    sent_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

desc notifications;



INSERT INTO notifications
(customer_id, notification_title, notification_message, notification_type, notification_status, sent_date)
VALUES
(1,'Transaction Alert','Amount credited successfully.','SMS','Sent','2024-06-01 09:00:00'),
(2,'Transaction Alert','Amount debited successfully.','SMS','Read','2024-06-02 09:15:00'),
(3,'Loan Reminder','Your EMI is due tomorrow.','Email','Sent','2024-06-03 10:00:00'),
(4,'FD Maturity','Your Fixed Deposit will mature soon.','Email','Pending','2024-06-04 10:30:00'),
(5,'Card Alert','Your debit card was used.','SMS','Sent','2024-06-05 11:00:00'),
(6,'Welcome','Welcome to our Banking System.','Email','Read','2024-06-06 11:15:00'),
(7,'Balance Alert','Your account balance is low.','SMS','Sent','2024-06-07 12:00:00'),
(8,'Cheque Alert','Cheque book dispatched.','SMS','Pending','2024-06-08 12:30:00'),
(9,'KYC Reminder','Please update your KYC.','Email','Sent','2024-06-09 01:00:00'),
(10,'Transaction Alert','UPI payment successful.','SMS','Read','2024-06-10 01:30:00'),
(11,'Transaction Alert','Cash deposited successfully.','SMS','Sent','2024-06-11 09:00:00'),
(12,'Loan Reminder','EMI payment pending.','Email','Pending','2024-06-12 09:30:00'),
(13,'FD Alert','Interest credited successfully.','Email','Sent','2024-06-13 10:00:00'),
(14,'Card Alert','Credit card bill generated.','SMS','Read','2024-06-14 10:30:00'),
(15,'Welcome','Thank you for banking with us.','Email','Sent','2024-06-15 11:00:00'),
(16,'Balance Alert','Salary credited successfully.','SMS','Read','2024-06-16 11:30:00'),
(17,'Security Alert','Password changed successfully.','Email','Sent','2024-06-17 12:00:00'),
(18,'Transaction Alert','Fund transfer completed.','SMS','Pending','2024-06-18 12:30:00'),
(19,'Loan Reminder','Loan approved successfully.','Email','Sent','2024-06-19 01:00:00'),
(20,'Card Alert','New debit card issued.','SMS','Read','2024-06-20 01:30:00'),
(21,'Transaction Alert','Amount credited successfully.','SMS','Sent','2024-06-21 09:00:00'),
(22,'Transaction Alert','Amount debited successfully.','SMS','Read','2024-06-22 09:15:00'),
(23,'Loan Reminder','Your EMI is due tomorrow.','Email','Pending','2024-06-23 10:00:00'),
(24,'FD Maturity','Your FD has matured.','Email','Sent','2024-06-24 10:30:00'),
(25,'Card Alert','Card payment successful.','SMS','Read','2024-06-25 11:00:00'),
(26,'Welcome','New banking service activated.','Email','Sent','2024-06-26 11:15:00'),
(27,'Balance Alert','Minimum balance alert.','SMS','Pending','2024-06-27 12:00:00'),
(28,'Cheque Alert','Cheque cleared successfully.','SMS','Sent','2024-06-28 12:30:00'),
(29,'KYC Reminder','KYC verified successfully.','Email','Read','2024-06-29 01:00:00'),
(30,'Transaction Alert','IMPS transfer successful.','SMS','Sent','2024-06-30 01:30:00'),
(31,'Transaction Alert','Amount credited successfully.','SMS','Read','2024-07-01 09:00:00'),
(32,'Loan Reminder','EMI received successfully.','Email','Sent','2024-07-02 09:30:00'),
(33,'FD Alert','FD account created.','Email','Pending','2024-07-03 10:00:00'),
(34,'Card Alert','Credit card activated.','SMS','Sent','2024-07-04 10:30:00'),
(35,'Welcome','Internet Banking activated.','Email','Read','2024-07-05 11:00:00'),
(36,'Balance Alert','Balance updated successfully.','SMS','Sent','2024-07-06 11:30:00'),
(37,'Security Alert','OTP verified successfully.','Email','Read','2024-07-07 12:00:00'),
(38,'Transaction Alert','NEFT transfer completed.','SMS','Sent','2024-07-08 12:30:00'),
(39,'Loan Reminder','Loan closed successfully.','Email','Pending','2024-07-09 01:00:00'),
(40,'Card Alert','Card blocked successfully.','SMS','Sent','2024-07-10 01:30:00'),
(41,'Transaction Alert','Amount credited successfully.','SMS','Read','2024-07-11 09:00:00'),
(42,'Balance Alert','Low balance detected.','SMS','Sent','2024-07-12 09:30:00'),
(43,'Cheque Alert','Cheque returned.','SMS','Pending','2024-07-13 10:00:00'),
(44,'FD Alert','FD interest credited.','Email','Sent','2024-07-14 10:30:00'),
(45,'Card Alert','ATM withdrawal successful.','SMS','Read','2024-07-15 11:00:00'),
(46,'Security Alert','Login from new device.','Email','Sent','2024-07-16 11:30:00'),
(47,'Transaction Alert','RTGS completed successfully.','SMS','Pending','2024-07-17 12:00:00'),
(48,'Loan Reminder','Next EMI due in 5 days.','Email','Sent','2024-07-18 12:30:00'),
(49,'Welcome','Thank you for choosing our bank.','Email','Read','2024-07-19 01:00:00'),
(50,'Balance Alert','Monthly account statement available.','Email','Sent','2024-07-20 01:30:00');

select * from notifications;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_code VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender ENUM('Male','Female','Other') NOT NULL,
    designation VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    mobile_no VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    branch_id INT NOT NULL,
    joining_date DATE,
    status ENUM('Active','Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);



INSERT INTO employees
(employee_code,first_name,last_name,gender,designation,salary,mobile_no,email,branch_id,joining_date,status)
VALUES
('EMP001','Arun','Kumar','Male','Branch Manager',75000,'9001000001','emp1@bank.com',1,'2022-01-10','Active'),
('EMP002','Priya','R','Female','Cashier',35000,'9001000002','emp2@bank.com',2,'2022-01-11','Active'),
('EMP003','Karthik','S','Male','Loan Officer',45000,'9001000003','emp3@bank.com',3,'2022-01-12','Active'),
('EMP004','Divya','M','Female','Customer Service Executive',32000,'9001000004','emp4@bank.com',4,'2022-01-13','Active'),
('EMP005','Suresh','B','Male','Relationship Manager',55000,'9001000005','emp5@bank.com',5,'2022-01-14','Active'),
('EMP006','Lavanya','P','Female','Cashier',35000,'9001000006','emp6@bank.com',6,'2022-01-15','Active'),
('EMP007','Rahul','Sharma','Male','IT Administrator',65000,'9001000007','emp7@bank.com',7,'2022-01-16','Active'),
('EMP008','Anitha','K','Female','HR Executive',40000,'9001000008','emp8@bank.com',8,'2022-01-17','Active'),
('EMP009','Ramesh','R','Male','Security Officer',30000,'9001000009','emp9@bank.com',9,'2022-01-18','Active'),
('EMP010','Meena','T','Female','Audit Officer',60000,'9001000010','emp10@bank.com',10,'2022-01-19','Active'),
('EMP011','Vignesh','Kumar','Male','Cashier',35000,'9001000011','emp11@bank.com',11,'2022-01-20','Active'),
('EMP012','Sneha','Reddy','Female','Loan Officer',45000,'9001000012','emp12@bank.com',12,'2022-01-21','Active'),
('EMP013','Ajay','Sharma','Male','Branch Manager',75000,'9001000013','emp13@bank.com',13,'2022-01-22','Active'),
('EMP014','Pooja','Singh','Female','Customer Service Executive',32000,'9001000014','emp14@bank.com',14,'2022-01-23','Active'),
('EMP015','Hari','Prasad','Male','Relationship Manager',55000,'9001000015','emp15@bank.com',15,'2022-01-24','Active'),
('EMP016','Keerthana','M','Female','Cashier',35000,'9001000016','emp16@bank.com',16,'2022-01-25','Active'),
('EMP017','Prakash','R','Male','IT Administrator',65000,'9001000017','emp17@bank.com',17,'2022-01-26','Active'),
('EMP018','Swathi','K','Female','HR Executive',40000,'9001000018','emp18@bank.com',18,'2022-01-27','Active'),
('EMP019','Bharath','S','Male','Security Officer',30000,'9001000019','emp19@bank.com',19,'2022-01-28','Active'),
('EMP020','Janani','P','Female','Audit Officer',60000,'9001000020','emp20@bank.com',20,'2022-01-29','Active'),
('EMP021','Kavin','Raj','Male','Cashier',35000,'9001000021','emp21@bank.com',21,'2022-02-01','Active'),
('EMP022','Nandhini','S','Female','Loan Officer',45000,'9001000022','emp22@bank.com',22,'2022-02-02','Active'),
('EMP023','Mohan','Kumar','Male','Branch Manager',75000,'9001000023','emp23@bank.com',23,'2022-02-03','Active'),
('EMP024','Deepika','R','Female','Customer Service Executive',32000,'9001000024','emp24@bank.com',24,'2022-02-04','Active'),
('EMP025','Saravanan','M','Male','Relationship Manager',55000,'9001000025','emp25@bank.com',25,'2022-02-05','Active'),
('EMP026','Harish','Kumar','Male','Cashier',35000,'9001000026','emp26@bank.com',26,'2022-02-06','Active'),
('EMP027','Nisha','Priya','Female','IT Administrator',65000,'9001000027','emp27@bank.com',27,'2022-02-07','Active'),
('EMP028','Vignesh','R','Male','HR Executive',40000,'9001000028','emp28@bank.com',28,'2022-02-08','Active'),
('EMP029','Keerthana','S','Female','Security Officer',30000,'9001000029','emp29@bank.com',29,'2022-02-09','Active'),
('EMP030','Mohan','Raj','Male','Audit Officer',60000,'9001000030','emp30@bank.com',30,'2022-02-10','Active'),
('EMP031','Preethi','K','Female','Cashier',35000,'9001000031','emp31@bank.com',31,'2022-02-11','Active'),
('EMP032','Aravind','M','Male','Loan Officer',45000,'9001000032','emp32@bank.com',32,'2022-02-12','Active'),
('EMP033','Sathish','P','Male','Branch Manager',75000,'9001000033','emp33@bank.com',33,'2022-02-13','Active'),
('EMP034','Monika','R','Female','Customer Service Executive',32000,'9001000034','emp34@bank.com',34,'2022-02-14','Active'),
('EMP035','Kavin','S','Male','Relationship Manager',55000,'9001000035','emp35@bank.com',35,'2022-02-15','Active'),
('EMP036','Janani','M','Female','Cashier',35000,'9001000036','emp36@bank.com',36,'2022-02-16','Active'),
('EMP037','Saravanan','K','Male','IT Administrator',65000,'9001000037','emp37@bank.com',37,'2022-02-17','Active'),
('EMP038','Deepika','R','Female','HR Executive',40000,'9001000038','emp38@bank.com',38,'2022-02-18','Active'),
('EMP039','Naveen','P','Male','Security Officer',30000,'9001000039','emp39@bank.com',39,'2022-02-19','Active'),
('EMP040','Aarthi','S','Female','Audit Officer',60000,'9001000040','emp40@bank.com',40,'2022-02-20','Active'),
('EMP041','Ragul','M','Male','Cashier',35000,'9001000041','emp41@bank.com',41,'2022-02-21','Active'),
('EMP042','Swathi','K','Female','Loan Officer',45000,'9001000042','emp42@bank.com',42,'2022-02-22','Active'),
('EMP043','Dinesh','R','Male','Branch Manager',75000,'9001000043','emp43@bank.com',43,'2022-02-23','Active'),
('EMP044','Gayathri','P','Female','Customer Service Executive',32000,'9001000044','emp44@bank.com',44,'2022-02-24','Active'),
('EMP045','Vinoth','S','Male','Relationship Manager',55000,'9001000045','emp45@bank.com',45,'2022-02-25','Active'),
('EMP046','Shalini','M','Female','Cashier',35000,'9001000046','emp46@bank.com',46,'2022-02-26','Active'),
('EMP047','Bharath','K','Male','IT Administrator',65000,'9001000047','emp47@bank.com',47,'2022-02-27','Active'),
('EMP048','Priyanka','R','Female','HR Executive',40000,'9001000048','emp48@bank.com',48,'2022-02-28','Active'),
('EMP049','Karthikeyan','P','Male','Security Officer',30000,'9001000049','emp49@bank.com',49,'2022-03-01','Active'),
('EMP050','Anand','V','Male','Branch Manager',75000,'9001000050','emp50@bank.com',50,'2022-03-02','Active');

-- RECORD COUNT QUERIES

SELECT 
    COUNT(*)
FROM
    roles;
SELECT 
    COUNT(*)
FROM
    branches;
SELECT 
    COUNT(*)
FROM
    account_types;
SELECT 
    COUNT(*)
FROM
    transaction_types;
SELECT 
    COUNT(*)
FROM
    loan_types;
SELECT 
    COUNT(*)
FROM
    card_types;
SELECT 
    COUNT(*)
FROM
    bank_services;
SELECT 
    COUNT(*)
FROM
    payment_modes;
SELECT 
    COUNT(*)
FROM
    employees;
SELECT 
    COUNT(*)
FROM
    users;
SELECT 
    COUNT(*)
FROM
    customers;
SELECT 
    COUNT(*)
FROM
    accounts;
SELECT 
    COUNT(*)
FROM
    beneficiaries;
SELECT 
    COUNT(*)
FROM
    transactions;
SELECT 
    COUNT(*)
FROM
    loans;
SELECT 
    COUNT(*)
FROM
    loan_payments;
SELECT 
    COUNT(*)
FROM
    cards;
SELECT 
    COUNT(*)
FROM
    nominees;
SELECT 
    COUNT(*)
FROM
    fixed_deposits;
SELECT 
    COUNT(*)
FROM
    audit_logs;


SELECT 
    COUNT(*) AS total_audit_logs
FROM
    audit_logs;



SHOW TABLES;
SELECT COUNT(*) FROM branches;
SELECT COUNT(*) FROM account_types;
SELECT COUNT(*) FROM transaction_types;
SELECT COUNT(*) FROM loan_types;
SELECT COUNT(*) FROM card_types;
SELECT COUNT(*) FROM bank_services;
SELECT COUNT(*) FROM payment_modes;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM beneficiaries;
SELECT COUNT(*) FROM transactions;
SELECT COUNT(*) FROM loans;

SHOW TABLES;

-- VIEWS

CREATE VIEW vw_customer_transactions AS
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        a.account_number,
        t.transaction_reference,
        t.amount,
        t.transaction_date
    FROM
        customers c
            JOIN
        accounts a ON c.customer_id = a.customer_id
            JOIN
        transactions t ON a.account_id = t.account_id;


SELECT 
    *
FROM
    vw_customer_accounts;

SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';


SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

SHOW FULL TABLES;




SELECT 
    *
FROM
    vw_customer_accounts;
SELECT 
    *
FROM
    vw_customer_transactions;

SHOW FULL TABLES WHERE TABLE_TYPE='VIEW';
SHOW TABLES;
SELECT 
    *
FROM
    vw_loan_details;

SHOW FULL TABLES WHERE TABLE_TYPE='VIEW';


CREATE VIEW vw_loan_details AS
    SELECT 
        l.loan_id,
        c.customer_id,
        c.first_name,
        c.last_name,
        a.account_number,
        lt.loan_type_name,
        l.loan_amount,
        l.interest_rate,
        l.loan_status
    FROM
        loans l
            JOIN
        customers c ON l.customer_id = c.customer_id
            JOIN
        accounts a ON l.account_id = a.account_id
            JOIN
        loan_types lt ON l.loan_type_id = lt.loan_type_id;

SELECT 
    *
FROM
    vw_loan_details;
SELECT 
    *
FROM
    vw_card_details;


CREATE VIEW vw_card_details AS
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        a.account_number,
        cd.card_number,
        ct.card_type_name,
        cd.card_status,
        cd.issue_date,
        cd.expiry_date
    FROM
        cards cd
            JOIN
        customers c ON cd.customer_id = c.customer_id
            JOIN
        accounts a ON cd.account_id = a.account_id
            JOIN
        card_types ct ON cd.card_type_id = ct.card_type_id;

SELECT 
    *
FROM
    vw_card_details;


SELECT 
    *
FROM
    vw_fixed_deposits;

CREATE VIEW vw_fixed_deposits AS
    SELECT 
        fd.fd_id,
        c.customer_id,
        c.first_name,
        c.last_name,
        a.account_number,
        fd.fd_account_number,
        fd.deposit_amount,
        fd.interest_rate,
        fd.tenure_months,
        fd.maturity_amount,
        fd.opening_date,
        fd.maturity_date,
        fd.status
    FROM
        fixed_deposits fd
            JOIN
        customers c ON fd.customer_id = c.customer_id
            JOIN
        accounts a ON fd.account_id = a.account_id;

SELECT 
    *
FROM
    vw_fixed_deposits;

SELECT DATABASE();


SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

#Get Customer Account Details

-- STORED PROCEDURES

DELIMITER //

CREATE PROCEDURE GetCustomerAccountDetails(IN p_customer_id INT)
BEGIN
    SELECT
        c.customer_id,
        CONCAT(c.first_name,' ',c.last_name) AS customer_name,
        a.account_number,
        at.account_type_name,
        a.balance,
        a.account_status,
        b.branch_name
    FROM customers c
    JOIN accounts a
        ON c.customer_id = a.customer_id
    JOIN account_types at
        ON a.account_type_id = at.account_type_id
    JOIN branches b
        ON a.branch_id = b.branch_id
    WHERE c.customer_id = p_customer_id;
END //

DELIMITER ;

CALL GetCustomerAccountDetails(1);

SHOW PROCEDURE STATUS
WHERE Db = 'banking_database_db';



DELIMITER //

CREATE PROCEDURE GetEmployeesByBranch(IN p_branch_id INT)
BEGIN
    SELECT
        e.employee_id,
        e.employee_code,
        CONCAT(e.first_name,' ',e.last_name) AS employee_name,
        e.designation,
        e.salary,
        b.branch_name
    FROM employees e
    JOIN branches b
        ON e.branch_id = b.branch_id
    WHERE e.branch_id = p_branch_id;
END //

DELIMITER ;
SHOW TABLES;
SHOW TABLES LIKE '%employee%';

CALL GetEmployeesByBranch(1);




DELIMITER //

CREATE PROCEDURE GetAccountDetails(IN p_account_id INT)
BEGIN
    SELECT
        account_id,
        account_number,
        balance,
        account_status,
        opening_date
    FROM accounts
    WHERE account_id = p_account_id;
END //

DELIMITER ;

CALL GetAccountDetails(1);


-- FUNCTIONS

DELIMITER //

CREATE FUNCTION CalculateInterest(
    p_amount DECIMAL(10,2),
    p_rate DECIMAL(5,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN (p_amount * p_rate) / 100;
END //

DELIMITER ;

SELECT CALCULATEINTEREST(100000, 7.5);


DELIMITER //

CREATE FUNCTION CalculateMaturityAmount(
    p_amount DECIMAL(10,2),
    p_interest DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN p_amount + p_interest;
END //

DELIMITER ;

SELECT CALCULATEMATURITYAMOUNT(100000, 7500);


SHOW FUNCTION STATUS
WHERE Db='banking_database_db';

-- TRIGGERS

DELIMITER //

CREATE TRIGGER trg_transaction_audit
AFTER INSERT
ON transactions
FOR EACH ROW
BEGIN
    INSERT INTO audit_logs
    (
        user_id,
        action_type,
        table_name,
        record_id,
        action_time,
        ip_address,
        device_name,
        remarks
    )
    VALUES
    (
        1,
        'INSERT',
        'transactions',
        NEW.transaction_id,
        NOW(),
        '127.0.0.1',
        'MySQL Workbench',
        'Transaction inserted'
    );
END //

DELIMITER 


INSERT INTO transactions
(transaction_reference,account_id,transaction_type_id,amount,transaction_date,transaction_status,payment_mode_id)
VALUES
('TRG001',1,1,1000,NOW(),'Success',1);


SELECT 
    *
FROM
    audit_logs
ORDER BY audit_id DESC
LIMIT 5;

SHOW TRIGGERS;

-- JOINS

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_number,
    at.account_type_name,
    a.balance,
    a.account_status
FROM
    customers c
        JOIN
    accounts a ON c.customer_id = a.customer_id
        JOIN
    account_types at ON a.account_type_id = at.account_type_id;

SELECT 
    c.customer_id,
    c.first_name,
    a.account_number,
    b.branch_name,
    b.city
FROM
    customers c
        JOIN
    accounts a ON c.customer_id = a.customer_id
        JOIN
    branches b ON a.branch_id = b.branch_id;

SELECT 
    c.customer_id,
    c.first_name,
    a.account_number,
    t.transaction_reference,
    t.amount,
    t.transaction_status
FROM
    customers c
        JOIN
    accounts a ON c.customer_id = a.customer_id
        JOIN
    transactions t ON a.account_id = t.account_id;

SELECT 
    c.customer_id, c.first_name, l.loan_amount, l.loan_status
FROM
    customers c
        JOIN
    loans l ON c.customer_id = l.customer_id;


SELECT 
    c.customer_id,
    c.first_name,
    cd.card_number,
    ct.card_type_name
FROM
    customers c
        JOIN
    cards cd ON c.customer_id = cd.customer_id
        JOIN
    card_types ct ON cd.card_type_id = ct.card_type_id;



SELECT 
    a.account_number, b.branch_name, b.city, a.balance
FROM
    accounts a
        JOIN
    branches b ON a.branch_id = b.branch_id;


SELECT 
    a.account_number,
    at.account_type_name,
    a.balance,
    a.account_status
FROM
    accounts a
        JOIN
    account_types at ON a.account_type_id = at.account_type_id;


SELECT 
    t.transaction_reference,
    t.amount,
    pm.payment_mode_name,
    t.transaction_status
FROM
    transactions t
        JOIN
    payment_modes pm ON t.payment_mode_id = pm.payment_mode_id;


SELECT 
    l.loan_id,
    lt.loan_type_name,
    l.loan_amount,
    l.interest_rate,
    l.loan_status
FROM
    loans l
        JOIN
    loan_types lt ON l.loan_type_id = lt.loan_type_id;

SELECT 
    fd.fd_account_number,
    c.first_name,
    c.last_name,
    fd.deposit_amount,
    fd.maturity_amount
FROM
    fixed_deposits fd
        JOIN
    customers c ON fd.customer_id = c.customer_id;

DESC beneficiaries;


SELECT 
    c.customer_id,
    c.first_name,
    b.beneficiary_name,
    b.bank_name,
    b.account_number
FROM
    customers c
        JOIN
    beneficiaries b ON c.customer_id = b.customer_id;

SELECT 
    c.customer_id,
    c.first_name,
    b.beneficiary_name,
    b.beneficiary_bank_name,
    b.beneficiary_account_no
FROM
    customers c
        JOIN
    beneficiaries b ON c.customer_id = b.customer_id;


SELECT 
    fd.fd_account_number,
    c.first_name,
    c.last_name,
    fd.deposit_amount,
    fd.maturity_amount
FROM
    fixed_deposits fd
        JOIN
    customers c ON fd.customer_id = c.customer_id;


SELECT 
    cd.card_number, a.account_number, a.balance, cd.card_status
FROM
    cards cd
        JOIN
    accounts a ON cd.account_id = a.account_id;


SELECT 
    l.loan_id,
    c.first_name,
    l.loan_amount,
    l.loan_status,
    br.branch_name
FROM
    loans l
        JOIN
    customers c ON l.customer_id = c.customer_id
        JOIN
    accounts a ON l.account_id = a.account_id
        JOIN
    branches br ON a.branch_id = br.branch_id;


SELECT 
    t.transaction_reference,
    c.first_name,
    pm.payment_mode_name,
    t.amount,
    t.transaction_status
FROM
    transactions t
        JOIN
    accounts a ON t.account_id = a.account_id
        JOIN
    customers c ON a.customer_id = c.customer_id
        JOIN
    payment_modes pm ON t.payment_mode_id = pm.payment_mode_id;

-- INNER JOIN

SELECT
    c.customer_id,
    c.first_name,
    a.account_number,
    at.account_type_name,
    a.balance
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
INNER JOIN account_types at
ON a.account_type_id = at.account_type_id;

-- LEFT JOIN

SELECT
    c.customer_id,
    c.first_name,
    a.account_number,
    a.balance
FROM customers c
LEFT JOIN accounts a
ON c.customer_id = a.customer_id;

-- SELF JOIN

SELECT
    c1.customer_id,
    c1.first_name AS Customer1,
    c2.first_name AS Customer2,
    c1.city
FROM customers c1
INNER JOIN customers c2
ON c1.city = c2.city
AND c1.customer_id <> c2.customer_id;

-- FULL JOIN (USING UNION)

SELECT
    c.customer_id,
    c.first_name,
    a.account_number
FROM customers c
LEFT JOIN accounts a
ON c.customer_id = a.customer_id

UNION

SELECT
    c.customer_id,
    c.first_name,
    a.account_number
FROM customers c
RIGHT JOIN accounts a
ON c.customer_id = a.customer_id;


-- CASE STATEMENT

SELECT 
    account_number,
    balance,
    CASE
        WHEN balance >= 100000 THEN 'High Balance'
        WHEN balance >= 50000 THEN 'Medium Balance'
        ELSE 'Low Balance'
    END AS Balance_Status
FROM
    accounts;

SELECT 
    loan_id,
    loan_amount,
    loan_status,
    CASE
        WHEN loan_status = 'Approved' THEN 'Approved'
        WHEN loan_status = 'Pending' THEN 'Pending'
        ELSE 'Rejected'
    END AS Loan_Result
FROM
    loans;


SELECT 
    card_number,
    card_status,
    CASE
        WHEN card_status = 'Active' THEN 'Usable'
        ELSE 'Blocked'
    END AS Card_Result
FROM
    cards;

SELECT 
    transaction_reference,
    amount,
    CASE
        WHEN amount >= 100000 THEN 'High Value'
        WHEN amount >= 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Transaction_Type
FROM
    transactions;

SELECT 
    maturity_amount,
    status,
    CASE
        WHEN status = 'Active' THEN 'Running'
        ELSE 'Closed'
    END AS FD_Status
FROM
    fixed_deposits;
    
    -- AGGREGATE FUNCTIONS


SELECT 
    COUNT(*) AS Total_Customers
FROM
    customers;

SELECT 
    SUM(balance) AS Total_Balance
FROM
    accounts;


SELECT 
    AVG(balance) AS Average_Balance
FROM
    accounts;

SELECT 
    MAX(balance) AS Highest_Balance
FROM
    accounts;

SELECT 
    MIN(balance) AS Lowest_Balance
FROM
    accounts;

SELECT 
    account_status, COUNT(*) AS Total_Accounts
FROM
    accounts
GROUP BY account_status;

-- GROUP BY & HAVING

SELECT 
    branch_id, COUNT(*) AS Total_Accounts
FROM
    accounts
GROUP BY branch_id
HAVING COUNT(*) >= 2;

-- WINDOW FUNCTIONS

SELECT
account_number,
balance,
RANK() OVER(ORDER BY balance DESC) AS Balance_Rank
FROM accounts;

SELECT
    account_number,
    balance,
    ROW_NUMBER() OVER (ORDER BY balance DESC) AS rn
FROM accounts;


SELECT
    account_number,
    balance,
    DENSE_RANK() OVER (ORDER BY balance DESC) AS dr
FROM accounts;


SHOW TABLES;

SHOW FULL TABLES
WHERE TABLE_TYPE='VIEW';

SHOW PROCEDURE STATUS
WHERE Db='banking_database_db';

SHOW FUNCTION STATUS
WHERE Db='banking_database_db';


SHOW TRIGGERS;

-- SUBQUERIES

SELECT 
    *
FROM
    accounts
WHERE
    balance = (SELECT 
            MAX(balance)
        FROM
            accounts);


SELECT 
    c.customer_id, c.first_name, a.balance
FROM
    customers c
        JOIN
    accounts a ON c.customer_id = a.customer_id
WHERE
    a.balance > (SELECT 
            AVG(balance)
        FROM
            accounts);

SELECT 
    *
FROM
    loans
WHERE
    loan_amount > (SELECT 
            AVG(loan_amount)
        FROM
            loans);

SELECT 
    *
FROM
    branches
WHERE
    branch_id = (SELECT 
            branch_id
        FROM
            accounts
        GROUP BY branch_id
        ORDER BY COUNT(*) DESC
        LIMIT 1);


SELECT 
    customer_id, COUNT(*) AS TotalTransactions
FROM
    accounts a
        JOIN
    transactions t ON a.account_id = t.account_id
GROUP BY customer_id
HAVING COUNT(*) = (SELECT 
        MAX(TotalCount)
    FROM
        (SELECT 
            COUNT(*) AS TotalCount
        FROM
            accounts a
        JOIN transactions t ON a.account_id = t.account_id
        GROUP BY customer_id) x);

-- TRANSACTIONS (TCL)

START TRANSACTION;

UPDATE accounts 
SET 
    balance = balance - 5000
WHERE
    account_id = 1;

UPDATE accounts 
SET 
    balance = balance + 5000
WHERE
    account_id = 2;

SELECT 
    account_id, balance
FROM
    accounts
WHERE
    account_id IN (1 , 2);

COMMIT;


START TRANSACTION;

UPDATE accounts 
SET 
    balance = balance - 10000
WHERE
    account_id = 1;

ROLLBACK;


START TRANSACTION;

UPDATE accounts 
SET 
    balance = balance - 1000
WHERE
    account_id = 1;

SAVEPOINT sp1;

UPDATE accounts 
SET 
    balance = balance + 1000
WHERE
    account_id = 2;

ROLLBACK TO sp1;

COMMIT;

-- INDEXES

CREATE INDEX idx_customer_name
ON customers(first_name);


CREATE INDEX idx_balance
ON accounts(balance);

SHOW INDEX
FROM customers;

-- USER MANAGEMENT (DCL)

CREATE USER 'bankuser'@'localhost'
IDENTIFIED BY 'Bank@123';

GRANT SELECT,INSERT,UPDATE
ON banking_database_db.*
TO 'bankuser'@'localhost';

FLUSH PRIVILEGES;


REVOKE INSERT
ON banking_database_db.*
FROM 'bankuser'@'localhost';

SHOW GRANTS
FOR 'bankuser'@'localhost';

-- QUERY OPTIMIZATION

EXPLAIN
SELECT *
FROM accounts
WHERE balance>50000;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_number,
    a.balance
FROM
    customers c
        LEFT JOIN
    accounts a ON c.customer_id = a.customer_id;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_number,
    a.balance
FROM
    customers c
        RIGHT JOIN
    accounts a ON c.customer_id = a.customer_id;


SELECT 
    c1.customer_id,
    c1.first_name AS Customer1,
    c2.first_name AS Customer2,
    c1.city
FROM
    customers c1
        JOIN
    customers c2 ON c1.city = c2.city
        AND c1.customer_id <> c2.customer_id;


SELECT 
    c.customer_id, c.first_name, a.account_number
FROM
    customers c
        LEFT JOIN
    accounts a ON c.customer_id = a.customer_id 
UNION SELECT 
    c.customer_id, c.first_name, a.account_number
FROM
    customers c
        RIGHT JOIN
    accounts a ON c.customer_id = a.customer_id;


SELECT 
    account_number, balance
FROM
    accounts
WHERE
    balance > ALL (SELECT 
            balance
        FROM
            accounts
        WHERE
            branch_id = 1);


SELECT 
    account_number, balance
FROM
    accounts
WHERE
    balance > ANY (SELECT 
            balance
        FROM
            accounts
        WHERE
            branch_id = 1);


SELECT
    account_number,
    balance,
    LEAD(balance) OVER
    (
        ORDER BY balance DESC
    ) AS Next_Balance
FROM accounts;

SELECT
    account_number,
    balance,
    LAG(balance) OVER
    (
        ORDER BY balance DESC
    ) AS Previous_Balance
FROM accounts;


SELECT
    account_number,
    balance,
    LAG(balance) OVER(ORDER BY balance DESC) AS Previous_Balance,
    LEAD(balance) OVER(ORDER BY balance DESC) AS Next_Balance
FROM accounts;


EXPLAIN
SELECT *
FROM accounts
WHERE balance > 50000;


SHOW INDEX
FROM accounts;
