# Sales & Inventory — PostgreSQL exercise

A comprehensive PostgreSQL exercise covering database schema design, data population, and 100 progressively challenging SQL queries across a retail sales and inventory domain.

---

## Schema

All objects live in the `assignment` schema.

### Tables

**`customers`**
| Column | Type | Description |
|---|---|---|
| `customer_id` | INT (PK) | Unique customer identifier |
| `first_name` | VARCHAR(50) | Customer's first name |
| `last_name` | VARCHAR(50) | Customer's last name |
| `email` | VARCHAR(100) | Email address |
| `phone_number` | VARCHAR(50) | Phone number |
| `registration_date` | DATE | Date the customer registered |
| `membership_status` | VARCHAR(10) | Tier: Bronze, Silver, or Gold |

**`products`**
| Column | Type | Description |
|---|---|---|
| `product_id` | INT (PK) | Unique product identifier |
| `product_name` | VARCHAR(100) | Product name |
| `category` | VARCHAR(50) | Category (Electronics, Appliances, Accessories) |
| `price` | DECIMAL(10,2) | Unit price |
| `supplier` | VARCHAR(100) | Supplier name |
| `stock_quantity` | INT | Available stock |

**`sales`**
| Column | Type | Description |
|---|---|---|
| `sale_id` | INT (PK) | Unique sale identifier |
| `customer_id` | INT (FK → customers) | Customer who made the purchase |
| `product_id` | INT (FK → products) | Product that was sold |
| `quantity_sold` | INT | Number of units sold |
| `sale_date` | DATE | Date of the sale |
| `total_amount` | DECIMAL(10,2) | Total sale value |

**`inventory`**
| Column | Type | Description |
|---|---|---|
| `product_id` | INT (PK, FK → products) | Links to the products table |
| `stock_quantity` | INT | Current stock level |

---

## Sample Data

| Table | Rows |
|---|---|
| `customers` | 50 |
| `products` | 15 |
| `sales` | 15 |
| `inventory` | 15 |

Products span three categories — **Electronics** (Laptop, Smartphone, Smart TV, etc.), **Appliances** (Washing Machine, Refrigerator, Microwave, etc.), and **Accessories** (Headphones, Wireless Mouse, Keyboard). Suppliers include Dell, Samsung, LG, Sony, Apple, Logitech, and others.

---

## Query Categories

The file contains 100 labelled SQL problems organised by increasing complexity:

| Range | Topic Area |
|---|---|
| 1–10 | Basic SELECT, filtering, aggregation (COUNT, SUM, AVG, MIN, MAX) |
| 11–20 | JOINs (INNER, multi-table), subqueries, stock checks |
| 21–30 | GROUP BY, HAVING, date filtering, membership-tier analysis |
| 31–40 | Date arithmetic, UNION, pattern matching (ILIKE), ordering |
| 41–50 | Sales by category/period, inventory vs. sales, top-N queries |
| 51–60 | Advanced subqueries, NOT IN / NOT EXISTS, multi-condition filters |
| 61–70 | CTEs (WITH), correlated subqueries, running totals |
| 71–80 | Revenue analysis, customer segmentation, seasonal trends |
| 81–90 | HAVING with subqueries, comparative aggregation |
| 91–100 | Window functions: RANK, NTILE, PERCENT_RANK, LAG, partition-based averages |

---

## Getting Started

### Prerequisites
- PostgreSQL 13 or later
- `psql` CLI or a GUI client (pgAdmin, DBeaver, TablePlus, etc.)

### Setup

```bash
# Connect to your PostgreSQL instance
psql -U <your_user> -d <your_database>

# Run the script
\i path/to/sales_inventory_postgreSQL.sql
```

Or run it directly from the terminal:

```bash
psql -U <your_user> -d <your_database> -f sales_inventory_postgreSQL.sql
```

The script will:
1. Create the `assignment` schema and set it as the active search path.
2. Create the four tables with primary and foreign key constraints.
3. Populate all tables with sample data.
4. Execute all 100 query exercises in sequence.

---

## Notes

- The script sets `search_path = assignment` globally, so table references in queries do not need to be schema-qualified.
- Some queries (e.g. Q17 — customer self-join, Q93 — consecutive months) are left as exercises or contain intentional placeholders for completion.
- Window function queries (Q91–Q100) require PostgreSQL 9.4+; all other queries are compatible with standard SQL.
