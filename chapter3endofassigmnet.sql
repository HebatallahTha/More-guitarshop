-- Chapter 3 end of assignment upload CIS 111 03 Hebatallah Tharhan
USE  Cis111_GuitarShop --make sure to always add the use statment so points arent deducted and so the computer can use the right file!
--Query1 
Select ProductCode, ProductName, ListPrice, DiscountPercent --select the three
From Products --from the product table
Order by ListPrice DESC; --ordering by listprice in descednind order
--Query 2
Select LastName + ', '+ FirstName as FullName --concating the last name w the first name 
From Customers --from customer table
Where LastName like '[M-Z]%' --sorting the result lastname so only m-z is displayed
Order By LastName ASC; --order by last name in ascending order
--Query 3
Select ProductName, ListPrice, DateAdded --select the three 
From Products --product table
Where ListPrice > 500 and ListPrice < 2000 --greater than 500 les than 2000
Order By DateAdded DESC; --order by dateadded descending order
--Query 4
--selecting the three and then doing the equations, listp multiply discount per to get discount amount, then list price - discount amount to get the discount price!
Select ProductName, ListPrice, DiscountPercent, (ListPrice * DiscountPercent) as DiscountAmount, (ListPrice - (ListPrice * DiscountPercent)) as DiscountPrice
From Products --from prodcut tables
Order By DiscountPrice DESC; --order by discount price in descending order
--Query 5
--selecting the first three, then item price multip by quantity to get price total, discontamt multiplied by quantity for the discount total, then I did itemprice minus discount amoutn adn then multiply qunatity as the itemtotal
Select ItemID,  ItemPrice, DiscountAmount, Quantity, (ItemPrice * Quantity) as PriceTotal, (DiscountAmount * Quantity) as DiscountTotal, ((ItemPrice - DiscountAmount) * Quantity) as ItemTotal
From OrderItems --from the order items table
Where ((ItemPrice - DiscountAmount) * Quantity) > 500 --where the item total is greater than 500
Order By ItemTotal DESC; --order by itemtotals descending order
--Query 6
Select OrderID, OrderDate, ShipDate --select the three
From Orders --from order table
Where ShipDate is Null; --where shipdates null 
--Query 7
Select 100 as Price, 0.07 as TaxRate, (100*0.07) as TaxAmount, (100*0.07) + (100) Total --selecting price and making it 100 dollars, 0.07 as tax rate, the tax amt eq, the total eq


