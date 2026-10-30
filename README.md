# Student Performance Database

## Project overview

This project uses MySQL to manage and analyse student performance data.

The database contains information about students, staff, modules, assessments and marks. It demonstrates the use of relational database concepts and SQL queries to explore academic performance.

## Database structure

The database contains five main tables:

- `STUDENT_TABLE` – student details
- `STAFF_TABLE` – staff details
- `MODULE_TABLE` – module information and staff relationships
- `ASSESSMENT_TABLE` – assessments, weightings and deadlines
- `MARKS_TABLE` – marks achieved by students

## SQL skills demonstrated

- Creating relational database tables
- Defining primary keys and foreign keys
- Inserting sample data
- Joining multiple tables
- Aggregating data
- Grouping and filtering query results
- Calculating weighted assessment results

## Project files

| File | Description |
|---|---|
| `sql/01_create_tables.sql` | Creates the database tables |
| `sql/02_insert_data.sql` | Inserts the sample data |
| `sql/03_analysis_queries.sql` | Contains SQL analysis queries |

## How to run the project

1. Open MySQL Workbench and connect to a MySQL server.
2. Run `01_create_tables.sql` to create the tables.
3. Run `02_insert_data.sql` to insert the sample data.
4. Run the queries in `03_analysis_queries.sql`.

Run the scripts in order. If the tables or sample records already exist, use a clean test database or reset the existing tables before running the setup scripts again.

## Project development

This project began as a university database assignment. I am developing it further by reviewing the original SQL, improving queries and documenting the database implementation.

## Tools

- MySQL
- MySQL Workbench
- GitHub
