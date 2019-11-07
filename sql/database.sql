use master
go

drop database if exists projecto;
GO

create database projecto;
GO
use projecto;
go

CREATE table Platillo(
    IdPlatillo int IDENTITY(1,1) PRIMARY key,
    nombre nvarchar(50) not null,
    precio NUMERIC(6,2) not null,
    porcentajeDescuento int not null
)
GO

create table Platillo_Ingrediente(
    IdPlatilloIngrediente int IDENTITY(1,1) PRIMARY key,
    idInventario int not null,
    idPlatillo int not null,
    idUnidad int not null,
    cantidad numeric(9,2) not null
 )
 GO

create table Inventario(
    IdInventario int IDENTITY(1,1) PRIMARY KEY,
    ingrediente NVARCHAR(50) not null,
    idUnidad int not null,
    cantidad numeric(9,2) not null
)
GO

create table Unidad(
    IdUnidad int IDENTITY(1,1) PRIMARY KEY,
    unidad NVARCHAR(50) not null
)
GO

create table Factura(
    IdFactura int IDENTITY(1,1) PRIMARY KEY,
    nombreCliente NVARCHAR(200) not null,
    precioTotal numeric(9,2) not null,
    totalDescontado numeric(9,2) not null
 --   iva numeric(9,2) not null
)
GO

create table DetalleFactura(
    IdDetalleFactura int IDENTITY(1,1) PRIMARY KEY,
    idPlatillo int not null,
    idFactura int not null,
    cantidad int not null,
    valorDescontado numeric(9,2) not null
)
GO
create table Usuario(
    IdUsuario int IDENTITY(1,1) PRIMARY Key,
    nombreUsuario nvarchar(16) not null,
    contrasena binary(32) not null,
    nombre varchar(100),
    apellido varchar(100)
)
go
create table Permiso(
    IdPermiso int IDENTITY(1,1) PRIMARY key,
    tabla varchar(100) not null,
    crud tinyint not null
)

GO

create table Usuario_Permiso(
    IdUsuarioPermiso int IDENTITY(1,1) PRIMARY key,
    idUsuario int not null,
    idPermiso int not null,
)

alter table Platillo_Ingrediente
    ADD constraint FK_PI_Platillo FOREIGN KEY (idPlatillo) REFERENCES Platillo(IdPlatillo) on delete cascade on update cascade,
    constraint FK_PI_Ingrediente FOREIGN KEY(idInventario) REFERENCES Inventario(IdInventario) on delete cascade on update CASCADE

GO


alter table DetalleFactura
    add constraint FK_DF_Platillo FOREIGN KEY (idPlatillo) REFERENCES Platillo(IdPlatillo) on delete cascade on update cascade,
    constraint FK_DF_Factura FOREIGN KEY(idFactura) REFERENCES Factura(IdFactura) on delete cascade on update cascade
go