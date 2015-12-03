Insert into Customer(FIOCustomer,MobileNumber,Address) values ('Dicson Hanry','2','123fsfa');
Insert into Distributor(DistributorName,MobileNumber,Address) values ('Dicson Hanry','4','123fsfa');

INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('1', 'Kiev');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('2', 'Kharkiv');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('3', 'Lviv');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('4', 'Odessa');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('5', 'Cherkasy');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('6', 'Vinnitsa');


insert into Product(Price,ProductTitle,WeightPerOne,Category) values
(100.0,"headphones common",100,'accessories'),
(2200.0,"headphones beast",200,'accessories'),
(5.0,"gum love is",30,'gum');
INSERT INTO `Storage_Company`.`Product` (`ProductID`, `Price`, `ProductTitle`, `Category`, `WeightPerOne`) VALUES ('4', '50', ' \"Roshen Belka\"', 'candy', '20');
UPDATE `Storage_Company`.`Product` SET `ProductTitle`='\"love is\"' WHERE `ProductID`='3';

INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('7', '1', '4', '25', '1', '1');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('1', '1', '1', '20', '1', '1');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('2', '1', '1', '30', '1', '2');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('3', '1', '2', '20', '1', '1');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('4', '2', '3', '20', '1', '1');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('5', '3', '1', '200', '1', '3');
INSERT INTO `Storage_Company`.`PlaceOnStorage` (`PlaceID`, `ProductID`, `StorageID`, `Quantity`, `NumberRow`, `NumberPosition`) VALUES ('6', '4', '1', '20000', '2', '1');

INSERT INTO `Storage_Company`.`Customer` (`CustomerID`, `FIOCustomer`, `MobileNumber`, `Address`) VALUES ('2', 'Jack Bon', '55000010', 'Kiev');
UPDATE `Storage_Company`.`Customer` SET `MobileNumber`='222123123', `Address`='Kharkiv' WHERE `CustomerID`='1';


INSERT INTO `Storage_Company`.`OrderList` (`CustomerID`, `ProductID`, `Quantity`, `DateOfOrder`) VALUES ('1', '1', '10', '10-10-111');
INSERT INTO `Storage_Company`.`OrderList` (`CustomerID`, `ProductID`, `Quantity`, `DateOfOrder`) VALUES ('2', '1', '10', '11-12-2000');

INSERT INTO `Storage_Company`.`Distributor` (`DistributorID`, `DistributorName`, `MobileNumber`, `Address`) VALUES ('2', 'Samsung', '1000000', 'Kiev');
UPDATE `Storage_Company`.`Distributor` SET `MobileNumber`='2000000', `Address`='Kiev' WHERE `DistributorID`='1';
INSERT INTO `Storage_Company`.`Distributor` (`DistributorID`, `DistributorName`, `MobileNumber`, `Address`) VALUES ('3', 'Meizu', '0222222', 'Pekin');
INSERT INTO `Storage_Company`.`Distributor` (`DistributorID`, `DistributorName`, `MobileNumber`, `Address`) VALUES ('4', 'HTC ', '1002000', 'Gongkong');
INSERT INTO `Storage_Company`.`Distributor` (`DistributorID`, `DistributorName`, `MobileNumber`, `Address`) VALUES ('5', 'Roshen', '2842818', 'Kiev');
INSERT INTO `Storage_Company`.`Distributor` (`DistributorID`, `DistributorName`, `MobileNumber`, `Address`) VALUES ('6', 'Microsoft', '1234212', 'New York');

INSERT INTO `Storage_Company`.`Product` (`ProductID`, `PricePerOne`, `ProductTitle`, `Category`, `WeightPerOne`) VALUES ('5', '10000', 'Samsung Galaxy S4', 'smartphone', '130');
INSERT INTO `Storage_Company`.`Product` (`ProductID`, `PricePerOne`, `ProductTitle`, `Category`, `WeightPerOne`) VALUES ('6', '9000', 'HTC One X', 'smartphone', '140');
INSERT INTO `Storage_Company`.`Product` (`ProductID`, `PricePerOne`, `ProductTitle`, `Category`, `WeightPerOne`) VALUES ('7', '3000', 'Windows 10', 'OS', '-');

INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('7', 'London');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('8', 'Pekin');
INSERT INTO `Storage_Company`.`StorageHouse` (`StorageID`, `Address`) VALUES ('9', 'Gongkong');
