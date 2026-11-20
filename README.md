# sql-assignment-1
# MySQL Assignment 1 – DDL Commands & Constraints

## 📌 Project Overview
This assignment focuses on learning and implementing **DDL (Data Definition Language) commands** and **SQL constraints** using MySQL.

The project involves creating an Employee Database with three tables: Departments, Location, and Employees.

## 🛠️ Tools Used
- MySQL
- MySQL Workbench
- SQL

## 🗄️ Database Schema

**Database Name:** `employee`

### Tables

**1. Departments**
| Column | Data Type | Constraint |
|---|---|---|
| department_id | INT | PRIMARY KEY |
| department_name | VARCHAR(100) | NOT NULL, UNIQUE |

**2. Location**
| Column | Data Type | Constraint |
|---|---|---|
| location_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| location | VARCHAR(30) | NOT NULL, UNIQUE |

**3. Employees**
| Column | Data Type | Constraint |
|---|---|---|
| employee_id | INT | PRIMARY KEY |
| employee_name | VARCHAR(50) | NOT NULL |
| gender | ENUM('M','F') | ENUM |
| age | INT | CHECK (age >= 18) |
| hire_date | DATE | DEFAULT CURRENT_DATE |
| designation | VARCHAR(100) | — |
| department_id | INT | FOREIGN KEY |
| location_id | INT | FOREIGN KEY |
| salary | DECIMAL(10,2) | — |

## 📚 Part 1: DDL Commands

The following SQL commands were implemented:

1. **CREATE** – Creating a database and tables.
2. **ALTER** – Adding, modifying, dropping, and renaming columns.
3. **RENAME** – Renaming tables.
4. **TRUNCATE** – Removing all records from a table.
5. **DROP** – Deleting tables and databases.

## 🔐 Part 2: Constraints

The following constraints were implemented:

- **PRIMARY KEY:** Uniquely identifies each record.
- **UNIQUE:** Prevents duplicate values.
- **NOT NULL:** Prevents NULL values.
- **AUTO_INCREMENT:** Automatically generates sequential IDs.
- **CHECK:** Ensures employee age is 18 or above.
- **DEFAULT:** Automatically assigns the current date to hire_date.
- **FOREIGN KEY:** Establishes relationships between Employees, Departments, and Location tables.

## 🔗 Table Relationships

- Departments → Employees (One-to-Many)
- Location → Employees (One-to-Many)

## 🎯 Learning Outcomes

- Understanding DDL commands in MySQL.
- Creating and managing database tables.
- Implementing different SQL constraints.
- Establishing relationships using foreign keys.
- Understanding database structure and data integrity.

## 👩‍💻 Author

**Aswathi**

## 📝 Conclusion

This assignment provided practical experience in creating and managing relational databases using MySQL. It helped develop an understanding of DDL commands, constraints, and relationships between tables.
