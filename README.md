
## SQL Project
These projects demonstrate my proficiency in SQL and my capacity to analyze complex data.
They exhibit my abilities in data investigation, visualization, and analysis.

- ## Author
- [@NiteshKumar76](https://github.com/NiteshKumar76)
  
## Student management system Database 
![Gemini_Generated_Image_2ws3e82ws3e82ws3](https://github.com/user-attachments/assets/1d3438e2-ae6f-4752-afdc-30695f3599e9)


Welcome to the Student Management System Database repository! This repository contains the SQL scripts and database schema for implementing the database component of a school management system. The database is designed to store and manage various data related to students, teachers, courses,Result,Enrollment and other aspects of school operations.

## Database Schema
![student-management_database_schema](https://github.com/user-attachments/assets/8572c2d8-6160-4a14-9036-4d5e7432547a)

The database schema consists of the following tables:

* Students: Stores information about students, including their unique IDs, names, contact Email details, and other relevant details.
* Teachers: Contains information about teachers, such as their IDs, names, information, and other related data.* Courses: Stores details about the courses offered by the innstitution, including course IDs, names, descriptions, and other information.
* Result : Store information about the marks of students and represent connectivity over other tables .
* Enrollment: It Stores about Enrollement id , Enrollemnt Date and other information. 

And tables that connect two or more tables: Student_id, Course_id, Enrollement_id lot tables are connected to each other with the primary key and foreign key.

## Setup
To set up the School Management System Database on your MS SQL Server, follow these steps:

1. Install MY SQL and setup workspace .
2. Connect to your MS SQL Server using your preferred client or SQL Server .
3. Create a new database using the following SQL commands.


If you have any questions, suggestions, or feedback, please feel free to reach out. You can contact the project maintainers by opening an issue on the repository.

Thank you for your interest in the Student Management System Database project. We hope it proves to be a valuable resource for implementing the database component of your Student management system!

Execute the SQL scripts in the scripts folder in the following order:
* create_tables.sql: Creates the necessary tables in the database.
* Create_indexes.sql: Creates indexes for optimized querying and performance.
* Create_constraints.sql: Sets up the necessary constraints for data integrity.
* Create_views.sql: Defines views for easier data retrieval and reporting.
* Create_procedures.sql: Creates stored procedures for various database operations.

The database is now set up and ready to be used by the School Management System application.
## About SQL
SQL (Structured Query Language) is a programming language for interacting with relational databases. Key SQL capabilities:
* CRUD operations - create, read, update, delete data
* Joins - combine data from multiple tables
* Aggregate functions - summations, counts, averages on data   
* Subqueries - nested queries for advanced operations
* Stored procedures - reusable routines for logic 
* Window functions - analytics functions for rankings etc...

## Usage
* Install a SQL database such as SQL Server Express
* Import any .sql files to run the queries
* Modify the queries for your own database
