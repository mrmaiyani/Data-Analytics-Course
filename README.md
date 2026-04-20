
<div align="center">

```
██████╗  █████╗ ████████╗ █████╗      █████╗ ███╗   ██╗ █████╗ ██╗  ██╗   ██╗████████╗██╗ ██████╗███████╗
██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗    ██╔══██╗████╗  ██║██╔══██╗██║  ╚██╗ ██╔╝╚══██╔══╝██║██╔════╝██╔════╝
██║  ██║███████║   ██║   ███████║    ███████║██╔██╗ ██║███████║██║   ╚████╔╝    ██║   ██║██║     ███████╗
██║  ██║██╔══██║   ██║   ██╔══██║    ██╔══██║██║╚██╗██║██╔══██║██║    ╚██╔╝     ██║   ██║██║     ╚════██║
██████╔╝██║  ██║   ██║   ██║  ██║    ██║  ██║██║ ╚████║██║  ██║███████╗██║      ██║   ██║╚██████╗███████║
╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═╝   ╚═╝ ╚═════╝╚══════╝
```

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Data%20Analytics%20Portfolio&fontSize=36&fontColor=fff&fontAlignY=38&desc=Python%20%7C%20SQL%20%7C%20Excel%20%7C%20Power%20BI&descAlignY=58&descColor=ffffffbb" width="100%"/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=18&pause=1000&color=58A6FF&center=true&vCenter=true&width=500&lines=Turning+Raw+Data+into+Decisions+%F0%9F%93%88;EDA+%7C+Dashboards+%7C+Predictive+Models;Always+Learning%2C+Always+Analysing+%F0%9F%94%8D" alt="Typing SVG" />

<br/>

