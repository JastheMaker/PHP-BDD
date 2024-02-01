
/*CREATION DU BASE DE DONNES*/
CREATE DATABASE IF NOT EXISTS EMP;
 
      USE EMP;
/* CREATION DU TABLEAU COMPANY*/
CREATE TABLE IF NOT EXISTS COMPANY
        (  
           ID INT PRIMARY KEY NOT NULL,
            NAME VARCHAR(20) NOT NULL,
             AGE INT NOT NULL,
              ADDRESSE VARCHAR(100),
               SALARY REAL
        );
/* INSERTION DES DONNES */       
	INSERT INTO COMPANY (ID,NAME,AGE,ADDRESSE,SALARY)
          VALUES 
	(1, 'JASSER', 24, 'TUNISIA', 25000.00),
        (5, 'FIRAS', 23, 'TUNISIA', 35000.00),
        (6, 'BILAL', 34, 'FRANCE', 21000.00),
        (8, 'Sara', 29, 'USA', 40000.00),
        (10, 'Lina', 31, 'Canada', 28000.00),
        (12, 'Mohammed', 45, 'UK', 50000.00),
        (15, 'Maria', 27, 'Brazil', 32000.00),
        (18, 'Juan', 33, 'Mexico', 38000.00),
        (20, 'Anastasia', 26, 'Russia', 45000.00),
        (22, 'Chen', 30, 'China', 31000.00),
        (25, 'Yuki', 28, 'Japan', 47000.00),
        (28, 'Diego', 32, 'Argentina', 36000.00),
        (30, 'Fatima', 35, 'Saudi Arabia', 49000.00),
        (32, 'Emmanuel', 39, 'Nigeria', 42000.00),
        (35, 'Amir', 40, 'Pakistan', 53000.00),
        (38, 'Sophie', 24, 'Germany', 38000.00),
        (40, 'Elena', 36, 'Spain', 44000.00),
        (42, 'Lucas', 29, 'Australia', 46000.00);

/* Creation du user name */
CREATE USER JAS@localhost IDENTIFIED BY '123';
	CREATE USER IF NOT EXISTS JAS@localhost;
SELECT USER , HOST FROM MYSQL.USER;

GRANT SELECT, INSERT , UPDATE , DELETE , CREATE , DROP 
ON EMP.* TO JAS@localhost
WITH GRANT OPTION;

SHOW GRANTS FOR JAS@localhost;

GRANT ALL 
ON *.* TO JAS@localhost
WITH GRANT OPTION;

SHOW GRANTS FOR JAS@localhost;

/*DROP USER*/
DROP USER JAS@localhost;
