SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE 
  LEFT (OrderDateKey, 4) >= 2018
  order by OrderDateKey ASC