-- 1. List all persons
SELECT * FROM Person;

-- 2. List all employees with their hire dates
SELECT p.name, e.date_hired
FROM Employee e
JOIN Person p ON p.ssn = e.ssn;

-- 3. List all volunteers with their skills
SELECT p.name, v.skill
FROM Volunteer v
JOIN Person p ON p.ssn = v.ssn;

-- 4. List all donors and the number of items they donated
SELECT p.name, COUNT(d.item_id) AS total_donated
FROM Donates d
JOIN Donor dn ON dn.ssn = d.donor_ssn
JOIN Person p ON p.ssn = dn.ssn
GROUP BY p.name;

-- 5. List all items and their donors (if any)
SELECT i.item_id, i.description, p.name AS donor_name
FROM Item i
LEFT JOIN Donates d ON i.item_id = d.item_id
LEFT JOIN Donor dn ON d.donor_ssn = dn.ssn
LEFT JOIN Person p ON dn.ssn = p.ssn;

-- 6. Find all persons who are both employees and donors
SELECT p.name
FROM Employee e
JOIN Donor d ON e.ssn = d.ssn
JOIN Person p ON p.ssn = e.ssn;

-- 7. Get total value of items donated by each donor
SELECT p.name, SUM(i.value) AS total_value
FROM Donates d
JOIN Item i ON d.item_id = i.item_id
JOIN Donor dn ON d.donor_ssn = dn.ssn
JOIN Person p ON dn.ssn = p.ssn
GROUP BY p.name;

-- 8. Find all persons who are not employees, volunteers, or donors
SELECT p.*
FROM Person p
LEFT JOIN Employee e ON p.ssn = e.ssn
LEFT JOIN Volunteer v ON p.ssn = v.ssn
LEFT JOIN Donor d ON p.ssn = d.ssn
WHERE e.ssn IS NULL AND v.ssn IS NULL AND d.ssn IS NULL;

-- 9. Count of volunteers per skill
SELECT skill, COUNT(*) AS num_volunteers
FROM Volunteer
GROUP BY skill;

-- 10. Find items that have not been donated by anyone
SELECT *
FROM Item
WHERE item_id NOT IN (SELECT item_id FROM Donates);
