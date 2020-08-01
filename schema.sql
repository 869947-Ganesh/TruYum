use CaseStudy
Go



-- Menu table creation----
Create table Menu
(
	Menu_id int identity(1,1) primary key,
	Name varchar(20),
	Price decimal(10,2),
	Active char(3),
	Date_of_Launch Date ,
	Category varchar(20),
	Free_Delivery char(3)
)
Go


---User table creation------

create table Customer
(
	Customer_id int identity(1,1) primary key ,
	Customer_name varchar(20),

)
Go


---Cart table creation------

create table Cart
(
	Cart_id int foreign key (Cart_id) references Customer(Customer_id),
	item_id int foreign key (item_id) references Menu(Menu_id),
	Price decimal(10,2)
)
Go

