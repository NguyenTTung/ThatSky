create database ASM_PK02869_C
go
use ASM_PK02869_C
go
create table NhanVienSQL(
	MaNV nvarchar(10) primary key,
	TenNV nvarchar(50) not null,
	MucLuong int not null,
	ChucVu nvarchar(30) not null default N'Nhân viên'

);

create table SanPhamSQL(
	MaSP nvarchar(10) primary key,
	TenSP nvarchar(50) not null,
	SL int not null,
	GiaBan int not null,
	MaNV nvarchar(10) not null,
	foreign key(MaNV) references NhanVienSQL(MaNV) 

);
