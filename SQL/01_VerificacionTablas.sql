USE AdventureWorksDW2022;
GO

SELECT
    TABLE_SCHEMA AS Esquema,
    TABLE_NAME AS NombreTabla
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
AND TABLE_NAME IN (
    'FactInternetSales',
    'DimDate',
    'DimProduct',
    'DimSalesTerritory'
)
ORDER BY TABLE_NAME;
