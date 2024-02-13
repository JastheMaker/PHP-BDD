CREATE DATABASE EmpMgr;
USE EmpMgr;

CREATE TABLE Employees(

E_ID INT NOT NULL,
Name VARCHAR(50) NOT NULL,
Mgr_Id INT,
PRIMARY KEY (E_ID),
FOREIGN KEY (Mgr_Id) REFERENCES Employees(E_ID);


)

INSERT INTO Employees (E_ID, Name, Mgr_Id) VALUES
(1, 'John Doe', NULL),
(2, 'Jane Smith', 1),
(3, 'Alice Johnson', 2),
(4, 'Bob Williams', 1),
(5, 'Emily Davis', 2),
(6, 'Michael Clark', 4),
(7, 'Sarah Brown', 2),
(8, 'Christopher Lee', 4),
(9, 'Jessica Martinez', 1),
(10, 'Daniel Rodriguez', 1),
(11, 'Amanda Taylor', 3),
(12, 'David Martinez', 2),
(13, 'Jennifer Anderson', 3),
(14, 'Matthew Wilson', 2),
(15, 'Laura Garcia', 4),
(16, 'James Hernandez', 2),
(17, 'Megan Young', 5),
(18, 'Kevin King', 1),
(19, 'Rachel Scott', 4),
(20, 'Justin Nguyen', 5);


