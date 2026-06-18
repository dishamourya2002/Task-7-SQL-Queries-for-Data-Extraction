# CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


# CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

# INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');

INSERT INTO Employees VALUES
(101,'Aman',30000,1),
(102,'Priya',45000,2),
(103,'Rahul',50000,2),
(104,'Neha',40000,3),
(105,'Karan',35000,1);

# SELECT * FROM Employees;

SELECT * FROM Employees
WHERE salary > 40000;

# SELECT e.emp_name,
       d.dept_name,
       e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

# SELECT d.dept_name,
       AVG(e.salary) AS avg_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

# SELECT dept_id,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY dept_id;

# SELECT * FROM Departments;