create database classdb;
use classdb;
select * from  financial_loan_dataset;


#total loan applicton
SELECT 
    COUNT(id) AS total_loan_application
FROM
    financial_loan_dataset;


#toatal aloan amount disburdesd in 2021
SELECT 
    SUM(loan_amount) AS total_funded_amount
FROM
    financial_loan_dataset;



#amount received by the bank
SELECT 
    SUM(total_payment) AS toatal_amount_collected
FROM
    financial_loan_dataset;#amount received by the bank



#average intertesrt rate
SELECT 
    ROUND(AVG(int_rate), 2) * 100 AS avg_interst_rate
FROM
    financial_loan_dataset;




#average dti
SELECT 
    AVG(dti) * 100 AS avgerage_dti
FROM
    financial_loan_dataset;




#good loan application 
SELECT 
    COUNT(id) AS good_loan_applicatin
FROM
    financial_loan_dataset
WHERE
    loan_status IN ('fully paid' , 'current'); 




#baad loan application
SELECT 
    COUNT(id) AS bad_loan_applicatin
FROM
    financial_loan_dataset
WHERE
    loan_status IN ('charged off'); 





#good loan percentage
SELECT 
    COUNT(CASE
        WHEN loan_status IN ('fully paid' , 'current') THEN id
    END) * 100 / COUNT(id) AS good_loan_percentage
FROM
    financial_loan_dataset;



#bad loan percentage
SELECT 
    COUNT(CASE
        WHEN loan_status IN ('charged off') THEN id
    END) * 100 / COUNT(id) AS bad_loan_percentage
FROM
    financial_loan_dataset;



#good_loan_amount given by the bank
SELECT 
    SUM(loan_amount) AS good_loan_amount
FROM
    financial_loan_dataset
WHERE
    loan_status IN ('fully paid' , 'current');





#good_loan_amount given by the bank
SELECT 
    SUM(loan_amount) AS bad_loan_amount
FROM
    financial_loan_dataset
WHERE
    loan_status IN ('charged off');





#bad_loan_amount received by the bank
SELECT 
    SUM(total_payment) AS bad_loan_amount
FROM
    financial_loan_dataset
WHERE
    loan_status IN ('charged off');

