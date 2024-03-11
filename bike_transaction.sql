
--Create Database

CREATE DATABASE bike_transactions;
-----------------------------------------------------------------------------------

--Create Table

CREATE TABLE Categories(
	CatID INT IDENTITY(1,1) PRIMARY KEY,
	Category VARCHAR(50)
);

CREATE TABLE Countries(
	CountryID INT IDENTITY(1,1) PRIMARY KEY,
	Country VARCHAR(55)
);


CREATE TABLE Cities(
	CityID INT IDENTITY(1,1) PRIMARY KEY,
	CountryID INT FOREIGN KEY REFERENCES Countries(CountryID),
	City VARCHAR(33)
);

CREATE TABLE Customers(
	CustID INT IDENTITY(1,1) PRIMARY KEY,
	CityID INT FOREIGN KEY REFERENCES Cities(CityID),
	Surname VARCHAR(15),
	Fname VARCHAR(15)
);

CREATE TABLE Salesman(
	SalesmanID INT IDENTITY(1,1) PRIMARY KEY,
	Surname VARCHAR(15),
	Fname VARCHAR(15),
	EmpDate DATETIME,
	BossID INT

);

CREATE TABLE Company(
	CompanyID INT IDENTITY(1,1) PRIMARY KEY,
	CityID INT FOREIGN KEY REFERENCES Cities(CityID),
	Company VARCHAR(33)
);

CREATE TABLE Bikes(
	BikeID INT IDENTITY(1,1) PRIMARY KEY,
	CategoryID INT FOREIGN KEY REFERENCES Categories(CatID),
	CompanyID INT FOREIGN KEY REFERENCES Company(CompanyID),
	Bike VARCHAR(55),
	Model VARCHAR(55)
);

CREATE TABLE Transaction_fact_table(
	BikeID INT FOREIGN KEY REFERENCES Bikes(BikeID),
	CustomerID INT FOREIGN KEY REFERENCES Customers(CustID),
	SalesmanID INT FOREIGN KEY REFERENCES Salesman(SalesmanID),
	SalesDate DATETIME,
	Price MONEY,
	Amount INT,
	Value MONEY
);

--insert data into categories table
INSERT INTO Categories(Category) VALUES('Superbike');--1
INSERT INTO Categories(Category) VALUES('Sportbike');--2
INSERT INTO Categories(Category) VALUES('Naked');--3
INSERT INTO Categories(Category) VALUES('Underbone');--4
INSERT INTO Categories(Category) VALUES('Scooter');--5
INSERT INTO Categories(Category) VALUES('Cruiser');--6
INSERT INTO Categories(Category) VALUES('Offroad');--7

--insert data into countries table
INSERT INTO Countries(Country) VALUES ('Japan');
INSERT INTO Countries(Country) VALUES ('Italy');
INSERT INTO Countries(Country) VALUES ('USA');
INSERT INTO Countries(Country) VALUES ('Austria');
INSERT INTO Countries(Country) VALUES ('China');
--insert data into cities table
INSERT INTO Cities(CountryID, City) VALUES (1,'Akashi');--kawasaki
INSERT INTO Cities(CountryID, City) VALUES (1,'Iwata');--yamaha
INSERT INTO Cities(CountryID, City) VALUES (1,'Minato');--honda
INSERT INTO Cities(CountryID, City) VALUES (2,'Bologna');--ducati
INSERT INTO Cities(CountryID, City) VALUES (2,'Noale');--rsv4
INSERT INTO Cities(CountryID, City) VALUES (2,'Tuscany');--vespa
INSERT INTO Cities(CountryID, City) VALUES (3,'Wisconsin');--harley
INSERT INTO Cities(CountryID, City) VALUES (3,'Minnesota');--indian
INSERT INTO Cities(CountryID, City) VALUES (4,'Mattighofen');--ktm,husq
INSERT INTO Cities(CountryID, City) VALUES (5,'Wenling');--keeway
INSERT INTO Cities(CountryID, City) VALUES (5,'Hangzhou');--cfmoto

