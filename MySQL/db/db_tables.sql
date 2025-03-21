--mysql command

create database sword2yk_db;

--create table
CREATE TABLE client (
    CLIENT_ID int NOT NULL,
    CLIENT_Name varchar(255),
    PRIMARY KEY (CLIENT_ID)
);
CREATE TABLE address (
    ADDRESS_ID int NOT NULL,
    STREET_Name varchar(255),
    ADDRESS_Number int,
    CITY varchar(255),
    STATE varchar(255),
    COUNTRY varchar(255),
    CLIENT_FK int, -- Optional: Add NOT NULL if needed
    PRIMARY KEY (ADDRESS_ID),
    FOREIGN KEY (CLIENT_FK) REFERENCES client(CLIENT_ID)
);

--select tables
SELECT * FROM client;
SELECT * FROM address;

--join tables
SELECT * 
FROM client AS c 
LEFT JOIN address AS a 
ON c.CLIENT_ID = a.CLIENT_FK

UNION

SELECT * 
FROM client AS c 
RIGHT JOIN address AS a 
ON c.CLIENT_ID = a.CLIENT_FK

WHERE c.CLIENT_ID IS NULL OR a.CLIENT_FK IS NULL;

--update address table
UPDATE address 
SET CLIENT_FK = NULL 
WHERE CLIENT_FK = 2;