-- drop database hfurniture;
create database hfurniture;
use hfurniture;

create table Accounts(
Username varchar(25) not null,
Email varchar(64) null,
Password varchar(25) not null,
Fullname nvarchar(50) null,
Gender bit null,
Birthday date null,
Phone varchar(11) null,
Address nvarchar(255) null,
Photo nvarchar(50) null,
Active bit not null,
CreateDay datetime null,
DeleteDay datetime null,
UpdateDay datetime null,
PersonDelete varchar(25) null,
PersonUpdate varchar(25) null,
PRIMARY KEY(Username)
);

-- Note: xóa 1 account thì author mất 

create table Roles(
Id varchar(10) not null,
Name nvarchar(10) not null,
PRIMARY KEY(Id)
);

create table Authorities(
Id int not null,
AccountId varchar(25) not null,
RoleId varchar(10) not null,
PRIMARY KEY(Id),
FOREIGN KEY (AccountId) REFERENCES Accounts(Username) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (RoleId) REFERENCES Roles(Id)
);

create table Categories(
Id varchar(20) not null,
Name nvarchar(50) not null,
Active bit not null,
CreateDay datetime null,
DeleteDay datetime null,
UpdateDay datetime null,
PersonCreate varchar(25) null,
PersonDelete varchar(25) null,
PersonUpdate varchar(25) null,
PRIMARY KEY(Id)
);

create table Promotions(
Id varchar(10) not null,
Detail nvarchar(255) null,
Active bit not null,
Percent int not null,
PRIMARY KEY(Id)
);

create table Products(
Id varchar(20) not null,
Name nvarchar(100) not null,
Price float not null,
Image1 varchar(80) null,
Image2 varchar(80) null,
Image3 varchar(80) null,
Available bit not null,
Status bit not null,
SubstanceDes nvarchar(255) null,
Contents mediumtext null,
Size varchar(60) null,
PromotionId varchar(10) null,
CategoryId varchar(10) null,
CreateDay datetime null,
DeleteDay datetime null,
UpdateDay datetime null,
PersonCreate varchar(25) null,
PersonDelete varchar(25) null,
PersonUpdate varchar(25) null,
PRIMARY KEY(Id),
FOREIGN KEY (PromotionId) REFERENCES Promotions(Id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

create table SubstanceDetail(
Id varchar(10) not null,
Name nvarchar(100) null,
PRIMARY KEY(Id)
);

create table StatusOrders(
Id varchar(10) not null,
Name varchar(50) not null,
PRIMARY KEY(Id)
);

create table Substance_Products(
Id varchar(10) not null,
SubstanceDetailId varchar(10) not null,
ProductId varchar(20) not null,
PRIMARY KEY(Id),
FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (SubstanceDetailId) REFERENCES SubstanceDetail(Id)
);

create table Orders(
Id bigint not null auto_increment,
Username varchar(25) not null,
CreateDate datetime not null,
Address nvarchar(255) null,
StatusId varchar(10) not null,
PRIMARY KEY(Id),
FOREIGN KEY (StatusId) REFERENCES StatusOrders(Id) 
);

create table OrderDetails(
Id bigint not null auto_increment,
OrderId bigint not null,
ProductId varchar(20) not null,
Price float null,
Quantity int null,
PRIMARY KEY(Id),
FOREIGN KEY (OrderId) REFERENCES Orders(Id),
FOREIGN KEY (ProductId) REFERENCES Products(Id) 
);

create table Comments(
Id bigint not null auto_increment,
AccountId varchar(25) not null,
ProductId varchar(20) not null,
Text nvarchar(250) not null,
CreateDay datetime not null,
PRIMARY KEY(Id),
FOREIGN KEY (AccountId) REFERENCES Accounts(Username),
FOREIGN KEY (ProductId) REFERENCES Products(Id) 
);

create table News(
Id varchar(10) not null,
Name varchar(50) not null,
Type varchar(10) null,
Content	longtext null,
PRIMARY KEY(Id)
);
