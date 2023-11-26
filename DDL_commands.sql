CREATE TABLE Employees (
  EmployeeID varchar(255) NOT NULL ,
  Name VARCHAR(255) NOT NULL,
  Position VARCHAR(255),
  ContactDetails VARCHAR(255) NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  HiredDate DATE NOT NULL,
  Shift VARCHAR(255) NOT NULL,
  PRIMARY KEY (EmployeeID)
);


CREATE TABLE Recipe (
  RecipeID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  PrepTime_in_min DECIMAL(10,2) NOT NULL,
  Diff_level VARCHAR(255) NOT NULL,
  EID varchar(255) NOT NULL,
  PRIMARY KEY (RecipeID),
  FOREIGN KEY (EID) REFERENCES Employees (EmployeeID)
);

CREATE TABLE Supplies (
  SupplierID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  ContactDetails VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  PaymentTerms VARCHAR(255) NOT NULL,
  PRIMARY KEY (SupplierID)
);

CREATE TABLE Inventory (
  ItemID varchar(255) NOT NULL ,
  Name VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  Category VARCHAR(255) NOT NULL,
  ExpiryDate DATE NOT NULL,
  SupplierID INT NOT NULL,
  UnitPrice DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (ItemID),
  FOREIGN KEY (SupplierID) REFERENCES Supplies (SupplierID)
);

CREATE TABLE Uses (
  ItemID varchar(255) NOT NULL,
  RecipeID INT NOT NULL,
  PRIMARY KEY (ItemID, RecipeID),
  FOREIGN KEY (ItemID) REFERENCES Inventory (ItemID),
  FOREIGN KEY (RecipeID) REFERENCES Recipe (RecipeID)
);

CREATE TABLE Menu (
  MenuID varchar(255) NOT NULL ,
  Name VARCHAR(255) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  Description VARCHAR(255) NOT NULL,
  Category VARCHAR(255) NOT NULL,
  PRIMARY KEY (MenuID)
);

CREATE TABLE ConsistsOf (
  ItemID varchar(255) NOT NULL,
  MenuID varchar(255) NOT NULL,
  PRIMARY KEY (ItemID, MenuID),
  FOREIGN KEY (ItemID) REFERENCES Inventory (ItemID),
  FOREIGN KEY (MenuID) REFERENCES Menu (MenuID)
);

CREATE TABLE Orders (
  OrderID INT NOT NULL ,
  Date date not null,  
  Time VARCHAR(255) NOT NULL,
  TotalPrice DECIMAL(10,2) NOT NULL,
  Status enum('Paid','pending') NOT NULL,
  PaymentMethod enum('Cash','UPI','card') NOT NULL,
  PRIMARY KEY (OrderID)
);

CREATE TABLE Includes (
  MenuID varchar(255) NOT NULL,
  OrderID INT NOT NULL,
  PRIMARY KEY (MenuID,OrderID ),
  FOREIGN KEY (MenuID) REFERENCES Menu (MenuID),
  FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);

CREATE TABLE placeorder(
  EID varchar(255) NOT NULL,
  OrderID INT NOT NULL,
  PRIMARY KEY (EID,OrderID),
  FOREIGN KEY (EID) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);


CREATE TABLE Users (
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(255) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  PRIMARY KEY (UserID),
  UNIQUE KEY (Username)
);

CREATE TABLE OldEmployees (
  EmployeeID varchar(255) NOT NULL ,
  Name VARCHAR(255) NOT NULL,
  Position VARCHAR(255),
  ContactDetails VARCHAR(255) NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  HiredDate DATE NOT NULL,
  ResignedDate DATE NOT NULL,
  Shift VARCHAR(255) NOT NULL,
  PRIMARY KEY (EmployeeID)
);