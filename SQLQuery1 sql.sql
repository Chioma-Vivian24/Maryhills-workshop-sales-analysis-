Use Chioma
go


select * from SalesOrders
select * from Customers
select * from Regions
select * from Products 

--(1) TOTAL REVENUE GENERARATED BY CHANNELS
select SO.Channel, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
group by Channel
order by Total_Revenue desc

--2. T0TAL REVENUE GENERATED ON DIFFERENT SHIPDATES
select Shipdate, sum(TotalRevenue) total_revenue from SalesOrders
group by ShipDate
order by total_revenue desc

--3. TOP REVENUE GENERATING PRODUCTS
select P.ProductName, SUM(SO.TotalRevenue) Total_Revenue  from SalesOrders SO  
join Products P on SO.ProductID = P.ProductID
group by P.ProductName
ORDER by Total_Revenue desc

--4. TOP REVENUE GENERATING PRODUCTS
select P.ProductName, SUM(SO.TotalRevenue) Total_Revenue  from SalesOrders SO  
join Products P on SO.ProductID = P.ProductID
group by P.ProductName
ORDER by Total_Revenue asc


--5. TOP SELLING PRODUCTS
select P.ProductName,  sum(SO.OrderQuantity) ORDER_QTY  from SalesOrders SO
join Products P on SO.ProductID = P.ProductID
GROUP BY P.ProductName
order by ORDER_QTY desc

--6. TOP REVENUE GENERATING CITIES
select R.City, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Regions R on  SO.RegionID = R.RegionID
Group by R.City
order by Total_Revenue desc

--7. LOW REVENUE GENERATING CITIES
select R.City, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Regions R on  SO.RegionID = R.RegionID
Group by R.City
order by Total_Revenue asc


--7. HIGH PURCHASING CITIES
select R.City, sum(SO.OrderQuantity) ORDER_QTY from SalesOrders SO
join Regions R on SO.RegionID =R. RegionID
group by R.City
Order by ORDER_QTY desc

--8. TOP CUSTOMERS BY ORDER QUANTITY
select C.CustomerNames, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Customers c on SO.CustomerID = C.CustomerID
group by C.CustomerNames
Order by Total_Revenue desc

--9. ORDER QUANTITIES PLACED ON DIFFERENT ORDERDATES 
select OrderDate,sum(OrderQuantity) ORDER_QTY from SalesOrders
group by OrderDate
Order by ORDER_QTY desc

--10. TOTAL UNIT COST BY CHANNEL
select Channel, sum(TotalUnitCost) Totalunitcost from SalesOrders
group by Channel
Order by Totalunitcost 


--11. TOTAL REVENUE BY CURRENCYCODE
select Currencycode, sum(TotalRevenue) Total_Revenue from SalesOrders
group by CurrencyCode
Order  by Total_Revenue desc

--12.  PROFITABILITY
select sum(TotalUnitCost) Totalunitcost, sum(TotalRevenue) Total_Revenue from SalesOrders





Use Chioma
go


select * from SalesOrders
select * from Customers
select * from Regions
select * from Products 

--(1) TOTAL REVENUE GENERARATED BY CHANNELS
select SO.Channel, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
group by Channel
order by Total_Revenue desc

--2. T0TAL REVENUE GENERATED ON DIFFERENT SHIPDATES
select Shipdate, sum(TotalRevenue) total_revenue from SalesOrders
group by ShipDate
order by total_revenue desc

--3. TOP REVENUE GENERATING PRODUCTS
select P.ProductName, SUM(SO.TotalRevenue) Total_Revenue  from SalesOrders SO  
join Products P on SO.ProductID = P.ProductID
group by P.ProductName
ORDER by Total_Revenue desc

--4. TOP REVENUE GENERATING PRODUCTS
select P.ProductName, SUM(SO.TotalRevenue) Total_Revenue  from SalesOrders SO  
join Products P on SO.ProductID = P.ProductID
group by P.ProductName
ORDER by Total_Revenue asc


--5. TOP SELLING PRODUCTS
select P.ProductName,  sum(SO.OrderQuantity) ORDER_QTY  from SalesOrders SO
join Products P on SO.ProductID = P.ProductID
GROUP BY P.ProductName
order by ORDER_QTY desc

--6. TOP REVENUE GENERATING CITIES
select R.City, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Regions R on  SO.RegionID = R.RegionID
Group by R.City
order by Total_Revenue desc

--7. LOW REVENUE GENERATING CITIES
select R.City, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Regions R on  SO.RegionID = R.RegionID
Group by R.City
order by Total_Revenue asc


--7. HIGH PURCHASING CITIES
select R.City, sum(SO.OrderQuantity) ORDER_QTY from SalesOrders SO
join Regions R on SO.RegionID =R. RegionID
group by R.City
Order by ORDER_QTY desc

--8. TOP CUSTOMERS BY ORDER QUANTITY
select C.CustomerNames, sum(SO.TotalRevenue) Total_Revenue from SalesOrders SO
join Customers c on SO.CustomerID = C.CustomerID
group by C.CustomerNames
Order by Total_Revenue desc

--9. ORDER QUANTITIES PLACED ON DIFFERENT ORDERDATES 
select OrderDate,sum(OrderQuantity) ORDER_QTY from SalesOrders
group by OrderDate
Order by ORDER_QTY desc

--10. TOTAL UNIT COST BY CHANNEL
select Channel, sum(TotalUnitCost) Totalunitcost from SalesOrders
group by Channel
Order by Totalunitcost 


--11. TOTAL REVENUE BY CURRENCYCODE
select Currencycode, sum(TotalRevenue) Total_Revenue from SalesOrders
group by CurrencyCode
Order  by Total_Revenue desc





