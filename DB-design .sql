CREATE TABLE `Customer` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`CustomerName` varchar(32) NOT NULL,
	`CustomerSurname` varchar(32) NOT NULL,
	`CustomerAge` INT NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Adress` (
	`AdressID` INT NOT NULL,
	`AdressDetails` varchar(128) NOT NULL,
	`AdressCity` INT(32) NOT NULL,
	`CustomerID` INT(32) NOT NULL,
	PRIMARY KEY (`AdressID`)
);

CREATE TABLE `Order` (
	`OrderID` INT NOT NULL AUTO_INCREMENT,
	`CustomerID` varchar(255) NOT NULL,
	`AdressID` INT NOT NULL,
	PRIMARY KEY (`OrderID`)
);

CREATE TABLE `Product` (
	`ProductName` varchar(64) NOT NULL,
	`ProductID` varchar(64) NOT NULL AUTO_INCREMENT,
	`ProductPrice` varchar(64) NOT NULL,
	PRIMARY KEY (`ProductID`)
);

CREATE TABLE `OrderItem` (
	`OrderItemID` INT NOT NULL,
	`OrderID` INT NOT NULL,
	`ProductID` INT NOT NULL,
	PRIMARY KEY (`OrderItemID`)
);

ALTER TABLE `Adress` ADD CONSTRAINT `Adress_fk0` FOREIGN KEY (`CustomerID`) REFERENCES `Customer`(`ID`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`CustomerID`) REFERENCES `Customer`(`ID`);

ALTER TABLE `Order` ADD CONSTRAINT `Order_fk1` FOREIGN KEY (`AdressID`) REFERENCES `Adress`(`AdressID`);

ALTER TABLE `OrderItem` ADD CONSTRAINT `OrderItem_fk0` FOREIGN KEY (`OrderItemID`) REFERENCES `Order`(`OrderID`);

ALTER TABLE `OrderItem` ADD CONSTRAINT `OrderItem_fk1` FOREIGN KEY (`ProductID`) REFERENCES `Product`(`ProductID`);






