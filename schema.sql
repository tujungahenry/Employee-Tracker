DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Legal");

CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 80000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 160000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 190000, 4);

CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id iNT NOT NULL,
  manager_id VARCHAR(30),
  PRIMARY KEY(id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Douglas", "Bush", 1, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Darrell", "Daniels", 2, "Henry");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jessica", "Maynard", 3, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Carleigh", "Preston", 4, "Henry");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Colt", "Lopez", 5, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Abigail", "Frye", 6, "Henry");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Harley", "Barnes", 7, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Gemmma", "Sea", 8, "Tara");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Judah", "Waters", 3, "Tara");