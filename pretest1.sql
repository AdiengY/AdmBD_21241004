CREATE TABLE `productlines` (
  `productLine` int PRIMARY KEY,
  `textDescription` varchar(255),
  `htmlDescription` varchar(255),
  `image` image
);

CREATE TABLE `products` (
  `productCode` int PRIMARY KEY,
  `productName` varchar(255),
  `productLine` varchar(255),
  `productScale` varchar(255),
  `productVendor` varchar(255),
  `productDescription` varchar(255),
  `quantityInStock` varchar(255),
  `buyPrice` int,
  `MSRP` int
);

CREATE TABLE `orderdetails` (
  `orderNumber` int,
  `productCode` int,
  `quantityOrdred` varchar(255),
  `priceEach` int,
  `orderLineNumber` int,
  PRIMARY KEY (`orderNumber`, `productCode`)
);

CREATE TABLE `employee` (
  `employeeNumber` int PRIMARY KEY,
  `lastName` varchar(255),
  `firstName` varchar(255),
  `extension` varchar(255),
  `email` varchar(255),
  `officeCode` int,
  `reportTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `offices` (
  `officeCode` int PRIMARY KEY,
  `city` varchar(255),
  `phone` int,
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `postalCode` int,
  `territory` varchar(255)
);

CREATE TABLE `customers` (
  `customerNumber` int PRIMARY KEY,
  `customerName` varchar(255),
  `customerLastName` varchar(255),
  `customerFirstName` varchar(255),
  `phone` int,
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `postalCode` int,
  `country` varchar(255),
  `saleRepEnployeeNumbercreditLimit` int
);

CREATE TABLE `orders` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` datetime,
  `requairedDate` datetime,
  `shippedDate` datetime,
  `status` varchar(255),
  `comments` varchar(255),
  `customerNumber` image
);

CREATE TABLE `payments` (
  `customerNumber` int,
  `checkNumber` int,
  `paymentDate` datetime,
  `amount` varchar(255),
  PRIMARY KEY (`customerNumber`, `checkNumber`)
);

ALTER TABLE `products` ADD FOREIGN KEY (`productCode`) REFERENCES `productlines` (`productLine`);

ALTER TABLE `orderdetails` ADD FOREIGN KEY (`orderNumber`) REFERENCES `products` (`productCode`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `orderdetails` (`orderNumber`);

ALTER TABLE `employee` ADD FOREIGN KEY (`employeeNumber`) REFERENCES `employee` (`reportTo`);

ALTER TABLE `customers` ADD FOREIGN KEY (`customerNumber`) REFERENCES `employee` (`employeeNumber`);

ALTER TABLE `employee` ADD FOREIGN KEY (`employeeNumber`) REFERENCES `offices` (`officeCode`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `customers` (`customerNumber`);

ALTER TABLE `payments` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);
