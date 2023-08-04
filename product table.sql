SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as [Product Item Code]
      ,p.[EnglishProductName] as [Product Name]
	  ,pc.EnglishProductCategoryName as [Product Category]
	  ,ps.EnglishProductSubcategoryName as [Sub Category]
      ,p.[Color] as [Product Color]
      ,p.[Size] as [Product Size]
      ,p.[ProductLine]
      ,p.[EnglishDescription] as [Product Description]
      ,Isnull (p.[Status],'Outdated') as [Product Status]

  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  Left Join [AdventureWorksDW2019].[dbo].DimProductSubcategory as ps
  ON p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey]
  Left Join [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc
  ON pc.ProductCategoryKey = ps.ProductCategoryKey
