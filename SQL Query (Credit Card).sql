-- Creating a database - 
CREATE DATABASE credit_card_db;

-- Creating first Table (Credit Card details)
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- Copying the data in cc_details - 
SELECT * FROM cc_detail; 

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Client_Num, @Card_Category, @Annual_Fees, @Activation_30_Days, @Customer_Acq_Cost, 
 @Week_Start_Date, @Week_Num, @Qtr, @Current_Year, @Credit_Limit, @Total_Revolving_Bal, 
 @Total_Trans_Amt, @Total_Trans_Ct, @Avg_Utilization_Ratio, @Use_Chip, @Exp_Type, 
 @Interest_Earned, @Delinquent_Acc)
SET 
    Client_Num = @Client_Num,
    Card_Category = @Card_Category,
    Annual_Fees = @Annual_Fees,
    Activation_30_Days = @Activation_30_Days,
    Customer_Acq_Cost = @Customer_Acq_Cost,
    Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%d-%m-%Y'),
    Week_Num = @Week_Num,
    Qtr = @Qtr,
    Current_Year = @Current_Year,
    Credit_Limit = @Credit_Limit,
    Total_Revolving_Bal = @Total_Revolving_Bal,
    Total_Trans_Amt = @Total_Trans_Amt,
    Total_Trans_Ct = @Total_Trans_Ct,
    Avg_Utilization_Ratio = @Avg_Utilization_Ratio,
    Use_Chip = @Use_Chip,
    Exp_Type = @Exp_Type,
    Interest_Earned = @Interest_Earned,
    Delinquent_Acc = @Delinquent_Acc;



-- Creating secong table (Customer details) 

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- Copying the data in cust_detail - 

SELECT * FROM cust_detail ;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Displaying the Path 
SHOW VARIABLES LIKE 'secure_file_priv';


