
<div align="center">

```
██████╗  █████╗ ████████╗ █████╗      █████╗ ███╗   ██╗ █████╗ ██╗  ██╗   ██╗████████╗██╗ ██████╗███████╗
██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗    ██╔══██╗████╗  ██║██╔══██╗██║  ╚██╗ ██╔╝╚══██╔══╝██║██╔════╝██╔════╝
██║  ██║███████║   ██║   ███████║    ███████║██╔██╗ ██║███████║██║   ╚████╔╝    ██║   ██║██║     ███████╗
██║  ██║██╔══██║   ██║   ██╔══██║    ██╔══██║██║╚██╗██║██╔══██║██║    ╚██╔╝     ██║   ██║██║     ╚════██║
██████╔╝██║  ██║   ██║   ██║  ██║    ██║  ██║██║ ╚████║██║  ██║███████╗██║      ██║   ██║╚██████╗███████║
╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═╝   ╚═╝ ╚═════╝╚══════╝
```

### 📊 Turning Raw Data into Real Decisions

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

</div>

---

## 🚀 Project Overview

> **"Data is the new oil — but only if you know how to refine it."**

This project performs end-to-end **sales data analytics** on an e-commerce store, uncovering insights around revenue, customer behavior, product performance, and order trends using **SQL queries** on a structured relational database.

---

## 📁 Database Schema

```
📦 ecommerce_db
 ┣ 📋 customers        → customer_id, name, email, city
 ┣ 📋 products         → product_id, product_name, category, price
 ┣ 📋 orders           → order_id, customer_id, order_date, status
 ┗ 📋 order_items      → item_id, order_id, product_id, quantity
```

---

## 📊 Key Metrics Dashboard

| Metric | Value |
|---|---|
| 💰 **Total Revenue** | ₹21,225.00 |
| ❌ **Cancelled Orders** | 3 |
| 🛒 **Top Product** | Python Hoodie (₹3,998) |
| 👑 **Top Customer** | Simran Kaur (₹3,198) |
| 📦 **Most Sold Item** | DSA Notebook / SQL Cheat Sheet / Terminal Stickers (3 units each) |

---

## 💰 Total Revenue

```sql
SELECT SUM(p.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status != 'Cancelled';
```

**Result:**

| total_revenue |
|:---:|
| `21225.00` |

---

## 🏆 Revenue by Product (Top 15)

```sql
SELECT p.product_name,
       SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status != 'Cancelled'
GROUP BY p.product_name
ORDER BY revenue DESC;
```

**Result:**

| # | 🛍️ Product Name | 💵 Revenue |
|:---:|---|:---:|
| 1 | Python Hoodie | ₹3,998.00 |
| 2 | AI Nerd T-Shirt | ₹3,198.00 |
| 3 | Late Night Hoodie | ₹2,199.00 |
| 4 | Linux Hoodie | ₹2,099.00 |
| 5 | Algorithm T-Shirt | ₹1,499.00 |
| 6 | DSA Notebook | ₹1,497.00 |
| 7 | Keyboard Mat | ₹999.00 |
| 8 | Coder Bottle | ₹899.00 |
| 9 | SQL Cheat Sheet | ₹897.00 |
| 10 | Python Socks | ₹798.00 |
| 11 | Whiteboard Notebook | ₹699.00 |
| 12 | Debugging Mug | ₹599.00 |
| 13 | Clean Code Notebook | ₹599.00 |
| 14 | Terminal Stickers | ₹597.00 |
| 15 | Sticker Pack | ₹498.00 |

---

## 👤 Top Customers by Spending

```sql
SELECT c.name,
       SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status != 'Cancelled'
GROUP BY c.name
ORDER BY total_spent DESC;
```

**Result:**

