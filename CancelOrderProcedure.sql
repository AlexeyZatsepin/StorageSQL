drop procedure if exists `cancel_Order`;
DELIMITER //
create procedure `cancel_Order` (IN id int)
language sql
SQL security invoker
BEGIN
declare customerID int;
declare q int;
declare q1 int;
declare prodID int;
declare city varchar(40);
declare cityID int;

select CustomerID into customerID from OrderList where OrderListID=id;
select Address into city from Customer where CustomerID=customerID;
select StorageID into cityID from StorageHouse where Address=city;
select Quantity into q from PlaceOnStorage where StorageID=cityID and ProductID=prodID;
select Quantity into q1 from OrderList where  `ProductID`=@productID 
and`StorageID`=cityID;

UPDATE `Storage_Company`.`PlaceOnStorage` 
SET `Quantity`=q+q1 WHERE `ProductID`=@productID 
and`StorageID`=cityID;

end//