#drop trigger `before_insert_customer`;drop trigger `before_insert_distributor`;

DELIMITER //;
CREATE TRIGGER `before_insert_customer`
before insert ON Storage_Company.Customer
FOR EACH ROW
BEGIN 
  SET @FIO:= NEW.FIOCustomer; 
  SET @PhoneNumber := NEW.MobileNumber; 
  IF @FIO not REGEXP '[:alpha:]|[:blank:]' THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:FIO must contains only letters';
  END IF;
  IF @PhoneNumber not regexp '^-?[0-9]+$' THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:Number must contains only digitals';
  END IF;
END;

Delimiter //;
CREATE TRIGGER `before_insert_distributor`
before insert ON Storage_Company.Distributor
FOR EACH ROW
BEGIN 
  SET @title:= NEW.DistributorName; 
  SET @PhoneNumber := NEW.MobileNumber; 
  IF @title not REGEXP '[:alpha:]|[:blank:]|[:digit:]' THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:FIO must contains only letters';
  END IF;
  IF @PhoneNumber not regexp '^-?[0-9]+$' THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:Number must contains only digitals';
  END IF;
END;