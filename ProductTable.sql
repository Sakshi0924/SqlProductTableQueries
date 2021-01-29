use WFADotNet;

--Q.1)Create a table Product
Create table Product(
	ProductId int not null primary Key identity(1,1),
	Description varchar(30) not null unique,
	Setqty int not null check(setqty=1 or setqty=5 or setqty=10) Default 1,
	Rate decimal(10,2) null check(rate>50 And rate<=5000)
	)

--Q.2)Insert 20 records in the above Product table
insert into Product values('Pencils',5,123.45)
insert into Product values('Pens',10,899.23)
insert into Product values('Scale',1,837.23)
insert into Product values('Erasers',10,199.34)
insert into Product values('Tables',1,345.23)
insert into Product values('TVs',10,836.38)
insert into Product values('Earphones',5,298.33)
insert into Product values('Fan',5,321.45)
insert into Product values('Laptops',1,344.05)
insert into Product values('Monitor',5,833.37)
insert into Product values('Keyboard',10,736.93)
insert into Product values('Charger',5,244.12)
insert into Product values('Mouse',5,938.23)
insert into Product values('Printer',5,233.23)
insert into Product values('Pendrives',10,333.23)
insert into Product values('Cable',5,444.44)
insert into Product values('DVDs',10,242.34)
insert into Product values('Fridge',10,763.34)
insert into Product values('Cooler',5,938.33)
insert into Product values('Cups',5,876.39)

select * from Product;

--Q.3)Update all the rates with 10% rate hike.
update Product
set Rate=Rate+(rate*0.1)

select * from Product;

--Q.4)Delete last record by providing the ProductID.
Delete Product where ProductId=20

select * from Product;

--Q.5)Alter the above table and add the following column.
Alter table Product
add MarginCode varchar(1) null check(MarginCode='A' or MarginCode='B')

--Q.6)Update few records to set MarginCode to A and some records MarginCode to B
Update Product 
set MarginCode='A' where ProductId=1;

Update Product 
set MarginCode='A' where ProductId=3 or ProductId=5 or ProductId=6 or ProductId=8;

Update Product
set MarginCode='B' where ProductId=10 or ProductId=2 or ProductId=9 or ProductId=15;

--Q.7)Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
Update Product
set SetQty=10 where MarginCode='A' And SetQty=1;