drop trigger `allocateSpace`;
DELIMITER //;
CREATE TRIGGER `allocateSpace`
before insert ON Storage_Company.PlaceOnStorage
FOR EACH ROW
BEGIN 
  declare numR int;
  declare numPos int;
  declare q int;
  SET @strID:= NEW.StorageID; 
  SET @prodID := NEW.ProductID;
  SET @q=NEW.Quantity;
  SET @numR=NEW.NumberRow;
  SET @numPos=NEW.NumberPosition;
 /* if  @prodID in (select ProductID from PlaceOnStorage where StorageID=@strID) then
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'haha';
        select Quantity into q from PlaceOnStorage where StorageID=@strID and ProductID=@prodID;
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'haha';
		UPDATE `Storage_Company`.`PlaceOnStorage` SET `Quantity`=q+@q WHERE 
		`ProductID`=@prodID and`StorageID`=@strID;
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'There this product in this storage, so quantity are added';
  end if;*/
  while(@numPos in (select NumberPosition from PlaceOnStorage where NumberRow=@numR)) do
	 #SET @numR=FLOOR((RAND() * (100-1))+1);
	 SET @numPos=FLOOR(RAND() * (100-1));
     SIGNAL SQLSTATE '45000'
	 SET MESSAGE_TEXT = 'There this product in this storage, so quantity are added';
  end while;
  #SET NEW.NumberRow=@numR;
  SET NEW.NumberPosition=@numPos;
END;