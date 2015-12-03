Create view Products_by_Category as
select Category,ProductTitle from Product 
order by Category;

create view Products_by_Storage as
select Address,Product.ProductTitle from Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.PlaceID=Product.ProductID
order by Address;

create view Product_Card as
select ProductTitle,PricePerOne,Quantity,WeightPerOne Gramms_per_one,Address,NumberRow,NumberPosition from Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.ProductID=Product.ProductID
order by ProductTitle;

create view Weight_Order_list as
select OrderListID,OrderList.Quantity*WeightPerOne as FullWeight from OrderList,Product 
where OrderList.ProductID=Product.ProductID; 

create view Product_Balance as
select ProductTitle,Address,Quantity as Balance from Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.ProductID=Product.ProductID;

create view Ordered_goods as
select ProductTitle,Address,OrderList.Quantity from OrderList,Product,PlaceOnStorage,StorageHouse
where StorageHouse.StorageID=PlaceOnStorage.StorageID and PlaceOnStorage.ProductID=Product.ProductID
and OrderList.ProductID=Product.ProductID;


select * from Weight_Order_list;
select * from Product_Card;
select * from Products_by_Storage;
select * from Products_by_Category;
select * from Ordered_goods;
