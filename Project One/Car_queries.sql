# I have created three csv files from a single csv file 
# and assigned primary and foreign keys. In the following 
# series, I will run queries that we might face in a real-world scenario. 

Use cardata;

#1. Find the first name of each customer

SELECT 
    first_name
FROM
    name_country;
    
#2 Find the first and last name of each customer

SELECT 
    first_name, last_name
FROM
    name_country;
    
#3 Retrive a list containing full names, country of customers

SELECT 
    *
FROM
    name_country;
    
#4 Find the customer with a row id 6

SELECT 
    id, first_name, last_name
FROM
    name_country
WHERE
    id = 6;

#5 Find all customers with last name Stevens

SELECT 
    *
FROM
    name_country
WHERE
    last_name = 'Stevens';
  
#6 Find all customers with id between 99 and 125

SELECT 
    *
FROM
    name_country
WHERE
    id BETWEEN '99' AND '125';


#7 Find the names and country of customers with id 4, 5 and 6
    
SELECT 
    *
FROM
    name_country
WHERE
    id IN (4, 5, 6);

#8 Find names of customers with 'el' in their first names. 

SELECT 
    first_name, last_name
FROM
    name_country
WHERE
    first_name LIKE '%el%';
    
#9 List names of customers alphabetically

SELECT 
    first_name, last_name
FROM
    name_country
ORDER BY first_name ASC;

#9 List the first six names of customers alphabetically 

SELECT 
    first_name, last_name
FROM
    name_country
ORDER BY first_name ASC limit 6;

#10 Find the maximum salary

SELECT 
    MAX(salary) AS highest_salary
FROM
    gender_age_salary;
    
#11 Find the average salary of women customers

SELECT 
    gender, AVG(salary) AS average_salary_women
FROM
    gender_age_salary
WHERE
    gender = '0';
    
#12 Find the average salary for both sexes

SELECT 
    gender, AVG(salary) AS average_salary
FROM
    gender_age_salary
GROUP BY gender;

#13 Find the number of women customers

SELECT 
    gender, COUNT(*) AS number_of_women_customers
FROM
    gender_age_salary
WHERE
    gender = '0';
    
#14 Find the number of customers by gender

SELECT 
    gender, COUNT(*)
FROM
    gender_age_salary
GROUP BY gender;

#15 Find the average age of customers whose first name is Baker. 

SELECT 
    first_name, AVG(age) AS average_age
FROM
    gender_age_salary
        JOIN
    name_country ON gender_age_salary.customer_id = name_country.id
GROUP BY first_name
HAVING first_name = 'Baker';




