USE AdventureWorksDW2022;
GO

SELECT
    d.CalendarYear AS Anio,
    MIN(d.FullDateAlternateKey) AS PrimeraVenta,
    MAX(d.FullDateAlternateKey) AS UltimaVenta,
    COUNT(*) AS RegistrosVentas,
    COUNT(DISTINCT d.DateKey) AS DiasConVentas,
    SUM(f.SalesAmount) AS TotalVentas
FROM dbo.FactInternetSales AS f
INNER JOIN dbo.DimDate AS d
    ON f.OrderDateKey = d.DateKey
GROUP BY
    d.CalendarYear
ORDER BY
    d.CalendarYear;
