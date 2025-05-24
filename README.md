# Billing Data Warehouse Staging Area with PostgreSQL

Spin up a small, reproducible staging area for a star-schema data warehouse, load sample billing data, and run validation queries—all with a handful of shell commands.

---

## 1. What This Project Delivers
• A PostgreSQL database called **`billingDW`**  
• Star-schema DDL (2 dimension tables, 1 fact table)  
• Scripts to load data into each table  
• A verification script to confirm row counts  

---

## 2. Tech Stack
• PostgreSQL ≥ 13  
• Bash

---

## 3. Quick Start

```bash
# 0 ── Credentials
export PGPASSWORD=<postgres_password>

# 1 ── Create the database
createdb -h postgres -U postgres -p 5432 billingDW

# 2 ── Build schema
psql -h postgres -U postgres -p 5432 billingDW < star-schema.sql

# 3 ── Load data
psql -h postgres -U postgres -p 5432 billingDW < DimCustomer.sql
psql -h postgres -U postgres -p 5432 billingDW < DimMonth.sql
psql -h postgres -U postgres -p 5432 billingDW < FactBilling.sql

# 4 ── Validate
psql -h postgres -U postgres -p 5432 billingDW < verify.sql

```
