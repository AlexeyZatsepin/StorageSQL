DELIMITER // 
CREATE PROCEDURE `Unique_Products`(IN city varchar(40)) 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 
COMMENT 'only at one storage' 
BEGIN 
SELECT ProductTitle From Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.ProductID=Product.ProductID 
and Address=city 
group by ProductTitle
having ProductTitle not in (SELECT ProductTitle From Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.ProductID=Product.ProductID 
and Address<>city );
END// 

DELIMITER $$;
call Unique_Products("Lviv");

#DELIMITER ||;
#drop procedure `Unique_Products`;