SELECT
       C.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,C.[FirstName]
      --,[MiddleName]
      ,C.[LastName]
      ,C.[FirstName] + ' ' + C.[LastName] as [FullName]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , CASE C.[Gender]
          WHEN 'M' THEN 'Male' 
          WHEN 'F' THEN 'Female' 
      END as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,C.[DateFirstPurchase]
      --,C.[CommuteDistance]
      ,G.[City] as [CustomerCity]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as C
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] as G on G.GeographyKey = C.GeographyKey
  ORDER BY C.[CustomerKey] ASC 