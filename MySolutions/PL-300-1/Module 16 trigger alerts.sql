use AdventureWorksDW2020;
go

select sum(TotalProductCost) from FactResellerSales
update FactResellerSales set TotalProductCost = TotalProductCost * 10