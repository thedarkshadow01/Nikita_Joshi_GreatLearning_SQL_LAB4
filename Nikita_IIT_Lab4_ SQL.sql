create database Ecommerce;
create table Supplier
(
	SuppId int primary key,
	SuppName varchar(50),
	SuppCity varchar(50),
	SuppPhone varchar(10)
)

create table Cust
(
	CustId int primary key,
	CustName varchar(20),
	CustCity varchar(30),
	CustPhone varchar(10),
	CustGender char(1)
)

create table category
(
	CatId int primary key,
	CatName varchar(20)
)

create table Product
(
	ProdId int primary key,
	ProName varchar(20),
	Prodesc varchar(60),
	CatId int foreign key references category(CatId)
)

create table SupplierPricing
(
	PricingId int primary key,
	ProdId int foreign key references Product (ProdId),
	SuppId int foreign key references Supplier (SuppId),
	SuppPrice int
)

create table Ord
(
	OrdId int primary key,
	OrdAmt int,
	OrdDate date,
	CustId int foreign key references Cust(CustId) ,
	PricingId int foreign key references SupplierPricing (PricingId)
)

create table Rating
(
	RatId int primary key,
	OrdId int foreign key references Ord(OrdId),
	RatRatstars int
)

insert into Supplier
(SuppId, SuppName, SuppCity, SuppPhone) values (1, 'Rajesh Retails', 'Delhi', 1234567890);
insert into Supplier
(SuppId, SuppName, SuppCity, SuppPhone) values (2, 'Appario Ltd.', 'Mumbai', 2589631470);
insert into Supplier
(SuppId, SuppName, SuppCity, SuppPhone) values (3, 'Knome Products', 'Bangalore', 9785462315);
insert into Supplier
(SuppId, SuppName, SuppCity, SuppPhone) values (4, 'Bansal Retails', 'Kochi', 8975463285);
insert into Supplier
(SuppId, SuppName, SuppCity, SuppPhone) values (5, 'Mittal Ltd.', 'Lucknow', 7898456532);
-- select * from Supplier;


insert into Cust (CustId, CustName,CustPhone,CustCity,CustGender) 
values (1, 'Aakash', 9999999999, 'Delhi', 'M');
insert into Cust (CustId, CustName,CustPhone,CustCity,CustGender) 
values (2, 'Aman', 9785463215, 'Noida', 'M');
insert into Cust (CustId, CustName,CustPhone,CustCity,CustGender) 
values (3, 'Neha', 9999999999, 'Mumbai', 'F');
insert into Cust (CustId, CustName,CustPhone,CustCity,CustGender) 
values (4, 'Megha', 9994562399, 'Kolkata', 'F');
insert into Cust (CustId, CustName,CustPhone,CustCity,CustGender) 
values (5, 'Pulkit', 7895999999, 'Lucknow', 'M');
-- select * from Cust;


insert into category (CatId, CatName)
values (1,'Books');
insert into category (CatId, CatName)
values (2,'Games');
insert into category (CatId, CatName)
values (3,'Groceries');
insert into category (CatId, CatName)
values (4,'Electronics');
insert into category (CatId, CatName)
values (5,'Clothes');

-- select * from category;

