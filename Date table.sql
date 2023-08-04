--Cleaning the DimDate table
SELECT [DateKey]
      ,[FullDateAlternateKey] as [Date]
      ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as [Day]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName] as [Month]
	  ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear between 2019 and 2021;