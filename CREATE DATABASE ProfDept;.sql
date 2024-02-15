-- CREATE DATABASE ProfDept


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

--Delete a foreign key

ALTER table departments
    DROP CONSTRAINT departments_ibfk_1;

ALTER table profs
    DROP CONSTRAINT profs_ibfk_1;

-- add Constraint with names

ALTER TABLE profs
    ADD CONSTRAINT FK_P_D
    FOREIGN KEY (D_Id) REFERENCES departments (D_Id)
    ON DELETE SET NULL;

ALTER TABLE departments
    ADD CONSTRAINT FK_D_P
    FOREIGN KEY (TLp_Id) REFERENCES departments (P_Id)
    ON DELETE SET NULL;

