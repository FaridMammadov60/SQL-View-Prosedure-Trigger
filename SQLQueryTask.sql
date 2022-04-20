CREATE DATABASE IMBD
USE IMBD

CREATE TABLE Movies (
Id INT PRIMARY KEY IDENTITY,
[Name] nvarchar(50) not null,
Imbd float not null,
Duration float  not null,
ActorsId int unique not null,
DirectorsId int unique not null,
GenresId int unique not null,
Texts nvarchar(50) not null
)

INSERT INTO  Movies (Name, Imbd, Duration, ActorsId, DirectorsId, GenresId, Texts) values 
('Shahsiyet', 9.90, 3.24, 1, 3, 4, 'Cinayet arasdirmasi'),
('La Papel De Casel', 7.90, 2.24, 2, 2, 3, 'Bank soygunu'),
('Sphion', 5.90, 1.24, 3, 1, 1, 'Bank soygunu')

SELECT * FROM MOVIES;

CREATE TABLE Directors (
Id INT PRIMARY KEY IDENTITY,
[NAME] nvarchar(50) not null)

select * from Directors
INSERT INTO Directors(Name) values 
('AYYapim'),
('TT'),
('RRR')

CREATE TABLE Actors (
Id INT PRIMARY KEY IDENTITY,
[NAME] nvarchar(50) not null)

INSERT INTO Actors (Name) values 
('Haluk Bilginer'),
('Jhon'),
('Test')



CREATE TABLE Genres (
Id INT PRIMARY KEY IDENTITY,
[NAME] nvarchar(50) not null)

INSERT INTO Genres(Name) values 
('Drams'),
('Aksiyon'),
('Test')

SELECT m.NAME asFilminAdi, m.Imbd, g.NAME as FilminNovu, d.NAME as DirectorunAdi, a.NAME as AktyorunAdi FROM MOVIES m
LEFT JOIN Directors d
ON m.DirectorsId=d.Id
LEFT JOIN Actors a
ON m.ActorsId=a.Id
LEFT JOIN Genres g
ON m.GenresId=g.Id

SELECT m.NAME asFilminAdi, m.Imbd, g.NAME as FilminNovu FROM MOVIES m
LEFT JOIN Directors d
ON m.DirectorsId=d.Id
LEFT JOIN Actors a
ON m.ActorsId=a.Id
LEFT JOIN Genres g
ON m.GenresId=g.Id
where g.NAME like '%a%' or g.NAME like '%A%'


select mov.NAME asFilminAdi, mov.Imbd, g.NAME as FilminNovu, d.NAME as DirectorunAdi from (
 SELECT LEN(NAME) as uzunlug, NAME, Imbd, ActorsId, GenresId, DirectorsId FROM MOVIES) mov
LEFT JOIN Directors d
ON mov.DirectorsId=d.Id
LEFT JOIN Actors a
ON mov.ActorsId=a.Id
LEFT JOIN Genres g
ON mov.GenresId=g.Id
 where mov.uzunlug>10

 select mov.NAME asFilminAdi, mov.Imbd, g.NAME as FilminNovu, d.NAME as DirectorunAdi, a.NAME as AktyorunAdi from
 (select  avg(imbd) as ortalama, Imbd, Name, ActorsId, GenresId, DirectorsId FROM MOVIES) mov
 LEFT JOIN Directors d
ON mov.DirectorsId=d.Id
LEFT JOIN Actors a
ON mov.ActorsId=a.Id
LEFT JOIN Genres g
ON mov.GenresId=g.Id
where mov.Imbd>mov.ortalama

 
