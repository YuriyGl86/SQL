CREATE TABLE IF NOT EXISTS Departments
(
	department_id serial PRIMARY KEY,
	department_title varchar(200) NOT NULL
);


CREATE TABLE IF NOT EXISTS Employees
(
	employee_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	department_id int NOT NULL REFERENCES Departments(department_id),
	boss int REFERENCES Employees(employee_id)
);