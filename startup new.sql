create database STARTUPS;
use startups;
create table StartupsCompanies(
    startup_id INT PRIMARY KEY,
    name VARCHAR(255),
    founded_year INT,
    industry VARCHAR(255),
    country VARCHAR(100),
    status VARCHAR(50)
);
INSERT INTO StartupsCompanies VALUES
(1, 'Hilpert', 2018, 'FinTech', 'USA', 'Failed'),
(2, 'Jenkins and Zulauf', 2020, 'EdTech', 'India', 'Failed'),
(3, 'Sanford Group', 2017, 'HealthTech', 'UK', 'Failed'),
(4, 'Hermiston ', 2019, 'E-commerce', 'Germany', 'Failed'),
(5, ' Wintheiser and KreigerPaucek', 2016, 'AI', 'Canada', 'Failed'),
(6,'SwiftFay',2017,'HEALTHCARE','GERMANY', 'PASS'),
(7, 'Carroll Inc', 2021, 'Gaming', 'USA', 'Failed'),
(8, 'MacejkovicGroup',2020,'Fintech', 'Germany','pass'),
(9, 'Cummings', 2019,'gaming','USA','PASS'),
(10, 'Dicki and Hudson',2014, 'CLOUD COMPUTING','England','Failed'),
(11,'White - Grady',2021,' CONSTRUCTION Industry','FRANCE','PASS'),
(12,'Veum',2015,'event industry','JAPAN','Failed'),
(13, 'Runolfsdottir and Auer',2016, 'Fashion','MEXICO','PASS'),
(14,'Stehr-Sauer',2014,'insurance','FINLAND','PASS'),
(15,'Trantow - Willms',2022,'media ','RUSSIA','PASS'),
(16,'Runolfsson LLC',2018,'minning','USA','Failed'),
(17,'Watsica LLC',2016,' PersonalServices', 'INDIA','PASS'),
(18,'Murphy Group',2020,'PetCare Supplies','UK','FAIL');
 select* from StartupsCompanies ;
 
 -- Creating Reasons Table
CREATE TABLE failureReasons (
    reason_id INT PRIMARY KEY,
    startup_id int,
    reason_description VARCHAR(255)
);

-- Populating Reasons Table
INSERT INTO failureReasons VALUES
(1,1,'Lack of Market Need'),
(2,2, 'Ran Out of Cash'),
(3, 3,'Poor Business Model'),
(4, 4,'Legal Challenges'),
(5, 5,'Tech Issues'),
(6,6,'Company mission and vision statement' ),
(7,7, 'Competitive Pressure'),
(8,8,'Good market fit'),
 (9 ,9,'Strong financial planning and good financial health'),
(10,10,'Inability to adapt to market or technological changes can lead to obsolescence'),
(11,11,'Good management team'),
(12,12,'Unsustainable Growth'),
(13,13,'Access to capital'),
(14,14, 'Empowered employees'),
(15,15,'Diversity'),
(16,16,'Ran Out of Cash'),
(17,17,'Sound strategy'),
(18,18,'Unsustainable Growth');
select* from reasons;
-- Creating Startup_Failures Table

CREATE TABLE StartupFailures (
    Failure_id INT PRIMARY KEY,
    startup_id INT,
    reason_id INT
);




-- Creating Investors Table
CREATE TABLE investors_table (
    investor_id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(100)
);

-- Populating Investors Table with 50+ records
INSERT INTO investors_table VALUES
(1, 'VC Firm Alpha', 'USA'),
(2, 'Angel Investor Beta', 'India'),
(3, 'Fund C', 'UK'),
(4, 'Private Equity D', 'Germany'),
(5, 'Tech Investor E', 'Canada'),
(6, 'San Miguel Corporation', 'Germany'),
(7,'Robert Bosch ','USA'),
(8,'Rohde & Schwarz','GERMANY'),
(9,'Sandvik','USA'),
(10,'Sanofi','ENGLAND'),
(11,'Ericsson','FRANCE'),
(12,' Haier','JAPAN'),
(13,'Etisalat','MEXICO'),
(14,'Eva Air','FINLAND'),
(15,'Estée Lauder Companies','RUSSIA'),
(16,'Halliburton','USA'),
(17,'Hankook','INDIA'),
(18,'Heineken','UK');

SELECT * FROM investors_table;

-- Creating Funding Table
CREATE TABLE Funding (
    funding_id INT PRIMARY KEY,
    startup_id INT,
    investor_id INT,
    amount DECIMAL(15,2),
    round VARCHAR(50),
    year INT
   
);

-- Populating Funding Table with 50+ records
INSERT INTO Funding VALUES
(1, 1, 1, 1000000.00, 'Seed', 2018),
(2, 2, 2, 500000.00, 'Pre-Seed', 2020),
(3, 3, 3, 2000000.00, 'Series A', 2017),
(4, 4, 4, 3000000.00, 'Series B', 2019),
(5, 5, 5, 1500000.00, 'Series A', 2016),
(6, 6, 6, 750000.00, 'Seed', 2017),
(7, 7, 7, 1500000.00, 'pre-seed', 2021),
(8, 8, 8, 1500000.00, 'Series A', 2020),
(9, 9, 9, 1500000.00, 'Series B', 2019),
(10, 10, 10, 100000.00, 'Seed', 2014),
(11, 11, 11, 3500000.00, 'Series A', 2021),
(12, 12, 12, 500000.00, 'Series A', 2015),
(13, 13,13, 1100000.00, 'Series B', 2016),
(14, 14, 14, 2000000.00, 'pre seed ', 2014),
(15, 15, 15, 2500000.00, 'Seed', 2016),
(16, 16, 16, 1300000.00, 'Series A', 2022),
(17, 17,17, 1500000.00, 'Series B', 2018),
(18, 18, 18, 3000000.00, 'Seed', 2020);
select * from funding;