--insert data into company
INSERT Company (CityID, Company) VALUES (16,'Kawasaki Motors, Ltd.');
INSERT Company (CityID, Company) VALUES (17,'Yamaha Motor Co., Ltd.');
INSERT Company (CityID, Company) VALUES (18,'Honda Motor Co., Ltd.');
INSERT Company (CityID, Company) VALUES (19,'Ducati');
INSERT Company (CityID, Company) VALUES (20,'Aprilia');
INSERT Company (CityID, Company) VALUES (21,'Vespa');
INSERT Company (CityID, Company) VALUES (22,'Harley-Davidson, Inc.');
INSERT Company (CityID, Company) VALUES (23,'Indian Motocycle');
INSERT Company (CityID, Company) VALUES (24,'Husqvarna Motorcycles GmbH');
INSERT Company (CityID, Company) VALUES (24,'KTM AG');
INSERT Company (CityID, Company) VALUES (25,'Zhejiang Qianjiang Motorcycle Group Co.');
INSERT Company (CityID, Company) VALUES (26,'Zhejiang Chunfeng Power Co., Ltd.');



--iNCREASE COMPANY COLUMN SIZE
ALTER TABLE Company
ALTER COLUMN Company VARCHAR(55);

--INSERT DATA INTO BIKE TABLE
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 1,'KAWASAKI', 'H2R');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 1,'KAWASAKI', 'H2');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 1,'KAWASAKI', 'ZX10R');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 1,'KAWASAKI', 'NINJA250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 1,'KAWASAKI', 'ZX25RSE');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 1,'KAWASAKI', 'ZH2SE');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 1,'KAWASAKI', 'Z900');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 1,'KAWASAKI', 'Z250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 1,'KAWASAKI', 'VULCAN S');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 1,'KAWASAKI', 'KLX300');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 2,'YAMAHA', 'R1M');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 2,'YAMAHA', 'R1');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 2,'YAMAHA', 'R6');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 2,'YAMAHA', 'R25');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 2,'YAMAHA', 'R15M');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 2,'YAMAHA', 'MT10');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 2,'YAMAHA', 'MT15');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 2,'YAMAHA', 'Y16ZR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 2,'YAMAHA', 'Y15ZR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 2,'YAMAHA', '135LC');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 2,'YAMAHA', 'XMAX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 2,'YAMAHA', 'NMAX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 3,'HONDA', 'CBR1000RR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 3,'HONDA', 'CBR250RR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 3,'HONDA', 'CBR150RR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 3,'HONDA', 'CB250R');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 3,'HONDA', 'RSX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 3,'HONDA', 'RS150R');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 3,'HONDA', 'RSX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 3,'HONDA', 'VARIO160');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 3,'HONDA', 'ADV160');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 3,'HONDA', 'CRF250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 4,'DUCATI', 'PANIGALEV4');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 4,'DUCATI', 'SUPERLEGGERAV4');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 4,'DUCATI', 'STREETFIGHTERV4');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 4,'DUCATI', 'MONSTER');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 5,'APRILLIA', 'RSV4F');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 5,'APRILLIA', 'RS660');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 5,'APRILLIA', 'SR-GT');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 5,'APRILLIA', 'TUAREG660');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 6,'VESPA', 'S125');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 6,'VESPA', 'SPRINT150');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 6, 'VESPA', 'PRIMAVERA150');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 6,'VESPA', 'GTSSUPER300');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 6,'VESPA', 'GTV300');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 7,'HARLEYDAVIDOSN', 'NIGHTSTER');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 7,'HARLEYDAVIDOSN', 'SPORTSTERS');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 7,'HARLEYDAVIDOSN', 'SOFTAIL');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 7,'HARLEYDAVIDOSN', 'STREETBOB');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 8,'INDIANMOTORCYCLE', 'FTR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 8,'INDIANMOTORCYCLE', 'INDIAN SPRINGFIELD');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 8,'INDIANMOTORCYCLE', 'CHIEFTAN');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 8,'INDIANMOTORCYCLE', 'INDIAN SPRINGFIELD');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 9,'KTM', 'RC8R');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (1, 9,'KTM', 'RC8C');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 9,'KTM', 'RC390');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 9,'KTM', 'RC200')
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 9,'KTM', '1390SUPERDUKER');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 9,'KTM', '390DUKE');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 9,'KTM', '250DUKE');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 9,'KTM', '200DUKE');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 9,'KTM', '500EXC-F');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 9,'KTM', '250EXC-F');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 10,'HUSQVARNA', 'SVARTPILEN401');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 10,'HUSQVARNA', 'SVARTPILEN250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 10,'HUSQVARNA', 'VITPILEN250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 10,'HUSQVARNA', 'NORDEN901');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 10,'HUSQVARNA', 'FE250');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 10,'HUSQVARNA', 'TX300');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 12,'CFMOTO', '450SR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (2, 12,'CFMOTO', '250SR');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 12,'CFMOTO', '700CLX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 12,'CFMOTO', '250CLX');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (3, 13,'KEEWAY', 'RKF125');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (4, 13,'KEEWAY', 'CK110');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 13,'KEEWAY', 'SIXTIES300I');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (5, 13,'KEEWAY', 'VERSILIA125');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (6, 13,'KEEWAY', 'CAFERACER152');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 13,'KEEWAY', 'TXM1255');
INSERT INTO Bikes (CategoryID, CompanyID, Bike, Model) VALUES (7, 13,'KEEWAY', 'TX150');


