
/* Lab 2 - part 1- Add tables for supplies used by projects */

/* replace xxxxx with your user id */
#USE ece356db_xxxxx; 

drop database y22lai ;
create database y22lai ;
use y22lai ;
DROP TABLE IF EXISTS SupplyData;  

         
CREATE TABLE SupplyData(supplyID INT,
supplyDescription VARCHAR(100),
unitDescription VARCHAR(100),
costPerunit DECIMAL(8,2), 
typeID INT,
typeDescription VARCHAR(100) ); 


INSERT INTO SupplyData VALUES (100,'Big WallCalendar',
'Item', 30.00, 1, 'Office Supplies');

INSERT INTO SupplyData VALUES (101,'Colour Stickers',
'1 Sheet of 10', 5.50, 1, 'Office Supplies');

INSERT INTO SupplyData VALUES (102,'Printer Paper',
'8.5 inches  x 11 inches 500 sheets', 20.50, 1, 'Office Supplies');

INSERT INTO SupplyData VALUES (103,'Laptop computer',
'Item', 1000.00, 1, 'Office Supplies');


INSERT INTO SupplyData VALUES (104,'Vacum',
'Item', 1000.00, 2, 'Cleaning Supplies');

INSERT INTO SupplyData VALUES (105,'Displosable Gloves',
'One pair', 10.00, 2, 'Cleaning Supplies');

INSERT INTO SupplyData VALUES (106,'Trash Cans',
'Item', 20.00, 2, 'Cleaning Supplies');

INSERT INTO SupplyData VALUES (107,'Bleach',
'5.38 L', 2.50, 2, 'Cleaning Supplies');


/* Normalize table SupplyData. 
We will need two tables to remove multiple
functional dependency */


DROP TABLE IF EXISTS SupplyType;  
         
CREATE TABLE SupplyType(typeID INT,
typeDescription VARCHAR(100)); 

INSERT INTO SupplyType (typeID, typeDescription)
SELECT DISTINCT typeID, typeDescription
FROM SupplyData;


DROP TABLE IF EXISTS Supply;
         
CREATE TABLE Supply(supplyID INT,
supplyDescription VARCHAR(100),
unitDescription VARCHAR(100),
costPerunit DECIMAL(8,2), 
typeID INT);

INSERT INTO Supply (supplyID, supplyDescription, unitDescription, costPerunit, typeID)
SELECT supplyID, supplyDescription, unitDescription, costPerunit, typeID
FROM SupplyData; 

CREATE TABLE ProjectSupply(projectID INT, uses INT, item VARCHAR(100), supplyID INT);

INSERT INTO ProjectSupply VALUES(123,10,'Laptop Computers', 103);
INSERT INTO ProjectSupply VALUES(345,2,'Vacums', 104);
INSERT INTO ProjectSupply VALUES(345,15,'Colour Stickers', 101);




/* Write INSERT staments to add the data stored in 
table SupplyData into the new tables
-  SupplyType  -  Supply 

Note:  use INSERT INTO (SELECT .. FROM SupplyData)
*/




/* Create table ProjectSupply, used associate pojects with supplies. These table store a count of the number of supplies involved in the association. 

ie. projectID 123 uses 10  Laptop computers  (supplyID 103)


*/




/* Insert data into the table ProjectSupply */








         
















                   
          


