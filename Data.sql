use CaseStudy
Go

---1. View Menu Item List Admin---
--a--

Insert into Menu values('Sandwich', 99.00,'Yes','2017/03/15','Main Course','Yes');
Insert into Menu values('Burger', 129.00,'Yes','2017/12/23','Main Course','No');
Insert into Menu values('Pizza', 149.00,'Yes','2017/08/21','Main Course','No');
Insert into Menu values('French Fries', 57.00,'No','2017/07/02','Starters','Yes');
Insert into Menu values('Chocolate Brownie', 32.00,'Yes','2022/11/02','Desert','Yes');
Go 

--b--

select * from Menu

Go

---2. View Menu Item List Customer---
--a--

select * from Menu where Active='Yes' and Date_of_Launch < GETDATE(); 
Go

---3. Edit Menu Item---
--a--

Select Name from Menu 
go

--b--

Update Menu 
set Category='Starters'
where Menu_id = 1;
go

---4. Add to Cart---
--a--
select * from Customer

Insert into Customer values ('Ganesh')
Insert into Customer values ('Utkarsh')

select* from Cart

Insert into  Cart values(2,1,99.00)
Insert into  Cart values(2,2,129.00)
Insert into  Cart values(2,4,57.00)
Go

---5. View Cart---
--a--
Select Name, M.Price from Menu as M inner join Cart as C on 
M.Menu_id= C.item_id 
where Cart_id=2
Go

--b--
Select Sum(C.Price) as Total_Price from Cart as C where Cart_id=2
Go

---6. Remove Item from Cart---
--a--

Delete from Cart 
where Cart_id=2 and item_id=2
GO