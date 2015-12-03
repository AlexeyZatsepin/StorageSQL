drop database Storage_Company;
Create database Storage_Company;
use Storage_Company; 

Create table Customer(
	CustomerID int primary key auto_increment,
    FIOCustomer VARCHAR(20) NOT NULL,
    MobileNumber VARCHAR(10) NOT NULL UNIQUE,
    Address VARCHAR(40) NOT NULL
);
Create table Distributor(
	DistributorID int primary key auto_increment,
    DistributorName varchar(20) not null,
    MobileNumber VARCHAR(10) NOT NULL UNIQUE,
    Address VARCHAR(40) NOT NULL
);

Create table Product(
	ProductID int primary key auto_increment,
    Price decimal not null,
    ProductTitle varchar(20) not null,
    Category varchar(30) not null,
    WeightPerOne double
);
create table StorageHouse(
	StorageID int primary key auto_increment,
	Address VARCHAR(40) NOT NULL
);
create table PlaceOnStorage(
	PlaceID int,
    ProductID int,
    StorageID int,
    Quantity int not null,
    NumberRow mediumint not null,
    NumberPosition smallint not null,
    primary key(PlaceID,ProductID,StorageID,NumberRow,NumberPosition),
    CONSTRAINT ProductPlaceForeign FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
	ON DELETE CASCADE on update cascade,
    CONSTRAINT HouseForeign FOREIGN KEY (StorageID) REFERENCES StorageHouse(StorageID)
	ON DELETE CASCADE on update cascade
);
Create table OrderList(
	OrderListID int primary key auto_increment,
    CustomerID int,
    ProductID int,
    Quantity int not null,
    DateOfOrder datetime,
    CONSTRAINT OrderListForeign FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
	ON DELETE CASCADE,
    CONSTRAINT ProductForeign FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
	ON DELETE CASCADE
);
Create table Distribution(
	DistributionID int primary key auto_increment,
    DistributorID int,
    ProductID int,
    Quantity int not null,
    DateOfDistribution datetime,
    CONSTRAINT DistributeForeign FOREIGN KEY (DistributorID) REFERENCES Distributor(DistributorID)
	ON DELETE CASCADE,
    CONSTRAINT ProductDisForeign FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
	ON DELETE CASCADE
);

ALTER TABLE Distribution MODIFY COLUMN DateOfDistribution TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE OrderList MODIFY COLUMN DateOfOrder TIMESTAMP  default CURRENT_TIMESTAMP;
ALTER TABLE Product CHANGE COLUMN Price PricePerOne decimal;