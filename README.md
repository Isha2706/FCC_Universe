# 🌌 Universe Database Project

This project is part of the [FreeCodeCamp.org](https://www.freecodecamp.org/) **Relational Database Certification**. It involves designing and interacting with a PostgreSQL database representing celestial bodies in a fictional universe.

## 🧠 About

The **Universe Project** is designed to help learners get hands-on experience with **SQL** and **PostgreSQL** by modeling a scientific database. The project includes:

- Creating a PostgreSQL database and schema
- Inserting and querying data about stars, planets, galaxies, and more
- Learning how to normalize data and establish relationships between tables

The project demonstrates knowledge of relational databases, including:
- Primary and foreign keys
- Data types
- Table joins
- Filtering and sorting queries

## 🛠 Technologies Used

- **PostgreSQL** – for creating and managing the database
- **SQL** – for writing and executing queries
- **pg_dump** – to export the database dump

## 🚀 Getting Started

To restore the database from the provided dump file:

1. Make sure PostgreSQL is installed on your system.
2. Create a new database:
   ```bash
   CREATE DATABASE universe;
   ```
3. Restore the dump into your database:
   ```bash
   psql -d universe -f universe.sql
   ```

## 🧾 Files Included

- `universe.sql` – PostgreSQL database dump containing the entire schema and data

## 📚 What I Learned

- Basics of SQL and PostgreSQL
- Writing queries to insert, update, and select data
- Creating tables with relationships and constraints
- Using `pg_dump` and `psql` for database backup and restore

## ✅ Certification

> This project fulfills the PostgreSQL/Relational Databases project requirements for the FreeCodeCamp certification.
