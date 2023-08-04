
--Cleaning DimCustomer table

SELECT c.[CustomerKey]
      ,g.City as [Customer City]
      ,g.[EnglishCountryRegionName] as [CustomerCountry]
	  ,c.[CustomerAlternateKey]
	  ,c.[FirstName]+ ' ' +c.[LastName] as [FullName]
      ,c.[BirthDate]
      ,case c.[MaritalStatus] when 'M' then 'Married' when 'S' then 'Single' end as [MaritalStatus]
      ,case c.[Gender] when 'M' Then 'Male' WHEN 'F' THEN 'Female' END AS Gender
	  --, case when c.[gender] = 'M' then 'Male' end as gg --> Two ways of using Case when
      ,c.[YearlyIncome]
      ,c.[TotalChildren]
      ,c.[NumberChildrenAtHome]
      ,c.[EnglishEducation] as [EducationLevel]
      ,c.[EnglishOccupation] as [Occupation]
      ,c.[HouseOwnerFlag]
      ,c.[NumberCarsOwned]
      ,c.[DateFirstPurchase]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  Left Join [AdventureWorksDW2019].[dbo].DimGeography as g
  ON c.GeographyKey = g.GeographyKey
order by c.[CustomerKey]