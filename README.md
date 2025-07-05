# 🏢 Nonprofit Organization SQL Database Project

This project models the data needs of a nonprofit organization using **SQL**. The goal is to design and implement a robust relational database that captures critical information about people involved in the nonprofit, including **employees**, **volunteers**, and **donors**, while supporting **item donations**, **role overlaps**, and **reporting needs**.

---

## 📌 Problem Statement

A nonprofit organization relies on various individuals for its operations. It needs to track essential personal attributes for **all persons**, including:

- SSN  
- Name  
- Address  
- City  
- State  
- Zip  
- Telephone  

The three primary roles of interest are:

- **Employees** – with a `date_hired` attribute  
- **Volunteers** – with a `skill` attribute  
- **Donors** – connected via a **donates** relationship to one or more **items**

**Important considerations**:

- A person may belong to **none**, **one**, or **multiple** roles (e.g., both employee and donor).
- A **donor** must have donated **at least one item**.
- An **item** may have zero or more donors.

---

## 📐 ER Diagram

> Notation: EER notation using subtypes under a common supertype (Person)  
> ![ER Diagram](EER%20Diagram.png)

---

## 📚 Features

- Unified **Person** entity with subtypes: **Employee**, **Volunteer**, and **Donor**
- Supports overlapping roles using supertype-subtype modeling
- Tracks **donated items** and the **donates** relationship
- Enforces **relational constraints** (PK, FK, UNIQUE, CHECK)
- Includes **sample data** and **complex SQL queries** for reporting and analysis

---

## 🛠️ Technology Stack

- **Database**: PostgreSQL (compatible with MySQL or SQL Server)
- **Data Generation**: Python script
- **Modeling Tool**: Visio / Lucidchart / Draw.io

---

## 🧱 Schema Implementation (SQL DDL)

The schema includes:

- `Person` table: core attributes
- `Employee`, `Volunteer`, and `Donor` subtype tables
- `Item` table: representing physical or monetary donations
- `Donates` table: many-to-many relationship between donors and items

Includes:

- Primary keys  
- Foreign keys  
- Unique constraints  
- Check constraints

📁 SQL DDL located in `/schema/create_tables.sql`

---

## 📥 Sample Data

- 100+ rows in main transaction tables
- Generated using a custom Python script or imported from `.csv`
- Insert scripts and Python data generator located in `/data/`

---

## 📊 Complex SQL Queries

Five advanced queries were written to demonstrate the reporting capabilities of the database:

1. **Top 5 Donors by Total Items Donated**
2. **Volunteers with Specific Skills in Cities with Active Donations**
3. **Employees Who Are Also Donors and Their Donation Count**
4. **Monthly Item Donation Summary**
5. **Unmatched Items (Items with No Donors)**

Each query uses one or more of:

- Aggregate functions (COUNT, SUM)
- Subqueries (inline or correlated)
- JOINs (INNER, LEFT OUTER)
- Set operations (UNION, EXCEPT)

📁 Queries located in `/queries/complex_reports.sql`

---

## 🚀 Query Performance Optimization

Performance tuning was conducted on select queries:

### Techniques Applied:
- Indexing (`SSN`, foreign keys, filter fields)
- De-normalization (pre-aggregated reporting tables)
- Materialized views

### Performance Evaluation:
- `EXPLAIN ANALYZE` used to measure query time
- Results documented in `/optimization/performance_analysis.md`

### Observations:
- Indexing improved read performance but increased write overhead
- De-normalization improved reporting but added redundancy
- Materialized views offered fast read but required refresh logic

---

## 📁 Project Structure

