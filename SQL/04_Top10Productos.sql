USE AdventureWorksDW2022;
GO

SELECT TOP 10
    p.EnglishProductName AS Producto,
    SUM(f.OrderQuantity) AS CantidadVendida,
    SUM(f.SalesAmount) AS TotalVentas
FROM dbo.FactInternetSales AS f
INNER JOIN dbo.DimProduct AS p
    ON f.ProductKey = p.ProductKey
INNER JOIN dbo.DimDate AS d
    ON f.OrderDateKey = d.DateKey
WHERE d.CalendarYear BETWEEN 2011 AND 2013
GROUP BY
    p.EnglishProductName
ORDER BY
    TotalVentas DESC;