![Profile Views](https://komarev.com/ghpvc/?username=yourusername&color=58A6FF&style=flat-square&label=Profile+Views)
&nbsp;
[![GitHub followers](https://img.shields.io/github/followers/yourusername?style=flat-square&color=58A6FF&label=Followers)](https://github.com/yourusername)

</div>

---

## 🧠 About Me

```python
analyst = {
    "name"      : "UTSAV MAIYANI",
    "role"      : "Data Analyst 📊",
    "location"  : "Surat, Gujarat 🇮🇳",
    "tools"     : ["Python", "SQL", "Excel", "Power BI"],
    "passion"   : "Turning messy data into clear business insights",
    "fun_fact"  : "I find patterns where others see noise 🔍"
}
```

---

## 🛠️ Tech Stack

**Languages & Databases**

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat-square&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00758F?style=flat-square&logo=mysql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=flat-square&logo=postgresql&logoColor=white)

**Python Libraries**

![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=flat-square&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-11557C?style=flat-square&logo=python&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-3776AB?style=flat-square&logo=python&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=flat-square&logo=scikit-learn&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-3F4F75?style=flat-square&logo=plotly&logoColor=white)

**BI & Reporting**

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat-square&logo=microsoft-excel&logoColor=white)

**Tools**

![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=flat-square&logo=jupyter&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-007ACC?style=flat-square&logo=visual-studio-code&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)

---

## 🚀 Featured Projects

| Project | Tools | Highlights |
|---|---|---|
| 🔵 **Customer Churn Predictor** | Python, Scikit-learn | 87% accuracy · 23% churn reduction |
| 🟡 **Executive KPI Dashboard** | Power BI, DAX | 20+ KPIs · drill-through · mobile layout |
| 🟦 **Sales Pipeline Report** | SQL, PostgreSQL | 8 tables · window functions · CTEs |
| 🟩 **Inventory Tracker** | Excel, Power Query | 500+ SKUs · 60% time saved |

---

## 💻 Code Showcase

<details>
<summary>🐍 Python — EDA Snapshot</summary>

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('sales_data.csv', parse_dates=['order_date'])

# Feature engineering
df['revenue'] = df['units'] * df['price']
df['month']   = df['order_date'].dt.to_period('M')

# Monthly revenue trend
monthly = df.groupby('month')['revenue'].sum()

fig, axes = plt.subplots(1, 2, figsize=(12, 4))
monthly.plot(kind='bar', color='#378ADD', ax=axes[0])
axes[0].set_title('Monthly Revenue')

sns.histplot(df['revenue'], bins=30, kde=True, color='#1D9E75', ax=axes[1])
axes[1].set_title('Revenue Distribution')

plt.tight_layout()
plt.show()
```

</details>

<details>
<summary>🗄️ SQL — Window Functions & CTEs</summary>

```sql
WITH regional_sales AS (
    SELECT
        region,
        SUM(revenue)                                AS total_revenue,
        COUNT(DISTINCT order_id)                    AS total_orders,
        RANK() OVER (ORDER BY SUM(revenue) DESC)    AS revenue_rank,
        SUM(SUM(revenue)) OVER ()                   AS grand_total
    FROM sales
    WHERE order_date >= CURRENT_DATE - INTERVAL '90 days'
    GROUP BY region
)
SELECT
    region,
    total_revenue,
    total_orders,
    revenue_rank,
    ROUND(100.0 * total_revenue / grand_total, 1)   AS pct_of_total
FROM regional_sales
ORDER BY revenue_rank
LIMIT 5;
```

</details>

<details>
<summary>📊 DAX — Power BI Measures</summary>

```dax
-- Year-over-Year Growth %
YoY Growth % =
VAR Current = [Total Revenue]
VAR Prior    = CALCULATE([Total Revenue], SAMEPERIODLASTYEAR('Date'[Date]))
RETURN IF(NOT ISBLANK(Prior), DIVIDE(Current - Prior, Prior), BLANK())

-- Rolling 3-Month Average
Rolling 3M Avg =
AVERAGEX(
    DATESINPERIOD('Date'[Date], LASTDATE('Date'[Date]), -3, MONTH),
    [Total Revenue]
)
```

</details>

---

## ⚡ Skills Overview

| Skill | Level |
|---|---|
| 🧹 Data Cleaning & Wrangling | `████████░░` Advanced |
| 🔍 Exploratory Data Analysis | `████████░░` Advanced |
| 📊 Dashboard & Report Design | `█████████░` Expert |
| 🗄️ SQL Querying | `████████░░` Advanced |
| ⚙️ Automation & Scripting | `███████░░░` Proficient |
| 🤖 Predictive Modelling | `██████░░░░` Intermediate |

---

## 📂 Repo Structure

```
📦 data-analytics-portfolio/
 ├── 📂 python/
 │   ├── 01_eda/           # Exploratory analysis notebooks
 │   ├── 02_cleaning/      # Data wrangling scripts
 │   └── 03_ml_models/     # Scikit-learn models
 ├── 📂 sql/
 │   └── queries/          # Business SQL queries
 ├── 📂 excel/
 │   └── dashboards/       # Excel workbooks & pivot tables
 ├── 📂 powerbi/
 │   └── reports/          # .pbix files & screenshots
 └── 📄 README.md
```

---

## 📈 GitHub Stats

<div align="center">

<img src="https://github-readme-stats.vercel.app/api?username=yourusername&show_icons=true&theme=github_dark&hide_border=true&bg_color=0D1117&title_color=58A6FF&icon_color=58A6FF&text_color=8B949E" width="48%"/>
&nbsp;
<img src="https://github-readme-stats.vercel.app/api/top-langs/?username=yourusername&layout=compact&theme=github_dark&hide_border=true&bg_color=0D1117&title_color=58A6FF&text_color=8B949E&langs_count=5" width="36%"/>

<br/><br/>

<img src="https://github-readme-streak-stats.herokuapp.com?user=yourusername&theme=github-dark-blue&hide_border=true&background=0D1117&ring=58A6FF&fire=58A6FF&currStreakLabel=58A6FF" width="55%"/>

</div>

---

## 📬 Connect With Me

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/utsav-maiyani-a463a9374)
&nbsp;
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:utsavmaiyani1@gmail.com)
&nbsp;
[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=for-the-badge&logo=vercel&logoColor=white)](mrmaiyani.github.io/utsav_maiyani_1010)
&nbsp;
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/mrmaiyani)

</div>

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>

*"Without data, you're just another person with an opinion." — W. Edwards Deming*

</div>


