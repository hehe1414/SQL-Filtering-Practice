# SQL Filtering Practice – Northwind

**Task 22 – SQL Filtering Practice**
Veda Technology | Data Analytics Track | Level 1, Day 22

## About
I wrote 12 SQL queries that filter records with `WHERE`, `IN`, `BETWEEN` and `LIKE` on the Northwind sample database, and saved a screenshot of each result. I tested each operator and checked the row counts to make sure the filters worked.

**Where I ran them:** an online SQL editor with the Northwind sample database, running Microsoft SQL Server. The queries use standard SQL that works the same in MySQL and PostgreSQL.

## What each filter does
| Filter | What it does | Example from my queries |
|--------|--------------|------------------------|
| `WHERE` | Keeps rows that match a condition | `Country = 'Mexico'` |
| `OR` | Matches if either condition is true | `Country = 'Germany' OR Country = 'France'` |
| `IN` | Matches any value in a list (a shorter way to write several ORs) | `Country IN ('Germany', 'France')` |
| `NOT IN` | Excludes the values in a list | `Country NOT IN ('USA', 'Germany', 'France')` |
| `BETWEEN` | Matches a range, including both ends | `Price BETWEEN 10 AND 20` |
| `LIKE` | Matches a text pattern (`%` is any text) | `CustomerName LIKE 'A%'` |

## The 12 queries and their results
| # | Question | Filter | Rows returned | Output |
|---|----------|--------|---------------|--------|
| 1 | Which customers are in Mexico? | WHERE | [fill in] | `outputs/query_01.png` |
| 2 | Which products cost more than 40? | WHERE | [fill in] | `outputs/query_02.png` |
| 3 | Customers from Germany or France | OR | [fill in] | `outputs/query_03.png` |
| 4 | Same as Query 3, using IN | IN | [fill in] | `outputs/query_04.png` |
| 5 | Products in categories 1 or 2 | IN | [fill in] | `outputs/query_05.png` |
| 6 | Customers not from USA, Germany or France | NOT IN | [fill in] | `outputs/query_06.png` |
| 7 | Products priced between 10 and 20 | BETWEEN | [fill in] | `outputs/query_07.png` |
| 8 | Orders placed in July 1996 | BETWEEN | [fill in] | `outputs/query_08.png` |
| 9 | Order lines with quantity 50 to 100 | BETWEEN | [fill in] | `outputs/query_09.png` |
| 10 | Customer names starting with A | LIKE | [fill in] | `outputs/query_10.png` |
| 11 | Products with "Chef" in the name | LIKE | [fill in] | `outputs/query_11.png` |
| 12 | Germany or France customers starting with B | IN + LIKE | [fill in] | `outputs/query_12.png` |

The full queries are in `queries.sql`.

## How I tested the operators
- **OR vs IN:** Query 3 (OR) and Query 4 (IN) return the same [fill in] rows, so IN is just a shorter way to write several ORs
- **IN vs NOT IN:** Query 6 returns [fill in] customers. Together with the USA, Germany and France customers it adds up to all 91 customers in the table
- **BETWEEN:** includes both end values, so a price of exactly 10 or 20 is returned

## What I learned
- `IN` is cleaner than a long chain of `OR` conditions
- `BETWEEN` includes both ends, which is useful for price ranges and date ranges
- `LIKE` with `%` finds text patterns, while `=` needs an exact match
- Checking the row counts shows quickly whether a filter is doing what I expect

## Files
- `queries.sql` – the 12 queries
- `outputs/` – a screenshot of each result
- `README.md`

## Tools used
SQL (Northwind sample database)

## Author
Rabia