| 🏅 Rank | 👤 Customer | 💳 Total Spent |
|:---:|---|:---:|
| 🥇 1 | Simran Kaur | ₹3,198.00 |
| 🥈 2 | Amit Sharma | ₹(see DB) |
| 🥉 3 | Riya Sen | ₹2,199.00 |
| 4 | Vikram Singh | ₹2,099.00 |
| 5 | Mehul Joshi | ₹1,999.00 |
| 6 | Rahul Khan | ₹1,499.00 |
| 7 | Neha Verma | ₹1,098.00 |
| 8 | Karan Mehta | ₹999.00 |
| 9 | Isha Kapoor | ₹998.00 |
| 10 | Saurabh Verma | ₹899.00 |
| 11 | Rohit Gupta | ₹897.00 |
| 12 | Aditya Malhotra | ₹798.00 |
| 13 | Mohit Jain | ₹747.00 |
| 14 | Alok Mishra | ₹699.00 |
| 15 | Yash Tiwari | ₹599.00 |

---

## 📦 Units Sold by Product

```sql
SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY p.product_name
ORDER BY total_sold DESC;
```

**Result:**

| 🛍️ Product Name | 📦 Units Sold | 📊 Bar |
|---|:---:|---|
| DSA Notebook | 3 | `███████████████` |
| SQL Cheat Sheet | 3 | `███████████████` |
| Terminal Stickers | 3 | `███████████████` |
| Python Hoodie | 2 | `██████████` |
| Sticker Pack | 2 | `██████████` |
| AI Nerd T-Shirt | 2 | `██████████` |
| Bug Hunter Mug | 2 | `██████████` |
| Python Socks | 2 | `██████████` |
| Java Hoodie | 1 | `█████` |
| Debugging Mug | 1 | `█████` |
| Code Like a Pro | 1 | `█████` |
| Algorithm T-Shirt | 1 | `█████` |
| GitHub Cap | 1 | `█████` |
| Keyboard Mat | 1 | `█████` |
| Linux Hoodie | 1 | `█████` |
| Whiteboard Notebook | 1 | `█████` |
| Coder Bottle | 1 | `█████` |
| Late Night Hoodie | 1 | `█████` |
| DSA Flash Cards | 1 | `█████` |
| Clean Code Notebook | 1 | `█████` |

---

## ❌ Cancelled Orders

```sql
SELECT COUNT(*) AS cancelled_orders
FROM orders
WHERE status = 'Cancelled';
```

**Result:**

| cancelled_orders |
|:---:|
| `3` |

---

## 💡 Key Insights

```
┌─────────────────────────────────────────────────────────────────┐
│                      BUSINESS INSIGHTS                          │
├─────────────────────────────────────────────────────────────────┤
│  ✅ Hoodies & T-Shirts drive the most revenue (apparel wins!)   │
│  ✅ Notebooks & Stickers are the most sold (volume leaders)     │
│  ✅ Simran Kaur is the #1 VIP customer                         │
│  ✅ Only 3 cancellations — great order fulfillment rate!        │
│  ✅ Total revenue of ₹21,225 across all completed orders        │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| ![MySQL](https://img.shields.io/badge/MySQL-Query%20Engine-4479A1?logo=mysql&logoColor=white) | Writing & running SQL queries |
| ![MySQL Workbench](https://img.shields.io/badge/MySQL%20Workbench-IDE-00758F?logo=mysql&logoColor=white) | Visual query interface |
| ![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?logo=github&logoColor=white) | Project hosting |

---

## 📂 Project Structure

```
📁 data-analytics-project/
 ┣ 📄 README.md               ← You are here
 ┣ 📄 schema.sql              ← Database & table creation
 ┣ 📄 insert_data.sql         ← Sample data insertion
 ┗ 📄 queries.sql             ← All analytical queries
```

---

## ▶️ How to Run

```bash
# Step 1: Clone the repository
git clone https://github.com/mrmaiyani/Data-Analytics-Course.git

# Step 2: Open MySQL Workbench or your SQL client

# Step 3: Run schema creation
source schema.sql

# Step 4: Insert sample data
source insert_data.sql

# Step 5: Run analytics queries
source queries.sql
```

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you'd like to change.

---

## 📜 License

This project is licensed under the **MIT License** — feel free to use and modify.

---

<div align="center">

**Made with ❤️ and SQL**

⭐ *If you found this useful, give it a star!* ⭐

</div>
