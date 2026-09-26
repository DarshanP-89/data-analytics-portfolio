# NorthMart SQL Analytics

## Overview
Complex SQL analysis on a 3-table retail database. Demonstrates advanced querying with JOINs, subqueries, CTEs, and window functions.

## Tech Stack
MySQL 8.0, DB Fiddle

## Database Schema
- Customers(CustomerID, CustomerName, Segment, Region)
- Orders(OrderID, CustomerID, OrderDate, Category)
- OrderLines(OrderLineID, OrderID, Product, Sales, Quantity)

## Key Techniques
- Multi-table JOINs (INNER, LEFT, anti-join)
- Subqueries and CTEs
- Window functions: RANK(), running totals
- Aggregate window functions: AVG(SUM(Sales)) OVER (PARTITION BY Segment)
- Data quality: unmatched records, null detection

## Key Results
- Identified North region as highest revenue generator
- Found Technology category with highest average order value
- Detected customers with no orders (churn risk)
- Mapped seasonal revenue patterns via running totals

## Files
- `northmart_queries.sql` — All SQL queries with comments
- `schema.sql` — Database schema definition

## Key Insight
Advanced SQL window functions reveal patterns that basic GROUP BY cannot — like ranking top products per order and comparing customers to their segment average.