insert into Product (ProdId, ProName, Prodesc, CatId)
values(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(4, 'OATS', 'Highly Nutritious from Nestle', 3);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(6, 'MILK', '1L Toned MIlk', 3);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(7, 'BOAT EARPHONES', '1.5Meter long Dolby Atmos', 4);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(8, 'JEANS', 'Stretchable Denim Jeans with various sizes and color', 5);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(9, 'PROJECT IGI', 'compatible with windows 7 and above', 2);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(10, 'HOODIE', 'Black GUCCI for 13 yrs and above', 5);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(11, 'RICH DAD POOR DAD', 'Written by RObert Kiyosaki ',1);

insert into Product (ProdId, ProName, Prodesc, CatId)
values(12, 'TRAIN YOUR BRAIN', 'By Shireen Stephen', 1);
-- select * from Product;


insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(1,1,2,1500);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(2,3,5,30000);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(3,5,1,3000);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(4,2,3,2500);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(5,4,1,1000);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(6,12,2,780);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(7,12,4,789);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(8,3,1,31000);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(9,1,5,1450);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(10,4,2,999);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(11,7,3,549);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(12,7,3,549);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(13,6,2,105);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(14,6,2,105);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(15,2,5,2999);

insert into SupplierPricing(PricingId, ProdId, SuppId, SuppPrice)
values(16,5,2,2999);

-- select * from SupplierPricing;

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(101,1500,'2021-10-06',2,1);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(102,1000,'2021-10-12',3,5);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(103,30000,'2021-09-16',5,2);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(104,1500,'2021-10-05',1,1); 

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(105,3000,'2021-08-16',4,3);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(106,1450,'2021-08-18',1,9);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(107,789,'2021-09-01',3,7);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(108,780,'2021-09-07',5,6);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(109,3000,'2021-09-10',5,3);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(110,2500,'2021-09-10',2,4);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(111,1000,'2021-09-15',4,5);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(112,789,'2021-09-16',4,7);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(113,31000,'2021-09-16',1,8);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(114,1000,'2021-09-16',3,5);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(115,3000,'2021-09-16',5,3);

insert into Ord(OrdId, OrdAmt, OrdDate, CustId, PricingId)
values(116,99,'2021-09-17',2,14);

-- select * from Ord;

insert into Rating (RatId, OrdId, RatRatstars)  
values(1,101,4);

insert into Rating (RatId, OrdId, RatRatstars)  
values(2,102,3);

insert into Rating (RatId, OrdId, RatRatstars)  
values(3,103,1);

insert into Rating (RatId, OrdId, RatRatstars)  
values(4,104,2);

insert into Rating (RatId, OrdId, RatRatstars)  
values(5,105,4);

insert into Rating (RatId, OrdId, RatRatstars)  
values(6,106,3);

insert into Rating (RatId, OrdId, RatRatstars)  
values(7,107,4);

insert into Rating (RatId, OrdId, RatRatstars)  
values(8,108,4);

insert into Rating (RatId, OrdId, RatRatstars)  
values(9,109,3);

insert into Rating (RatId, OrdId, RatRatstars)  
values(10,110,5);

insert into Rating (RatId, OrdId, RatRatstars)  
values(11,111,3);

insert into Rating (RatId, OrdId, RatRatstars)  
values(12,112,4);

insert into Rating (RatId, OrdId, RatRatstars)  
values(13,113,2);

insert into Rating (RatId, OrdId, RatRatstars)  
values(14,114,1);

insert into Rating (RatId, OrdId, RatRatstars)  
values(15,115,1);

insert into Rating (RatId, OrdId, RatRatstars)  
values(16,116,0);

-- select * from Rating;

--4
select count(c.CustGender) from Cust c
inner join Ord o on c.CustId= o.CustId where o.OrdAmt>=3000;

--5
select o.*, p.ProName from Ord, Product p
inner join SupplierPricing s on p.ProdId= s.ProdId
inner join Ord o on o.PricingId= s.PricingId 
where o.CustId=2;

--6
select s.* from Supplier s inner join SupplierPricing sp on s.SuppId = sp.SuppId
group by s.SuppId, s.SuppName, s.SuppCity, s.SuppPhone
having count(distinct sp.ProdId) > 1;

--7
select c.CatId, c.CatName, p.ProName as ProductName, sp.SuppPrice as Price
from Category c inner join Product p on c.CatId = p.CatId inner join
SupplierPricing sp on p.ProdId = sp.ProdId where 
sp.SuppPrice = (select min(SuppPrice) from SupplierPricing sp_inner
where sp_inner.ProdId = sp.ProdId);

--8
select p.ProdId, p.ProName from Product p inner join 
SupplierPricing sp on p.ProdId = sp.ProdId inner join 
Ord o on sp.PricingId = o.PricingId where o.OrdDate > '2021-10-05';

--9
select CustName, CustGender from Cust where CustName like '%a' or CustName like 'A%';

--10
CREATE PROCEDURE DisplaySupplierRating()
BEGIN
    SELECT
        s.SuppId,
        s.SuppName,
        AVG(r.RatRatstars) AS Rating,
        CASE
            WHEN AVG(r.RatRatstars) = 5 THEN 'Excellent Service'
            WHEN AVG(r.RatRatstars) > 4 THEN 'Good Service'
            WHEN AVG(r.RatRatstars) > 2 THEN 'Average Service'
            ELSE 'Poor Service'
        END AS Type_of_Service
    FROM
        Supplier s
    LEFT JOIN
        SupplierPricing sp ON s.SuppId = sp.SuppId
    LEFT JOIN
        Ord o ON sp.PricingId = o.PricingId
    LEFT JOIN
        Rating r ON o.OrdId = r.OrdId
    GROUP BY
        s.SuppId, s.SuppName;
END ;

CALL DisplaySupplierRating();