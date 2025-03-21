-- Insert sample data into the client table
INSERT INTO client (CLIENT_ID, CLIENT_Name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Bob Williams'),
(5, 'Charlie Brown');

-- Insert sample data into the address table
INSERT INTO address (ADDRESS_ID, STREET_Name, ADDRESS_Number, CITY, STATE, COUNTRY, CLIENT_FK) VALUES
(1, 'Main Street', 123, 'New York', 'NY', 'USA', 1),
(2, 'Broadway Ave', 456, 'Los Angeles', 'CA', 'USA', 2),
(3, 'Sunset Blvd', 789, 'San Francisco', 'CA', 'USA', 3),
(4, 'Market Street', 101, 'Chicago', 'IL', 'USA', 4),
(5, 'Baker Street', 221, 'London', 'Greater London', 'UK', 5);
