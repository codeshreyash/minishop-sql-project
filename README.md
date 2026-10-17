# MiniShop SQL Project

## Overview
MiniShop is a beginner-friendly eCommerce database project built using PostgreSQL. It is designed to practice SQL fundamentals and answer basic business questions using customer, product, and order data.

## Business Objective
Analyze eCommerce transactions to understand:
- Total revenue generated
- Customer spending patterns
- Product sales performance
- Revenue by product category
- Monthly revenue trends
- Orders across different cities

## Database Schema
The database contains three tables:

| Table | Description |
|---|---|
| `customers` | Customer details and cities |
| `products` | Product names, categories, and prices |
| `orders` | Customer purchases, quantities, and dates |

## Repository Structure
- `data.sql` — Creates the tables and inserts sample data.
- `queries.sql` — Contains SQL queries for business analysis.
- `README.md` — Project overview and instructions.

## Tools Used
- PostgreSQL
- SQL
- GitHub

## How to Run
1. Create a PostgreSQL database named `minishop`.
2. Open pgAdmin's Query Tool for that database.
3. Run `data.sql` first to create the tables and load sample data.
4. Run individual queries from `queries.sql`.
5. Review the results to answer the business questions.

## Dataset
The sample dataset contains:
- 6 customers
- 6 products
- 12 orders

The data is fictional and intended for learning purposes.

## Key Learning Outcomes
- Creating relational database tables
- Understanding primary keys and table relationships
- Joining multiple tables
- Aggregating data using `SUM()` and `COUNT()`
- Grouping and sorting business metrics
- Analyzing sales and customer behavior

## Future Improvements
- Calculate customer lifetime value
- Identify repeat customers
- Analyze monthly growth
- Add profit and discount analysis

## Author
Created as a SQL and business analysis practice project.
