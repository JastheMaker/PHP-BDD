CREATE DATABASE ProfDept;
USE ProfDept;

CREATE TABLE IF NOT EXISTS Profs
(
P_Id VARCHAR(10) NOT NULL,
Name varchar(40) not null,
D_Id VARCHAR(8),
PRIMARY KEY (P_Id)

)

CREATE TABLE IF NOT EXISTS Departments
(
P_Id VARCHAR(8) NOT NULL,
Name varchar(40) not null,
D_Id VARCHAR(10),
PRIMARY KEY (D_Id)

)