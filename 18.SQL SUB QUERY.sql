--SUB QUERY

Create Table tblProducts
(
 [Id] int identity primary key,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
);

Insert into tblProducts values ('TV', '52 inch black color LCD TV'),
							   ('Laptop', 'Very thin black color acer laptop'),
							   ('Desktop', 'HP high performance desktop');

Create Table tblProductSales
(
 Id int primary key identity,
 ProductId int foreign key references tblProducts(Id),
 UnitPrice int,
 QuantitySold int
);

Insert into tblProductSales values (3, 450, 5),
								   (2, 250, 7),
								   (3, 450, 4),
								   (3, 450, 9);

SELECT * FROM tblProducts;
SELECT * FROM tblProductSales;


--Write a query to retrieve products that are not at all sold?

Select [Id], [Name], [Description]
from tblProducts
where Id not in (Select Distinct ProductId from tblProductSales);

--Write a query to retrieve products that are sold?

Select [Id], [Name], [Description]
from tblProducts
where Id in (Select Distinct ProductId from tblProductSales);

--Most of the times subqueries can be very easily replaced with joins. The above query is rewritten using joins and produces the same results. 

Select tblProducts.[Id], [Name], [Description]
from tblProducts 
left join tblProductSales
on tblProducts.Id = tblProductSales.ProductId
where tblProductSales.ProductId IS NULL;


--Let us now discuss about using a sub query in the SELECT clause. Write a query to retrieve the NAME and TOTALQUANTITY sold, using a subquery.

Select [Name],
(Select SUM (QuantitySold) from tblProductSales where ProductId = tblProducts.Id) as TotalQuantity
from tblProducts
order by Name;

--Query with an equivalent join that produces the same result as above.

Select [Name], SUM (QuantitySold) as TotalQuantity
from tblProducts
left join tblProductSales
on tblProducts.Id = tblProductSales.ProductId
group by [Name]
order by Name;