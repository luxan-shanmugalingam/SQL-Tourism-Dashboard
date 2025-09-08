# SQL-Powered Tourism Dashboard for Sri Lanka

## 📖 Description

This project is an end-to-end data analysis pipeline that analyzes tourist arrival data for Sri Lanka. The goal is to identify key market trends and seasonal patterns to provide actionable insights for the tourism industry. The final output is an interactive dashboard built in Power BI.

---

## 🛠️ Tools Used

* **Database:** SQLite
* **Data Transformation & Analysis:** SQL
* **Data Visualization:** Power BI

---

## ⚙️ Process

1.  **Extract:** Raw tourism data was sourced as a CSV file from the Sri Lanka Tourism Development Authority.
2.  **Transform:** The data was loaded into an SQLite database. SQL queries were written to:
    * Clean the data by handling missing values and standardizing country names.
    * Restructure the data from a wide format to a long format for easier analysis.
    * Remove irrelevant summary rows.
3.  **Load & Analyze:** Two key aggregation queries were written to summarize the data, calculating total arrivals by country and by month. These queries will be loaded into Power BI to power the dashboard visuals.

---

## 쿼리 SQL Queries

### Query 1: Top 10 Countries by Arrivals

```sql
SELECT
	Country,
	SUM(CAST(REPLACE(Arrivals, ',', '') AS INTEGER)) AS Total_Arrivals
FROM
	arrivals_long
GROUP BY
	Country
ORDER BY
	Total_Arrivals DESC
LIMIT 10;
```

### Query 2: Monthly Arrival Trend

```sql
SELECT
	Month,
	SUM(CAST(REPLACE(Arrivals, ',', '') AS INTEGER)) AS Total_Arrivals
FROM
	arrivals_long
GROUP BY
	Month
ORDER BY
	CASE Month
		WHEN 'January'  	THEN 1
		WHEN 'February' 	THEN 2
		WHEN 'March' 		THEN 3
		WHEN 'April' 		THEN 4
		WHEN 'May' 			THEN 5
		WHEN 'June' 		THEN 6
		WHEN 'July' 		THEN 7
		WHEN 'August' 		THEN 8
		WHEN 'September' 	THEN 9
		WHEN 'October' 		THEN 10
		WHEN 'November' 	THEN 11
		WHEN 'December' 	THEN 12
	END ASC;
```

---

## 📊 Dashboard

*(A screenshot of the final Power BI dashboard will be added here later.)*
