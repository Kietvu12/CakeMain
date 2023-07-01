create database QuanLyTiemBanh
go
create table Hhoa(
MaHhoa int identity(1,1),
TenHhoa nvarchar(255),
Gia int,
img nvarchar(255),
);
go
insert into Hhoa( TenHhoa, Gia,img) VALUES
('Dozen Cupcakes',1,'img/shop/product-1.jpg'),
('Cookies and Cream',1,'img/shop/product-2.jpg'),
('Gluten Free Mini Dozen',1,'img/shop/product-3.jpg'),
('Cookie Dough',1,'img/shop/product-4.jpg'),
('Vanilla Salted Caramel',1,'img/shop/product-5.jpg'),
('German Chocolate',1,'img/shop/product-6.jpg'),
('Dulce De Leche',1,'img/shop/product-7.jpg'),
('Mississippi Mud',1,'img/shop/product-8.jpg');
go
create table Bill(
MaHD int,
[name] nvarchar(255),
phonenum nvarchar(255),
email nvarchar(255),
note text,
cash int,
);
go
