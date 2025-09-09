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