**# 🏢 Nonprofit Organization SQL Database Project

This project models the data needs of a nonprofit organization using **SQL**. The goal is to design and implement a robust relational database that captures critical information about people involved in the nonprofit, including **employees**, **volunteers**, and **donors**, while supporting **item donations**, **role overlaps**, and **reporting needs**.

---

## 📝 Problem Statement

**Description**:  
A nonprofit organization depends on a number of different types of persons for its successful operation. The organization is interested in the following attributes for all of these persons: **SSN, name, address, city, state, zip, and telephone**.

Three types of persons are of greatest interest:

- **Employees**: have only a `date_hired` attribute  
- **Volunteers**: have only a `skill` attribute  
- **Donors**: have only a relationship (named **donates**) with an **Item** entity type  

A **donor** must have donated **one or more items**, and an **item** may have **no donors**, or **one or more donors**.

There are persons other than employees, volunteers, and donors who are of interest to the organization, so a person need **not belong to any of these three groups**. On the other hand, at a given time, a person **may belong to two or more** of these groups (e.g., employee and donor).

---
