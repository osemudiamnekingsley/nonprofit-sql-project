-- Drop tables if they exist
DROP TABLE IF EXISTS Donates, Employee, Volunteer, Donor, Item, Person;

-- Person table
CREATE TABLE Person (
    ssn CHAR(11) PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state CHAR(2),
    zip CHAR(10),
    telephone VARCHAR(15)
);

-- Employee table
CREATE TABLE Employee (
    ssn CHAR(11) PRIMARY KEY,
    date_hired DATE,
    FOREIGN KEY (ssn) REFERENCES Person(ssn) ON DELETE CASCADE
);

-- Volunteer table
CREATE TABLE Volunteer (
    ssn CHAR(11) PRIMARY KEY,
    skill VARCHAR(100),
    FOREIGN KEY (ssn) REFERENCES Person(ssn) ON DELETE CASCADE
);

-- Donor table
CREATE TABLE Donor (
    ssn CHAR(11) PRIMARY KEY,
    FOREIGN KEY (ssn) REFERENCES Person(ssn) ON DELETE CASCADE
);

-- Item table
CREATE TABLE Item (
    item_id SERIAL PRIMARY KEY,
    description TEXT,
    value DECIMAL(10, 2),
    date_received DATE
);

-- Donates table (M:N relationship)
CREATE TABLE Donates (
    donor_ssn CHAR(11),
    item_id INT,
    PRIMARY KEY (donor_ssn, item_id),
    FOREIGN KEY (donor_ssn) REFERENCES Donor(ssn) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Item(item_id) ON DELETE CASCADE
);
