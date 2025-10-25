--Data cleaning
--checking null values
select * 
from public."salesData"
where 
  "Country" is null
  or "Price_per_Unit" is Null
  or "Quantity_Purchased" is NuLL
  or "Cost_Price" is null
  or "Discount_Applied" is null;

--deleting Null values
delete from public."salesData"
  where 
  "Country" is null
  or "Price_per_Unit" is Null
  or "Quantity_Purchased" is NuLL
  or "Cost_Price" is null
  or "Discount_Applied" is null;

--if want to add data
update public."salesData"
set "Quantity_Purached" = 3
where "transction_ID" = 876543433567;

--2
update public."salesData"
set "Price_per_unit" = (
  select avg(Price_per_unit)
  from public."salesData"
  where "Price_per_Unit" is not NULL
)
where "transction_ID" = 876543433567;

--check duplicates
select "Transaction_ID" , count(*) from public."salesData"
group by "Transaction_ID"
having count(*)>1 --no duplicates

--for deleting 
DELETE FROM public."salesData" 
WHERE "Transaction_ID" IN (
    SELECT "Transaction_ID" 
    FROM public."salesData" 
    GROUP BY "Transaction_ID" 
    HAVING COUNT(*) > 1
);


--Adding a new colum to the table "Total Amount"
alter table public."salesData" add
column "Total_Amount" Numeric(10,2);


--Calculating the total amount
update public."salesData"
set "Total_Amount" = ("Price_per_Unit" * "Quantity_Purchased")-"Discount_Applied"


--Profit column
alter table public."salesData" add
column "Profit" Numeric(10,2);

--Calculating the Profit
update public."salesData"
set "Profit" = "Total_Amount" - ("Cost_Price" + "Quantity_Purchased")


-------------Business Data Analysis---------------------

--1: sales revenue and profit by country between a specificc date
Select 
  "Country", 
  sum("Total_Amount") as Total_revenue,
  sum("Profit") as Profit
from public."salesData"
where "Date" between '2025-02-10' And '2025-02-14'
group by "Country"
order by "profit" asc

--2: Top 5 products

select "Product_Name",
sum("Quantity_Purchased") as "total_Product_Sold"
from public."salesData" 
group by "Product_Name"
order by "total_Product_Sold" desc
limit 5;

--3: 5 Best sales representative
select "Sales_Rep",
sum("Total_Amount") as "work"
from public."salesData" 
group by "Sales_Rep"
order by "work" desc
limit 5;

--4 Best store location for sales

select "Store_Location",
sum("Total_Amount") as "sales",
sum("Profit") as "Profit"
from public."salesData" 
group by "Store_Location"
order by "sales" desc
limit 5;

--5 Key sales and profit insights for selected period

Select 
      min("Total_Amount") as "Min Sales Values",
	  max("Total_Amount") as "Max Sales Values",
	  avg("Total_Amount") as "Avg Sales Values",
	  sum("Total_Amount") as "Total Sales",
	  min("Profit") as "Min Profit Values",
	  max("Profit") as "Max Profit Values",
	  avg("Profit") as "Avg Profit Values",
	  sum("Profit") as "Total Profits"
from public."salesData"
where "Date" between '2025-02-10' and '2025-02-14'

	  