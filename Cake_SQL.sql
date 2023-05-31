create database QuanLyTiemBanh

create table Customer(
tenKH nvarchar(100) not null,
soDT char(10) primary key,
diemKH int,
password char(100) not null,
);
go
create table LoaiHH(
MaLoai int primary key identity(1,1),
TenLoai nvarchar(205) not null,
SoLuong int not null,
img varchar(205) not null,
);
go
insert into LoaiHH( TenLoai, SoLuong,img) values 
( Cupcake, 1, img/product-1.jpg),
( Cupcake2, 1, img/product-2.jpg),
( Cupcake3, 1, img/product-3.jpg),
( Cupcake4, 1, img/product-4.jpg),
( Cupcake5, 1, img/product-5.jpg);
Cupcake4
create table Hh(
MaHH int primary key identity(1,1),
MaLoai int not null,
DonGia int not null,
SoLuong int not null,
);
go
drop table Hh;
create table Hh(
MaHH int primary key identity(1,1),
MaLoai int not null,
DonGia int not null,
Soluong int not null,
);
go
create table HoaDon(
MaHD int primary key identity(1,1),
soDT char(10) not null,
NgayDat Datetime default getdate(),
TongTien int not null,
);
go
create table ChiTietHoaDon(
MaHD int not null,
MaHH int not null,
soLuong int not null,
donGia int not null,
thanhTien int not null,
); 
go


