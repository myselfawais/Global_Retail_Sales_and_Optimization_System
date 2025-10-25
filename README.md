# Global Retail Sales & Profit Optimization Dashboard

## 📊 Project Overview

The **Global Retail Sales & Profit Optimization Dashboard** is a full-cycle data analytics project built using SQL for data transformation and Power BI for interactive reporting. It analyzes retail performance across 6 countries — India, USA, UK, China, Nigeria, and Canada — to uncover key drivers of sales, profit, and customer behavior.

The goal of this project is to optimize profitability, identify top-performing stores, categories, and payment methods, and reveal seasonal trends to help decision-makers make data-driven strategic choices.

## 🧠 Business Objectives

- Identify top-performing countries, stores, and products based on sales and profit
- Analyze the impact of discounts on overall profitability
- Compare payment method profitability to optimize transaction efficiency
- Detect seasonal sales patterns and country-level performance trends
- Enable executives to monitor key KPIs in real-time through a dynamic dashboard

## 🗂️ Dataset Description

The dataset consolidates transactional data from six countries, containing:

| Column Name | Description |
|-------------|-------------|
| Transaction_ID | Unique identifier for each sale |
| Date | Transaction date |
| Country | Country of sale |
| Store_Location | Store location name |
| Product_Name | Product sold |
| Quantity_Purchased | Units purchased |
| Price_per_Unit | Sale price per item |
| Cost_Price | Cost per item |
| Discount_Applied | Discount applied per sale |
| Payment_Method | Type of payment used |
| Sales_Rep | Sales representative |
| Total_Amount | Computed: (Price_per_Unit * Quantity_Purchased) - Discount_Applied |
| Profit | Computed: Total_Amount - (Cost_Price + Quantity_Purchased) |

## 🧹 Data Cleaning (SQL)

Performed in PostgreSQL:

- Removed null and duplicate records
- Standardized product and country names
- Added calculated columns (Total_Amount, Profit)
- Validated data consistency across multiple country files
- Combined all the files together

# 📊 Power BI Dashboard Overview

## Key Performance Indicators (KPIs)

| KPI | Value |
|-----|-------|
| **Total Sales** | 229.36K |
| **Total Profit** | 197.31K |
| **Total Orders** | 161 |
| **Total Discount** | 4.05K |
| **Average Order Value** | 1.42K |

## 📈 Dashboard Visuals

- **Sales by Month**: Identify monthly fluctuations in revenue
- **Profit by Month**: Compare monthly profitability trends  
- **Sales by Category**: Highlights top-performing product categories
- **Payment Method Distribution**: Shows customer transaction preferences
- **Store & Country Filters**: Enable deep-dives by market or region

## 🧰 Tech Stack

| Technology | Purpose |
|------------|---------|
| **SQL (PostgreSQL)** | Data cleaning, aggregation, and analysis |
| **Power BI** | Dashboard design and KPI tracking |
| **Excel/CSV** | Raw data sources |
| **DAX** | Calculated measures and KPIs |

## 💡 Key Insights

- **Credit Card payments** generated the highest profit margin (**35.1%**)
- **March** recorded the peak sales month (**45K**) across all markets
- **Home & Kitchen** dominated category performance with **47K sales**
- **India and US stores** contributed over **60%** of total revenue

## 🚀 How to Recreate

1. **Import** all CSV files into PostgreSQL
2. **Connect** PostgreSQL (or use provided queries.sql)
3. **Create relationships** using the Country and Store_Location fields
4. **Build KPIs** using DAX
5. **Publish** the dashboard or export as .pbix

---

## 🧑‍💻 Author

**Muhammad Awais**  
Data Analyst | SQL | Power BI | Data Visualization  
📍 Based in Hong Kong  
🔗 [LinkedIn Profile] (https://www.linkedin.com/in/muhammad-awais-40785b346/)
