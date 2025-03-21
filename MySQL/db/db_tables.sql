
create database sword2yk_db;

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

SELECT * FROM client;
SELECT * FROM address;