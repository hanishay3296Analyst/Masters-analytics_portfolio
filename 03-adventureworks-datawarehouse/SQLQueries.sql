-- 1. Category revenue and year-over-year change

-- Revenue per year and category
WITH CategoryYearRevenue AS (
    SELECT
        d.Year        AS OrderYear,
        p.CategoryName,
        SUM(f.SalesAmount) AS Revenue
    FROM dbo.FactSales   AS f
    JOIN dbo.DimProduct  AS p ON f.ProductID = p.ProductID
    JOIN dbo.DimDate     AS d ON f.OrderDate = d.[Date]
    GROUP BY
        d.Year,
        p.CategoryName
),

-- Self-join to get previous year's revenue
CategoryYearRevenueWithPrev AS (
    SELECT
        cur.OrderYear,
        cur.CategoryName,
        cur.Revenue           AS CurrentRevenue,
        prev.Revenue          AS PreviousRevenue
    FROM CategoryYearRevenue AS cur
    LEFT JOIN CategoryYearRevenue AS prev
        ON  cur.CategoryName = prev.CategoryName
        AND cur.OrderYear    = prev.OrderYear + 1
)

-- Final result with YoY change
SELECT
    OrderYear,
    CategoryName,
    CurrentRevenue,
    PreviousRevenue,
    CurrentRevenue - ISNULL(PreviousRevenue, 0) AS YoYChange
FROM CategoryYearRevenueWithPrev
ORDER BY
    CategoryName,
    OrderYear;

-- 2. Customer Purchasing patterns across regions.

WITH RegionYearStats AS (
    SELECT
        t.RegionName,
        d.Year AS OrderYear,
        COUNT(DISTINCT f.CustomerID) AS NoOfCustomers,
        COUNT(DISTINCT f.SalesOrderID) AS NoOfOrders,
        SUM(f.SalesAmount) AS TotalRevenue,
        AVG(f.SalesAmount) AS AvgOrderValue
    FROM dbo.FactSales     AS f
    JOIN dbo.DimCustomer   AS c ON f.CustomerID = c.CustomerID
    JOIN dbo.DimTerritory  AS t ON c.TerritoryID = t.TerritoryID
    JOIN dbo.DimDate       AS d ON f.OrderDate = d.[Date]
    GROUP BY
        t.RegionName,
        d.Year
)

SELECT
    RegionName,
    OrderYear,
    NoOfCustomers,
    NoOfOrders,
    TotalRevenue,
    AvgOrderValue
FROM RegionYearStats
ORDER BY
    RegionName,
    OrderYear;

-- 3. Discount levels vs sales volume by year

-- Compute discount percentage per order line with year
WITH LineDiscounts AS (
    SELECT
        d.Year AS OrderYear,
        f.SalesOrderID,
        f.ProductID,
        f.OrderQuantity,
        f.SalesAmount,
        f.DiscountAmount,
        CASE
            WHEN (f.SalesAmount + f.DiscountAmount) = 0 THEN 0
            ELSE f.DiscountAmount * 1.0
                 / (f.SalesAmount + f.DiscountAmount)
        END AS DiscountPct
    FROM dbo.FactSales AS f
    JOIN dbo.DimDate  AS d
        ON f.OrderDate = d.[Date]
),

-- Bucket into discount bands
DiscountBands AS (
    SELECT
        OrderYear,
        SalesOrderID,
        ProductID,
        OrderQuantity,
        SalesAmount,
        DiscountAmount,
        DiscountPct,
        CASE
            WHEN DiscountPct = 0 THEN '0%'
            WHEN DiscountPct > 0 AND DiscountPct <= 0.05 THEN '0-5%'
            WHEN DiscountPct > 0.05 AND DiscountPct <= 0.10 THEN '5-10%'
            ELSE '>10%'
        END AS DiscountBand
    FROM LineDiscounts
)

-- Aggregate by year and band
SELECT
    OrderYear,
    DiscountBand,
    COUNT(*)              AS NoOfLines,
    SUM(OrderQuantity)    AS TotalUnits,
    SUM(SalesAmount)      AS NetRevenue,
    SUM(DiscountAmount)   AS TotalDiscountValue
FROM DiscountBands
GROUP BY
    OrderYear,
    DiscountBand
ORDER BY
    OrderYear,
    DiscountBand;

-- 4. Customers with highest repeat purchase behaviour by year

-- Orders per customer per year
WITH CustomerYearOrders AS (
    SELECT
        d.Year AS OrderYear,
        f.CustomerID,
        COUNT(DISTINCT f.SalesOrderID) AS NoOfOrders,
        COUNT(*)                        AS NoOfLines,
        SUM(f.SalesAmount)             AS TotalRevenue
    FROM dbo.FactSales AS f
    JOIN dbo.DimDate   AS d
        ON f.OrderDate = d.[Date]
    GROUP BY
        d.Year,
        f.CustomerID
),

-- Keep only repeat customers (2+ orders in that year)
RepeatCustomers AS (
    SELECT
        OrderYear,
        CustomerID,
        NoOfOrders,
        NoOfLines,
        TotalRevenue
    FROM CustomerYearOrders
    WHERE NoOfOrders >= 2
)

-- Join to DimCustomer and show top customers per year
SELECT
    rc.OrderYear,
    rc.CustomerID,
    dc.CustomerName,
    dc.Email,
    rc.NoOfOrders,
    rc.NoOfLines,
    rc.TotalRevenue
FROM RepeatCustomers AS rc
JOIN dbo.DimCustomer AS dc
    ON rc.CustomerID = dc.CustomerID
ORDER BY
    rc.OrderYear,
    rc.NoOfOrders DESC,
    rc.TotalRevenue DESC;