--INSERT DATA INTO SALESMAN TABLE
INSERT INTO Salesman(Surname,Fname,EmpDate,BossID) VALUES ('Doe','John', '2015-05-04', NULL);
INSERT INTO Salesman(Surname,Fname,EmpDate,BossID) VALUES ('Haikal','Haris', '2015-09-29', 1);
INSERT INTO Salesman(Surname,Fname,EmpDate,BossID) VALUES ('Sofian','Imran', '2016-05-14', 1);
INSERT INTO Salesman(Surname,Fname,EmpDate,BossID) VALUES ('Nabila','Nurin', '2016-12-11', 1);
INSERT INTO Salesman(Surname,Fname,EmpDate,BossID) VALUES ('Rahim','Arina', '2015-10-30', 1);

--insert data into customer table
 
INSERT INTO Customers(CityID,Fname,Surname) VALUES(16,'Tyson', 'Ngo');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(17,'Brandon', 'Winn');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(18,'Jay', 'Won');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(19,'Aubrey', 'Graham');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(20,'Taylor', 'Swift');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(21,'Ed', 'Sheeran');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(22,'Will', 'Smith');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(23,'Momoka', 'Nanbu');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(24,'Jadey', 'Anh');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(25,'Ada', 'Wong');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(26,'Leon', 'Kennedy');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(16,'Minho', 'Lee');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(17,'Jimin', 'Park');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(18,'Obama', 'Barrack');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(19,'Ahmad', 'Albab');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(20,'Raju', 'Maju');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(21,'Kaine', 'Babe');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(22,'Amer', 'Syuib');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(23,'Atikah', 'Huzaini');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(24,'Izzah', 'Abdul Ghani');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(25,'Malenia', 'Miquella');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(26,'Malekith', 'Marika');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(16,'Ranni', 'Radagon');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(17,'Jordan', 'Carter');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(18,'Jacques', 'Webster');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(19,'Travis', 'Scott');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(20,'Playboi', 'Carti');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(21,'Metro', 'Boomin');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(22,'Nayvadius', 'Cash');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(23,'Kanye', 'West');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(24,'Donda', 'West');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(25,'Michael', 'Jackson');
INSERT INTO Customers(CityID,Fname,Surname) VALUES(26,'Symere', 'Woods');


--insert data into fact table

INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(1,1,1,'2018-06-01', 245310, 1, 245310);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(5,2,2,'2018-06-03', 33900, 1, 33900);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(11,3,2,'2018-06-04', 135000, 1, 135000);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(18,4,2,'2018-06-05', 11398, 1, 11398);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(20,5,3,'2018-06-05', 8989, 2, 17978);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(23,6,1,'2018-06-07', 86800, 1, 86800);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(29,7,2,'2018-06-07', 8749, 3, 26247);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(28,8,2,'2018-06-07', 7599, 1, 7599);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(28,9,3,'2018-06-07', 7599, 2, 15198);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(33,10,2,'2018-06-10', 172900, 1, 172900);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(37,11,4,'2018-06-10', 169900, 1, 169900);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(56,12,3,'2018-06-11', 33800, 1, 33800);
INSERT INTO Transaction_fact_table (BikeID, CustomerID, SalesmanID, SalesDate, Price, Amount, Value)
	VALUES(57,13,2,'2018-06-11', 15888, 2, 31776);


-- create view

IF OBJECT_ID('b_transactions') IS NOT NULL
	DROP VIEW b_transactions;
GO

CREATE VIEW b_transactions AS
SELECT s.Surname,
	   s.Fname,
	   b.Bike,
	   b.Model,
	   t.SalesDate,
	   t.Price,
	   t.Amount,
	   t.Value
FROM Transaction_fact_table t,
	 Bikes b,
	 Salesman s
WHERE t.BikeID = b.BikeID AND t.SalesmanID = s.SalesmanID;

--CALL THE VIEW
SELECT * FROM b_transactions;

ALTER TABLE Transaction_fact_table
ALTER COLUMN SalesDate DATE;






















