USE AdventureWorksDW2022;
GO

SELECT
    d.CalendarYear AS Anio,
    t.SalesTerritoryCountry AS Pais,
    SUM(f.SalesAmount) AS TotalVentas
FROM dbo.FactInternetSales AS f
INNER JOIN dbo.DimDate AS d
    ON f.OrderDateKey = d.DateKey
INNER JOIN dbo.DimSalesTerritory AS t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY
    d.CalendarYear,
    t.SalesTerritoryCountry
ORDER BY
    d.CalendarYear,
    TotalVentas DESC;
