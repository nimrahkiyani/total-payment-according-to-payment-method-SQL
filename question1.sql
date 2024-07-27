CREATE DATABASE IF NOT EXISTS customer;

USE customer;

CREATE TABLE payment (
customer_id int PRIMARY KEY,
customer_name VARCHAR(30),
mode varchar(30),
city varchar(30)
);

INSERT INTO payment(customer_id , customer_name , mode , city) 
VALUES 
(101 , "Alice" , "netbanking" , "New York"),
(102 , "Bob" , "creditcard" , "Los Angeles"),
(103 , "Charlie" , "Debit Card" , "Chicago"),
(104 , "David" , "netbanking" , "Houston"),
(105 , "Eve" , "netbanking" , "Phoenix"),
(106 , "Frank" , "Debit Card" , "Philadelphia"),
(107 , "Grace" , "netbanking" , "San Antonio"),
(108 , "Hannah" , "Debit Card" , "San Diego"),
(109 , "Ivy" , "creditcard" , "Dallas"),
(110 , "Jack" , "Debit Card" , "San Jose"),
(111 , "Kevin" , "netbanking" , "Austin"),
(112 , "Lily" , "Debit Card" , "Jacksonville");


SELECT mode, COUNT(customer_name)
FROM payment 
GROUP BY mode;

