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
      * Clean the data by handling missing values, standardizing country names, and removing hidden characters with `TRIM()`.
      * Restructure the data from a wide format to a long format for easier analysis using a `UNION ALL` statement.
      * Enrich the data by adding a `MonthNumber` column with a `CASE` statement to ensure correct chronological sorting.
      * Remove irrelevant summary rows using a `DELETE` statement.
3.  **Load & Analyze:** The cleaned data was connected to Power BI. Two key aggregation queries were written to summarize the data for dashboard visuals.

-----

## Challenges & Solutions

A key challenge was ensuring the map visual worked correctly. The initial data contained hidden spaces and non-standard country names (e.g., "Russian Federation"), which caused geocoding errors in Power BI. I solved this by writing SQL `UPDATE` queries using the `TRIM()` function and `CASE` statements to clean and standardize the data at the source. This is a best practice that ensures data quality before it reaches the visualization layer.

-----

## Future Improvements

  * Integrate data from multiple years to enable year-over-year trend analysis.
  * Enrich the data by adding a `Region` column (e.g., Europe, Asia) to perform analysis on key markets.

-----

## Data Source

The data for this project was sourced from the public monthly reports provided by the Sri Lanka Tourism Development Authority (SLTDA).

-----

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
## 📊 Final Dashboard


<img width="1478" height="808" alt="Dashboard" src="https://github.com/user-attachments/assets/38cdb840-3008-4019-a86c-3f9216b4c1fd" />

Below is an animated GIF showcasing the dashboard's interactivity.

![Demo](https://github.com/user-attachments/assets/61de801c-8a0d-4b9f-9bba-01ba46b96ec2)










