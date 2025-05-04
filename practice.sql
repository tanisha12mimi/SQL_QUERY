-- practice question
-- write the query to find avg marks in each city in asecendig order.alter
use mycollage;

SELECT city, avg(marks)
FROM student
group by city;

Create database customer;
use customer;
drop table customer1;
create TABLE customer2(
customer_id int primary key,
 customer varchar(50),
mode varchar (50),
 city varchar(20)
 );
 
 INSERT INTO customer2 (customer_id, customer, mode, city)
VALUES
(101, 'OLIVIA', 'NETBANKING', 'PORTILAND'),
(102, 'ETHAN', 'CREDITCARD', 'MIAMI'),
(103, 'MAYA', 'CREDITCARD', 'SEATTLE'),
(104, 'LIAM', 'NETBANKING', 'DENVER'),
(105, 'SOPHIA', 'CREDITCARD', 'NEWORLEANS'),
(106, 'CALEB', 'DEBITCARD', 'MINNEAPOLIS'),
(107, 'AVA', 'DEBITCARD', 'PHOENIX'),
(108, 'LUCAS', 'NETBANKING', 'BOSTON'),
(109, 'ISABELLA', 'NETBANKING', 'NASHVIIE'),
(110, 'LACKSON', 'CREDITCARD', 'BOSTON');

select * FROM customer2;
-- for given table , find the total payment according to each payment methode 

SELECT mode, COUNT(customer)
FROM customer2
GROUP BY mode;

-- having clause 
-- countn no of student  each city where max marks cross 90






