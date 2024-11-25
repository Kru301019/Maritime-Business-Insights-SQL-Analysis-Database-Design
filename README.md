#Solent Boat Management System
A comprehensive database solution for efficient boat management.

Table of Contents

##About the Project

Features
ERD and Data Design
Technologies Used
Getting Started
Usage
Future Improvements
Acknowledgments
About the Project
This project is a database management system created for the fictional company Solent. It aims to streamline boat management processes by handling customer data, staff information, service tracking, and revenue analysis.
The system is designed to be secure, efficient, and compliant with data protection regulations.

##Features

Customer Management: Tracks client information and their bookings.
Staff Management: Records employee details and their roles.
Service Tracking: Monitors maintenance, repairs, and scheduling.
Yard Operations: Handles boat storage and docking logistics.
Revenue Analysis: Provides insights into financial performance.
Optimized Queries: Ensures efficient data retrieval and updates.
Role-Based Access: Implements security measures for different users.

##ERD and Data Design

The database design follows a normalized schema to avoid redundancy and improve performance. The Entity-Relationship Diagram (ERD) and a detailed data dictionary are included in the repository:
ERD Diagram
Data Dictionary

##Technologies Used

Database Management System: PostgreSQL
Query Language: SQL

##Getting Started

Clone the Repository:
bash
Copy code
git clone https://github.com/yourusername/solent-boat-management.git  
Install PostgreSQL:
Ensure you have PostgreSQL installed on your system.
Import the Database Schema:
Use the provided SQL script to set up the database:
bash
Copy code
psql -U <username> -d <database_name> -f setup.sql  
Usage
Load the database schema and sample data.
Run the queries in queries.sql to:
Retrieve customer and boat details.
Analyze revenue trends.
Manage staff schedules.
Explore the data using tools like pgAdmin or the PostgreSQL command line.
Future Improvements
Add a graphical user interface for easier data interaction.
Implement API endpoints for integration with other systems.
Expand reporting capabilities with advanced analytics.

##Acknowledgments
This project was developed as part of coursework for the Database Systems module. Special thanks to University of Portsmouth and Dr. Val Adamescu for guidance.