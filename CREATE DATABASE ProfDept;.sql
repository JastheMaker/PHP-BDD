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
-- Give donnes
INSERT INTO Profs (P_Id, Name, D_Id)
VALUES 
    ('P001', 'John Smith', 'D001'),
    ('P002', 'Mary Johnson', 'D002'),
    ('P003', 'Michael Williams', 'D001'),
    ('P004', 'Patricia Brown', 'D003'),
    ('P005', 'David Jones', 'D002'),
    ('P006', 'Jennifer Davis', 'D001'),
    ('P007', 'James Miller', 'D003'),
    ('P008', 'Linda Wilson', 'D002'),
    ('P009', 'Robert Moore', 'D001'),
    ('P010', 'Barbara Taylor', 'D003'),
    ('P011', 'William Anderson', 'D001'),
    ('P012', 'Elizabeth Thomas', 'D002'),
    ('P013', 'Richard Jackson', 'D003'),
    ('P014', 'Margaret White', 'D001'),
    ('P015', 'Charles Harris', 'D002'),
    ('P016', 'Susan Martin', 'D003'),
    ('P017', 'Joseph Thompson', 'D001'),
    ('P018', 'Sarah Garcia', 'D002'),
    ('P019', 'Daniel Martinez', 'D003'),
    ('P020', 'Karen Robinson', 'D001');
