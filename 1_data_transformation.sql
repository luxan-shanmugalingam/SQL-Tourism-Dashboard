CREATE TABLE arrivals_long AS
SELECT Country, 'January' AS Month, Jan AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'February' AS Month, Feb AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'March' AS Month, Mar AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'April' AS Month, April AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'May' AS Month, May AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'June' AS Month, June AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'July' AS Month, July AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'August' AS Month, August AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'September' AS Month, Sep AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'October' AS Month, Oct AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'November' AS Month, Nov AS Arrivals FROM arrivals_2024
UNION ALL
SELECT Country, 'December' AS Month, Dec AS Arrivals FROM arrivals_2024;
