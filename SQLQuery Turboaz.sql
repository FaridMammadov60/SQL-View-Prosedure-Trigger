CREATE DATABASE P322
USE P322



CREATE DATABASE P322TURBO
USE P322TURBO

CREATE TABLE ELAN(
ID INT primary key identity,
BanId int,
ModelId int,
RAN decimal,
ColorId int,
Price decimal,
CurrencyId int,
Descriptions nvarchar(250),
DetailId int,
PhotoId int,
UserId int)

CREATE TABLE Marka(
ID INT primary key identity,
[Name] nvarchar(50),
ModelId int
)

CREATE TABLE Model(
ID INT primary key identity,
[Name] nvarchar(50),
MarkaId int
)

CREATE TABLE Ban(
ID INT primary key identity,
[Name] nvarchar(50))

CREATE TABLE Color(
ID INT primary key identity,
[Name] nvarchar(50))

CREATE TABLE Currency(
ID INT primary key identity,
[Name] nvarchar(50))

CREATE TABLE DetailId(
ID INT primary key identity,
[Name] nvarchar(50))

CREATE TABLE PhotoId(
ID INT primary key identity,
[Name] nvarchar(50))

CREATE TABLE UserId(
ID INT primary key identity,
[Name] nvarchar(50))




