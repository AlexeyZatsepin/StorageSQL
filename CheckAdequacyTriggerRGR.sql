delimiter $$
CREATE TRIGGER `before_insert_new_orderList`
before insert ON Storage_Company.OrderList
FOR EACH ROW
BEGIN 
declare q int;
set @Quantity=NEW.Quantity;
set @productID=NEW.ProductID;


if @Quantity>all(select Quantity from Product,PlaceOnStorage 
where Product.ProductID=PlaceOnStorage.ProductID and Product.ProductID=@productID) then 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Not enought product';
END IF;

if @productID not in (select Product.ProductID from Product) then 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'This product doesnt exist';
END IF;
END;

