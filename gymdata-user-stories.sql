create database gymdata;


CREATE TABLE GYM(
    GYMID int not null AUTO_INCREMENT,
    GYMNAME varchar (50) not null,
    City varchar (50) not null,
    PostCode varchar (50) not null,
    Address varchar (300) not null,
    PRIMARY KEY (GYMID)
   ) engine = innodb;
   

CREATE TABLE USERS(
	GYMID int not null,
	FORENAME varchar (50),
	SURNAME varchar (50) not null,
	AGE int not null,
	EMAILID varchar (50) not null,
	MOBILE int not null,
	PRIMARY KEY (EMAILID),
    FOREIGN KEY (GYMID) REFERENCES GYM(GYMID)
) engine = innodb;


CREATE TABLE SUBSCRIPTION(
    SUBSCRIPTIONID int not null AUTO_INCREMENT,
    GYMID int not null,
    SUBSCRIPTIONTYPE varchar (50) not null,
    Access varchar (50) not null,
    MultiGym varchar (50) not null,
    AccessToClass varchar (50) not null,
    PriceMonth Decimal (4,4) not null,
    PriceYear Decimal (4,4) not null,
    SubscriptionLength varchar (50) not null,
    PRIMARY KEY (SUBSCRIPTIONID),
    foreign key (GYMID) references GYM(GYMID)
    ) engine = innodb;


CREATE TABLE CLASS(
	CLASSID int not null AUTO_INCREMENT,
	GYMID int not null,
	CLASSTYPE varchar (50) not null,
	NAME varchar (50) not null,
	DURATION int not null,
	TIME varchar (50) not null,
	FITNESSLEVEL int not null,
PRIMARY KEY (CLASSID),
  foreign key (GYMID) references GYM(GYMID)
    ) engine = innodb;


CREATE TABLE DISCOUNT(
	DISCOUNTID int not null AUTO_INCREMENT,
	GYMID int not null,
	NAME varchar (50) not null,
	PERCENTAGE int not null,
	EXPIRATION decimal (3,3) not null,
	PRIMARY KEY (DISCOUNTID),
  foreign key (GYMID) references GYM(GYMID)
    ) engine = innodb;


CREATE TABLE FACILITY(
	FACILITYID int not null AUTO_INCREMENT,
	GYMID int not null,
	WEIGHTROOM boolean not null,
	CARDIOROOM boolean not null,
	SWIMMINGPOOL boolean not null,
	SAUNA boolean not null,
	STEAMROOM boolean not null,
	ONSITECRECHE boolean not null,
	DRINKSANDFO0OD boolean not null,
	PRIMARY KEY (FACILITYID),
 foreign key (GYMID) references GYM(GYMID)
    ) engine = innodb;
	
	
CREATE TABLE DRINKSANDFOOD(
	DRINKSANDFOODID int not null AUTO_INCREMENT,
	FACILITYID int not null,
	VENDINGMACHINESNACKS boolean not null,
	VENDINGMACHINEDRINKS boolean not null,
	ONSITECAFE boolean not null,
	ONSITECLOTHING boolean not null,
	PRIMARY KEY (DRINKSANDFOODID),
	foreign key (FACILITYID) references FACILITY(FACILITYID)
) engine = innodb;	
	


INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Pauls','Oxford','OX1 1PT','LittleGate House, 16-17 St Ebbes St, Oxford');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Best','London Piccadilly','SW14 4PE','4-12, Rex House Regent Street London');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Strong','Leeds','LS1 2HD','4 Cloth Hall, Leeds');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Climb','Manchester','M1 1PD','90-100 Market St, Manchester');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Top','Liverpool','L1 1QE','Lewis\'s, 40 Ranelagh St, Liverpool');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('All together','Edinburgh','EH3 8RA','1-7 W Approach Rd, Conference Square, Edinburgh');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Best','Cambridge','CB1 1PS','2nd Floor, Grafton Centre, Cambridge');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Yip','Plymouth','PL4 7EF','Endeavour House, Alexandra Rd, Mutley, Plymouth');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Exo','York','YO30 4TU','Stirling Rd, York');
INSERT INTO `gym` ( `GYMNAME`, `City`, `PostCode`, `Address`) VALUES ('Step','Newcastle','NE1 7RA','Eldon Garden Shopping Centre, Percy St, Newcastle upon Tyne');


INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('2','Edward ','Sheeran','31','esheeran@hotmail.com','07849 493774');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('2','Beyonce','Knowles','38','queenb@gmail.com','07563 949263');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('2','Khloe','Kardashian','35','kkardashian@yahoo.com','07890 328333');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('3','Kanye','West','40','lyricalgenius@aol.com','07113 234593');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('4','James','Blunt','21','jblunt@hotmail.co.uk','07903 048263');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('5','Joe','Jonas','26','jj_101@yahoo.com','07029 483028');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('5','Billie','Eilish','20','billeilish@hmrc.gov.uk','07888 039483');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('5','Hannah','Montana','18','hannahbanana@aol.com','07783 038282');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('5','Morgan','Freeman','58','mfreeman@yahoo.co.uk','07363 058362');
INSERT INTO `users` ( `GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES ('2','Emma','Watson','28','hermoineg@hmrc.gov.uk','07892 047293');
	
	
	
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('1', 'Off Peak', 'Off Peak hours Only', 'No', '8 classes a week', '9.99', '99.99', '6 months, 1 year, 3 years');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('2','Off Peak','Off Peak hours Only','No','8 classes a week','9.99','99.99','6 months, 1 year, 3 years');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('3','Off Peak','Off Peak hours Only','No','8 classes a week','9.99','99.99','6 months, 1 year, 3 years');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('4','Core','Unlimited Access','Yes, for added fee of £2','8 classes a week','12.99','129.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('5','Core','Unlimited Access','Yes, for added fee of £2','8 classes a week','12.99','129.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('6','Core','Unlimited Access','Yes, for added fee of £2','8 classes a week','12.99','129.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('7','Plus','Unlimited Access','Yes','12 classes a week','18.99','179.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('8','Plus','Unlimited Access','Yes','12 classes a week','18.99','179.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('9','Plus','Unlimited Access','Yes','12 classes a week','18.99','179.99','6 months, 1 year');															
INSERT INTO `subscription` (`GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`,`AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES ('10','Plus','Unlimited Access','Yes','12 classes a week','18.99','179.99','6 months, 1 year');															
	
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('1','Cardio','Cycle','50','09:00, 12:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('2','Cardio','Cycle','50','09:00, 12:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('3','Cardio','Cycle','50','09:00, 12:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('4','Cardio','Burn it','50','08:00, 11:00, 17:00, 20:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('5','Cardio','Burn it','50','08:00, 11:00, 17:00, 20:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('6','Cardio','Burn it','50','08:00, 11:00, 17:00, 20:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('7','Weights','Abs','20','07:00, 12:00, 18:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('8','Weights','Abs','20','07:00, 12:00, 18:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('9','Weights','Abs','20','07:00, 12:00, 18:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('10','Weights','Legs, bums and tums','50','09:00, 14:00, 19:00','3');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('1','Weights','Legs, bums and tums','50','09:00, 14:00, 19:00','3');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('2','Weights','Legs, bums and tums','50','09:00, 14:00, 19:00','3');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('3','Wellbeing','Yoga','30','09:00, 11:00, 14:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('4','Wellbeing','Yoga','30','09:00, 11:00, 14:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('5','Wellbeing','Yoga','30','09:00, 11:00, 14:00, 18:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('6','Wellbeing','Pilates','60','17:00, 21:00','1');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('7','Mix','Sweat','60','09:00, 12:00, 14:00','2');										
INSERT INTO `class` (`GYMID`, `CLASSTYPE`, `NAME`, `DURATION`,`TIME`, `FITNESSLEVEL`) VALUES ('8','Mix','Strength and Tony','60','14:00, 18:00, 20:00','3');	


INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('1', 'Student Discount', '30', '6');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('2','Student Discount','30','6');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('3','Student Discount','30','6');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('2','Advance Payment','10','5');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('4','Advance Payment','10','5');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('5','Advance Payment','10','5');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('6','Advance Payment','10','5');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('7','Advance Payment','10','5');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('8','March joining discount','20','1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('9','March joining discount','20','1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('10','March joining discount','20','1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('1','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('2','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('3','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('4','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('5','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('6','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('7','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('8','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('9','Free trial','100','0.1');							
INSERT INTO `discount` (`GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES ('10','Free trial','100','0.1');	


INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('1','1','1','1','0','0','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('2','1','1','1','1','1','1','1');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('3','1','1','0','1','0','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('4','1','1','1','1','1','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('5','1','1','0','0','1','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('6','1','1','0','1','1','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('7','1','1','1','0','0','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('8','1','1','0','1','0','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('9','1','1','1','0','0','0','0');												
INSERT INTO `facility` (`GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`,`SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES ('10','1','1','0','1','0','0','0');												
						

INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('1','1','1','0','0');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('2','1','1','1','1');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('3','1','1','0','0');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('4','1','1','1','1');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('5','0','0','0','0');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('6','1','1','0','0');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('7','1','1','1','1');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('8','0','0','0','0');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('9','1','1','1','1');										
INSERT INTO `drinksandfood` (`FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES ('10','1','1','0','0');										

--TESTS TO CHECK VARIABLES
--display all columns from gym table
																	
Select * from gym;	

--display forename, age, emailid from users table

Select FORENAME, AGE, EMAILID from users;	

--DISPLAY USER STORIES
--1) See all local gyms in one area

select * from gym where City = 'Oxford'; 															
									
--2)all subscriptions available (for example for gym located in Oxford)

select * from subscription 
where gymid=1;

--3)available classes (for example for gym located in Oxford)

select * from gym where City = 'Oxford';
select classtype, time from class
where gymid=1;

--4)Concessions (for example for gym located in Leeds)

select * from gym where City = 'Leeds'; 
select * from discount
where gymid=3;

--5)facilities available for a swimmer (swimming pool/sauna)

select * from gym where City = 'Liverpool';
select * from facility
where gymid=5 
and swimmingpool = 1 
and sauna =1;


select * from gym where City = 'Manchester';
select * from facility
where gymid=4 
and swimmingpool=1 
and sauna=1;


--6)subscription length

select * from gym where City = 'Leeds'; 
select SubscriptionLength from subscription
where gymid=3;

--7)food and beverages available

select * from gym where City = 'Leeds'; 
select * from drinksandfood
where facilityid=3;

--8)sell fitness clothing
select * from gym where City = 'Leeds';
select ONSITECLOTHING from drinksandfood
where facilityid=3;