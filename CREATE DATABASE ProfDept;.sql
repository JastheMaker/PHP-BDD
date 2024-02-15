CREATE DATABASE ProfDept;
USE ProfDept;

-- Create the database for Professors
CREATE DATABASE IF NOT EXISTS ProfDept;

-- Use the newly created database
USE ProfDept;

-- Create the Professors table
CREATE TABLE IF NOT EXISTS Profs (
    P_Id VARCHAR(10) NOT NULL,
    Name VARCHAR(40) NOT NULL,
    D_Id VARCHAR(8),
    PRIMARY KEY (P_Id)
);

-- Create the Departments table
CREATE TABLE IF NOT EXISTS Departments (
    D_Id VARCHAR(8) NOT NULL,
    Name VARCHAR(40) NOT NULL,
    TLP_ID VARCHAR(10),
    PRIMARY KEY (D_Id)
);
