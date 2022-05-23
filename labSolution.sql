create database ecommerce
use ecommerce
<-- creating supplier table -->
create table supplier(supp_id int not null, supp_name varchar(50) not null, supp_city varchar(50) not null, supp_phone varchar(50) not null, primary key(supp_id))
<-- creating customer table -->
create table customer(cus_id int not null, cus_name varchar(20) not null, cus_phone varchar(10) not null, primary key(cus_id))
alter table customer add column cus_city varchar(30) not null
alter table customer add column cus_gender char

<-- creating category table -->
create table category(cat_id int, cat_name varchar(20) not null, primary key(cat_id))

<-- creating product table -->

create table product(prod_id int, prod_desc varchar(60), cat_id int,  primary key(prod_id),  FOREIGN KEY (cat_id) REFERENCES category(cat_id))
ALTER TABLE product add column prod_name varchar(20) not null default 'dummy'

<-- creating supplier_pricing table -->
create table supplier_pricing(pricing_id int, prod_id int, supp_id int, supp_price int default 0, primary key(pricing_id),  FOREIGN KEY (prod_id) REFERENCES product(prod_id),  FOREIGN KEY (supp_id) REFERENCES supplier(supp_id))

<-- creating orders table -->
create table orders(ord_id int, ord_amount int not null, ord_date date not null, cus_id int, pricing_id int, primary key(ord_id),  FOREIGN KEY (cus_id) REFERENCES customer(cus_id),  FOREIGN KEY (pricing_id) REFERENCES supplier_pricing(pricing_id))

<-- creating rating table -->
create table rating(rat_id int, ord_id int, rat_ratstars int not null, primary key(rat_id), FOREIGN KEY (ord_id) REFERENCES orders(ord_id))
 
<--  insert data in supplier -->
insert into supplier values (1, 'Rajesh Retails', 'Delhi', 1234567890)
insert into supplier values (2,'Appario Ltd.' ,'Mumbai', 2589631470)
insert into supplier values (3,'Knome products', 'Banglore', 9785462315)
insert into supplier values (4, 'Bansal', 'Retails Kochi', 8975463285)
insert into supplier values (5, 'Mittal Ltd.', 'Lucknow', 7898456532)

<-- insert data in customer table -->
insert into customer values (1 ,'AAKASH' ,'99999999' ,'DELHI' ,'M')
insert into customer values (2 ,'AMAN' ,'9785463215' ,'NOIDA' ,'M')
insert into customer values (3 ,'NEHA' ,'9999999999' ,'MUMBAI' ,'F')
insert into customer values (4 ,'MEGHA' ,'9994562399' ,'KOLKATA' ,'F')
insert into customer values (5 ,'PULKIT', '7895999999' ,'LUCKNOW' ,'M')

<-- insert data in category table -->
insert into category values (1 , 'BOOKS')
insert into category values (2 ,'GAMES')
insert into category values (3 ,'GROCERIES')
insert into category values (4 ,'ELECTRONICS')
insert into category values (5 ,'CLOTHES')

<--- insert data in product table -->
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (1, 'GTA V' ,'Windows 7 and above with i5 processor and 8GB RAM' ,2)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (2 ,'TSHIRT' ,'SIZE-L with Black, Blue and White variations' ,5)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (3 ,'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD' ,4)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (4 ,'OATS' ,'Highly Nutritious from Nestle' ,3)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (5 ,'HARRY POTTER' ,'Best Collection of all time by J.K Rowling' ,1)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (6 ,'MILK' ,'1L Toned MIlk' ,3)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (7 , 'Boat Earphones', '1.5Meter long Dolby Atmos' ,4)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (9 ,'Project IGI', 'compatible with windows 7 and above' ,2)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (10 ,'Hoodie' ,'Black GUCCI for 13 yrs and above' ,5)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (11, 'Rich Dad Poor Dad' ,'Written by RObert Kiyosaki' ,1)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (12 ,'Train Your' ,'Brain By Shireen Stephen' ,1)
insert into product (prod_id, prod_name, prod_desc, cat_id ) values (8 ,'Jeans' ,'Stretchable Denim Jeans with various sizes and color' ,5)

<-- insert data in Supplier_pricing Table -->
insert into Supplier_pricing  values (1 ,1, 2 ,1500)
insert into Supplier_pricing  values (2 ,3 ,5 ,30000)
insert into Supplier_pricing  values (3 ,5 ,1 ,3000)
insert into Supplier_pricing  values (4 ,2 ,3 ,2500)
insert into Supplier_pricing  values (5 ,4 ,1 ,1000)

