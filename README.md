# Nonprofit SQL Project

This project models the database needs of a nonprofit organization using SQL. The nonprofit tracks persons involved in its operations as employees, volunteers, and donors. The database schema supports overlapping roles, item donations, and organizational reporting.

## 📚 Features

- Tracks people by SSN, name, address, city, state, zip, and telephone.
- Supports overlapping roles (employee, volunteer, donor).
- Records items and donations.
- Includes sample data and sample queries for analysis.

## 🗺️ ER Diagram

![ER Diagram](EER%20Diagram.png)

## 🧱 Files

- `schema.sql`: Defines the tables and relationships.
- `insert_sample_data.sql`: Inserts example data for testing.
- `queries.sql`: Demonstrates sample queries.

## 🏗️ How to Use

1. **Create the database**:
   ```sql
   CREATE DATABASE nonprofit;
