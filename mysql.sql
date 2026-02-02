CREATE DATABASE IF NOT EXISTS employees;
USE employees;

CREATE TABLE IF NOT EXISTS employee(
emp_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(20),
primary_skill VARCHAR(20),
location VARCHAR(20));

INSERT INTO employee (first_name, last_name, primary_skill, location) VALUES ('Amanda','Williams','Smile','local'), 
('Alan','Williams','Empathy','Oshawa'), ('Ghufran','Ataie','Database','Ajax'), ('Imran','Ataie','Database','Ajax'), ('Rezwan','Ataie','Database','Ajax');
SELECT * FROM employee;