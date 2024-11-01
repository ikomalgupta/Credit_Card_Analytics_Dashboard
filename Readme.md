
# Credit Card Transaction and Customer Analysis Dashboard

## Project Overview
The **Credit Card Transaction and Customer Analysis Dashboard** provides insights into revenue generation, customer demographics, and transaction patterns using SQL and Power BI. This dashboard enables stakeholders to make data-driven decisions through interactive visualizations and detailed data segmentation.

## Tools and Technologies
- **SQL**: Used for database setup, table creation, and data import.
- **Power BI**: Used for creating the interactive dashboard and visualizing SQL data.

## Key Files
- **SQL File** (`credit_card_db.sql`): Contains commands to:
  - Create the `credit_card_db` database.
  - Define the `cc_detail` and `cust_detail` tables.
  - Load data from CSV files into these tables.

- **Power BI Dashboard**: Connects to the SQL database and visualizes key insights, including:
  - Revenue and transaction trends segmented by quarter, expenditure type, card usage type, and customer demographics.
  - Customer segmentation by gender, income, education level, and region.

## Usage Instructions

### Database Setup
1. Run the SQL file (`credit_card_db.sql`) in your SQL environment to create the database and load data into it.
2. Confirm that the data path settings specified in the file match the location of your CSV files. Adjust paths as needed for successful data loading.

### Power BI Connection
1. Open Power BI and connect it to the SQL database.
2. Use available filters within the dashboard to explore data across various categories, such as transaction trends, demographic segments, and regional distributions.


