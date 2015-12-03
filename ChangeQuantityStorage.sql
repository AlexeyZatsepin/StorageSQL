drop trigger after_insert_new_orderList;
delimiter $$
CREATE TRIGGER `after_insert_new_orderList`
after insert ON Storage_Company.OrderList
FOR EACH ROW
BEGIN 
declare q int;
declare city varchar(30);
declare cityID int;
set @Quantity=NEW.Quantity;
set @productID=NEW.ProductID;
set @customer=NEW.CustomerID;

select Address into city from Customer where CustomerID=@customer;
select StorageID into cityID from StorageHouse where Address=city;
select Quantity into q from PlaceOnStorage where StorageID=cityID and ProductID=@productID;

     SIGNAL SQLSTATE '45000'
	 SET MESSAGE_TEXT = 'must be del';
  

UPDATE `Storage_Company`.`PlaceOnStorage` 
SET `Quantity`=q-@Quantity WHERE `ProductID`=@productID 
and`StorageID`=cityID;

END;