-- Insert Persons
INSERT INTO Person (ssn, name, address, city, state, zip, telephone) VALUES
('111-11-1111', 'Alice Johnson', '123 Elm St', 'Atlanta', 'GA', '30303', '555-1111'),
('222-22-2222', 'Bob Smith', '456 Oak Ave', 'Savannah', 'GA', '31401', '555-2222'),
('333-33-3333', 'Charlie Davis', '789 Pine Rd', 'Augusta', 'GA', '30901', '555-3333'),
('444-44-4444', 'Diana Ross', '321 Maple Dr', 'Columbus', 'GA', '31901', '555-4444'),
('555-55-5555', 'Evan Turner', '654 Birch Ln', 'Macon', 'GA', '31201', '555-5555'),
('666-66-6666', 'Fiona Lee', '987 Cedar St', 'Rome', 'GA', '30161', '555-6666'),
('777-77-7777', 'George Miller', '135 Willow Way', 'Albany', 'GA', '31701', '555-7777');

-- Insert Employees
INSERT INTO Employee (ssn, date_hired) VALUES
('111-11-1111', '2022-01-15'),
('333-33-3333', '2023-03-10');

-- Insert Volunteers
INSERT INTO Volunteer (ssn, skill) VALUES
('222-22-2222', 'Event Planning'),
('444-44-4444', 'Fundraising'),
('555-55-5555', 'IT Support');

-- Insert Donors
INSERT INTO Donor (ssn) VALUES
('333-33-3333'), -- Also an employee
('444-44-4444'), -- Also a volunteer
('666-66-6666'),
('777-77-7777');

-- Insert Items
INSERT INTO Item (description, value, date_received) VALUES
('Laptops', 2000.00, '2023-06-10'),
('Office Chairs', 1500.00, '2023-07-01'),
('Whiteboards', 500.00, '2023-08-15'),
('Books', 300.00, '2023-08-20'),
('Projector', 800.00, '2023-09-10');

-- Insert Donates
INSERT INTO Donates (donor_ssn, item_id) VALUES
('333-33-3333', 1),
('444-44-4444', 2),
('666-66-6666', 3),
('666-66-6666', 4),
('777-77-7777', 5);
