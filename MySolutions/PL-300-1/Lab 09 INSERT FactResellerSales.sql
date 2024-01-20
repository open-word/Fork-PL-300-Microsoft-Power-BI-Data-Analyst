Use AdventureWorksDW2020;
go

UPDATE [dbo].[FactResellerSales] SET [ShipDate] = DATEADD(DAY, 7, [OrderDate]) WHERE [ShipDate] IS NULL;

--Add June 2020 sales
BULK INSERT [dbo].[FactResellerSales] FROM 'C:\github.com\open-word\PL-300-Microsoft-Power-BI-Data-Analyst\Allfiles\Resources\ResellerSales_202006.csv' WITH
(
	DATAFILETYPE = 'widechar'
	,FIRSTROW = 2
	,FIELDTERMINATOR = ','
	,ROWTERMINATOR = '\n'
	,TABLOCK
);
GO

select sum(salesamount) from FactResellerSales

--delete from FactResellerSales where OrderDate >= '2020-06-01'