<--insert data in order table --> 
insert into orders  values (101 ,1500 ,'2021-10-06',2,1)
insert into orders  values (102 ,1000 ,'2021-10-12',3 ,5)
insert into orders  values (103 ,30000 ,'2021-09-16',5 ,2)
insert into orders  values (104 ,1500 ,'2021-10-05',1 ,1)
insert into orders  values (105 ,3000 ,'2021-08-16',4 ,3)
insert into orders  values (106 ,1450 ,'2021-08-18',1 ,2)
insert into orders  values (107 ,789 ,'2021-09-01' ,3 ,3)
insert into orders  values (108 ,780 ,'2021-09-07' ,5 ,5)
insert into orders  values (109 ,3000 ,'2021-00-10' ,5 ,3)
insert into orders  values (110 ,2500 ,'2021-09-10' ,2 ,4)
insert into orders  values (111 ,1000 ,'2021-09-15' ,4 ,5)
insert into orders  values (112 ,789 ,'2021-09-16' ,4 ,1)
insert into orders  values (113 ,31000 ,'2021-09-16' ,1 ,3)
insert into orders  values (114 ,1000 ,'2021-09-16' ,3 ,5)
insert into orders  values (115 ,3000 ,'2021-09-16' ,5 ,3)
insert into orders  values (116 ,99 ,'2021-09-17' ,2 ,4)

<-- insert data in rating table --->
insert into rating  values (1 ,101 ,4)
insert into rating  values (2 ,102, 3)
insert into rating  values (3 ,103 ,1)
insert into rating  values (4 ,104, 2)
insert into rating  values (5 ,105 ,4)
insert into rating  values ( 6 ,106, 3)
insert into rating  values (7 ,107 ,4)
insert into rating  values ( 8 ,108 ,4)
insert into rating  values ( 9 ,109 ,3)
insert into rating  values ( 10 ,110 ,5)
insert into rating  values (11 ,111 ,3)
insert into rating  values (13 ,113 ,2)
insert into rating  values (14 ,114 ,1)
insert into rating  values (15 ,115 ,1)
insert into rating  values (16 ,116 ,0)
sel
<-- Q1  -->
 1.Display the total number of customers based on gender who have placed orders of worth at least Rs.3000
select count(cus_name), cus_gender from customer
 inner join orders 
 on customer.cus_id = orders.cus_id
 where ord_amount >= 3000 
 group by cus_gender

<-- Q2-->
2.Display all the orders along with product name ordered by a customer having Customer_Id=2
 select orders.ORD_ID, orders.ord_amount,orders.ORD_DATE, orders.CUS_ID, supplier_pricing.prod_id, product.prod_name from orders inner join supplier_pricing on 
 orders.pricing_id = supplier_pricing.pricing_id
 inner join product
 on supplier_pricing.prod_id = product.prod_id
 where cus_id = 2 
 
 < ----- Q3------>
 Q3. Display the Supplier details who can supply more than one product
 SELECT supp_name, supp_city, supp_phone, count(supp_name) as "supply no. of product" from supplier
 inner join supplier_pricing
 on supplier.supp_id = supplier_pricing.supp_id
 group by supp_name
 having count(supp_name) > 1
 
 <  -----Q4---->
 Q4. Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select c.CAT_ID ,c.CAT_NAME,p.PRO_NAME, min(sp.SUPP_PRICE) as Least_Price_Productes from category as c
 join product as p
 on c.CAT_ID = p.CAT_ID
 join supplier_pricing as sp
 on p.PRO_ID = sp.PRO_ID
 group by c.CAT_ID;
 
 <---- Q5 ---->
  5.Display the Id and Name of the Product ordered after “2021-10-05”
  select A.prod_id, prod_name, ord_date from product A
 inner join supplier_pricing B
 ON A.PROD_ID = B.PROD_ID
 inner join orders C
 ON B.PRICING_ID = C.PRICING_ID
 where ord_date > "2021-10-05"
 
 < ---- Q6----->
 Q6. Display customer name and gender whose names start or end with character 'A'
 SELECT CUS_NAME, CUS_GENDER FROM CUSTOMER WHERE CUS_NAME LIKE "%A" OR CUS_NAME like "A%"

< --------- Q7 ------ >

7.Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent 
Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”

DELIMITER $
create procedure QualityCheck ()
Begin
Select  s.SUPP_ID,s.SUPP_NAME,r.RAT_RATSTARS ,
case
    when RAT_RATSTARS =5 then 'Excellent service'
    when RAT_RATSTARS >=4 then 'Good service'
    when RAT_RATSTARS >2 then 'Average service'
    else 'poor service'
end as Type_of_service
from rating r
join order0 o
on r.ORD_ID = o.ORD_ID
join supplier_pricing  sp
on o.PRICING_ID = sp.PRICING_ID
join supplier s
on sp.SUPP_ID =s.SUPP_ID;
end $
DELIMITER ;
call QualityCheck();
 
 