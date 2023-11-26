INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES ('Emp1', 'Rajesh Kumar', 'Manager', 'rajesh.kumar@email.com', 50000, '2023-10-04', 'Day');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES ('Emp2', 'Sunil Verma', 'Head chef', 'sunil.verma@email.com', 45000, '2023-08-01', 'Night');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES ('Emp3', 'Amit Sharma', 'Chef', 'amit.sharma@email.com', 60000, '2023-06-15', 'Day');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES ('Emp4', 'Priya Singh', 'Server', 'priya.singh@email.com', 55000, '2023-05-02', 'Night');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES ('Emp5', 'Anand', 'Entremetier', 'anand@email.com', 40000, '2023-03-20', 'Day');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES('Emp6', 'Deepa Patel', 'Dishwasher', 'deepa.patel@email.com', 35000, '2023-02-06', 'Night');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES('Emp7', 'Vikram Joshi', 'Manager', 'vikram.joshi@email.com', 50000, '2023-01-16', 'Day');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES('Emp8', 'Neha', 'Head chef', 'neha.gupta@email.com', 45000, '2022-12-12', 'Night');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES('Emp9', 'Rahul Sharma', 'Chef', 'rahul.sharma@email.com', 60000, '2022-11-20', 'Day');
INSERT INTO Employees (EmployeeID, Name, Position, ContactDetails, Salary, HiredDate, Shift) VALUES('Emp10', 'Manjunath', 'Server', 'mehta@email.com', 55000, '2022-10-09', 'Night');



INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(1, 'Chicken Biryani', 'A flavorful Indian rice dish made with basmati rice, chicken, and aromatic spices.', 30, 'Easy', 'Emp2');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(2, 'Paneer Tikka Pizza', 'A fusion pizza with tomato sauce, paneer tikka, mozzarella cheese, and fresh basil.', 45, 'Medium', 'Emp1');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(3, 'Palak Paneer', 'A classic Indian vegetarian dish with paneer cubes in a creamy spinach gravy.', 60, 'Medium', 'Emp3');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(4, 'Butter Chicken', 'A rich and creamy Indian curry with tender chicken pieces in a tomato-based sauce.', 30, 'Easy', 'Emp4');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(5, 'Masala Dosa', 'A South Indian dish consisting of a thin rice crepe filled with spiced mashed potatoes.', 60, 'Difficult', 'Emp5');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(6, 'Rogan Josh', 'A flavorful Kashmiri curry with tender meat, aromatic spices, and a rich tomato-based sauce.', 45, 'Medium', 'Emp5');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(7, 'Chicken Korma', 'A creamy and mildly spiced Indian curry with tender chicken pieces, nuts, and yogurt.', 60, 'Medium', 'Emp7');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(8, 'Chole Bhature', 'A popular North Indian dish with spicy chickpea curry (chole) and deep-fried bread (bhature).', 30, 'Easy', 'Emp4');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(9, 'Vegetable Biryani', 'A fragrant and colorful Indian rice dish cooked with mixed vegetables and biryani spices.', 45, 'Medium', 'Emp1');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(10, 'Gulab Jamun ', 'A delightful fusion dessert combining the richness of cheesecake with the sweetness of gulab jamun.', 60, 'Medium', 'Emp1');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(11, 'Idli', 'Steamed rice cakes, a traditional South Indian breakfast item, served with coconut chutney and sambar.', 30, 'Easy', 'Emp2');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(12, 'North Karnataka Meal', 'A hearty meal featuring Jolada Roti, Ennegayi (stuffed brinjal curry), and Yennegayi (spicy stuffed bhindi).', 60, 'Medium', 'Emp3');
INSERT INTO Recipe (RecipeID, Name, Description, PrepTime_in_min, Diff_level, EID) VALUES(13, 'South Indian Meal', 'A traditional South Indian thali with rice, sambar, rasam, curries, and a variety of side dishes.', 45, 'Medium', 'Emp5');



INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(1, 'Nandini Dairy', 'nandini.dairy@email.com', 'Malleswaram, Bangalore', 'Net 45');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(2, 'KCD Foods', 'kcd.foods@email.com', 'Jayanagar, Bangalore', 'Net 30');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(3, 'Nestle India', 'nestle.india@email.com', 'Koramangala, Bangalore', 'Net 60');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(4, 'Bru Coffee Co.', 'bru.coffee@email.com', 'Indiranagar, Bangalore', 'Net 15');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(5, 'PepsiCo Beverages', 'pepsi@email.com', 'Electronic City, Bangalore', 'Net 30');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(6, 'ITC Foods', 'itc.foods@email.com', 'Whitefield, Bangalore', 'Net 45');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(7, 'MFLC Groceries', 'mflc.groceries@email.com', 'Marathahalli, Bangalore', 'Net 30');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(8, 'GRB Distributors', 'grb.distributors@email.com', '1 MG Road, Bangalore', 'Net 30');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(9, 'MTR Suppliers', 'mtr.suppliers@email.com', 'Brigade Road, Bangalore', 'Net 15');
INSERT INTO Supplies (SupplierID, Name, ContactDetails, Address, PaymentTerms) VALUES(10, 'Amul Enterprises', 'amul.enterprises@email.com', 'Koramangala, Bangalore', 'Net 60');



INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-001', 'All-Purpose Flour', 150, 'Baking', '2024-10-04', 1, 25.75);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-002', 'Granulated Sugar', 250, 'Baking', '2024-08-01', 1, 22.50);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-003', 'Large Eggs', 120, 'Dairy', '2023-06-15', 2, 30.00);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-004', 'Fresh Milk', 75, 'Dairy', '2023-05-02', 2, 28.50);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-005', 'Cheddar Cheese', 15, 'Dairy', '2023-03-20', 3, 35.75);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-006', 'Chicken Breast', 30, 'Meat', '2023-02-06', 4, 42.25);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-007', 'Fresh Potatoes', 50, 'Produce', '2023-01-16', 4, 27.25);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-008', 'Yellow Onions', 40, 'Produce', '2023-12-12', 5, 31.25);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-009', 'Red Apples', 80, 'Produce', '2023-11-20', 5, 40.00);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-010', 'Paneer', 60, 'Dairy', '2023-10-09', 6, 37.50);
INSERT INTO Inventory (ItemID, Name, Quantity, Category, ExpiryDate, SupplierID, UnitPrice) VALUES('INV-011', 'Basmati Rice', 45, 'Grains', '2023-11-23', 6, 45.00);



INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-011', 12);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-002', 1);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-003', 1);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-004', 2);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-005', 2);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-010', 3);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-007', 3);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-008', 4);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-010', 4);
INSERT INTO Uses (ItemID, RecipeID) VALUES ('INV-011', 2);



INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM1', 'Chicken Biryani', 250.00, 'A flavorful Indian rice dish made with basmati rice, chicken, and aromatic spices.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM2', 'Paneer Tikka Pizza', 300.00, 'A fusion pizza with tomato sauce, paneer tikka, mozzarella cheese, and fresh basil.', 'Fusion Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM3', 'Palak Paneer', 150.00, 'A classic Indian vegetarian dish with paneer cubes in a creamy spinach gravy.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM4', 'Butter Chicken', 200.00, 'A rich and creamy Indian curry with tender chicken pieces in a tomato-based sauce.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM5', 'Masala Dosa', 120.00, 'A South Indian dish consisting of a thin rice crepe filled with spiced mashed potatoes.', 'South Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM6', 'Rogan Josh', 350.00, 'A flavorful Kashmiri curry with tender meat, aromatic spices, and a rich tomato-based sauce.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM7', 'Chicken Korma', 250.00, 'A creamy and mildly spiced Indian curry with tender chicken pieces, nuts, and yogurt.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM8', 'Chole Bhature', 300.00, 'A popular North Indian dish with spicy chickpea curry (chole) and deep-fried bread (bhature).', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM9', 'Vegetable Biryani', 220.00, 'A fragrant and colorful Indian rice dish cooked with mixed vegetables and biryani spices.', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM10', 'Gulab Jamun', 150.00, 'A delightful fusion dessert combining the richness of cheesecake with the sweetness of gulab jamun.', 'Dessert');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM11', 'Idli', 120.00, 'Steamed rice cakes, a traditional South Indian breakfast item, served with coconut chutney and sambar.', 'South Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM12', 'North Karnataka Meal', 300.00, 'A hearty meal featuring Jolada Roti, Ennegayi (stuffed brinjal curry), and Yennegayi (spicy stuffed bhindi).', 'Indian Main Course');
INSERT INTO Menu (MenuID, Name, Price, Description, Category) VALUES ('MM13', 'South Indian Meal', 250.00, 'A traditional South Indian thali with rice, sambar, rasam, curries, and a variety of side dishes.', 'South Indian Main Course');



INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-001', 'MM4');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-002', 'MM1');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-003', 'MM3');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-004', 'MM7');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-005', 'MM6');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-006', 'MM5');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-007', 'MM1');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-008', 'MM1');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-009', 'MM3');
INSERT INTO ConsistsOf (ItemID, MenuID) VALUES ('INV-010', 'MM10');



INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1001, '2023-11-18', '12:00:00', 250.00 + 300.00 + 150.00, 'Paid', 'Cash');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1002, '2023-11-18', '12:30:00', 200.00 + 120.00 + 350.00, 'Paid', 'Card');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1003, '2023-11-18', '13:00:00', 250.00 + 150.00 + 220.00, 'Paid', 'UPI');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1004, '2023-11-18', '13:30:00', 200.00 + 120.00, 'Pending', 'Cash');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1005, '2023-11-18', '14:00:00', 120.00, 'Pending', 'Card');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1006, '2023-11-18', '14:30:00', 250.00 + 350.00, 'Paid', 'UPI');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1007, '2023-11-18', '15:00:00', 200.00, 'Pending', 'Cash');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1008, '2023-11-18', '15:30:00', 200.00 + 120.00, 'Pending', 'Card');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1009, '2023-11-18', '16:00:00', 150.00 + 220.00, 'Paid', 'UPI');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1010, '2023-11-18', '16:30:00', 200.00, 'Pending', 'Cash');
INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod) VALUES (1011, '2023-10-04', '12:00 PM', 250.00, 'Paid', 'Cash');



INSERT INTO Includes (MenuID, OrderID) VALUES ('MM1', 1001);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM10',1002);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM3', 1003);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM5', 1004);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM1', 1005);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM6', 1006);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM7', 1007);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM8', 1008);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM9', 1009);
INSERT INTO Includes (MenuID, OrderID) VALUES ('MM1', 1010);



INSERT INTO placeorder (EID, OrderID) VALUES('Emp2', 1001);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp1', 1001);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp3', 1001);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp2', 1002);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp1', 1004);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp7', 1007);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp2', 1008);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp4', 1009);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp3', 1010);
INSERT INTO placeorder (EID, OrderID) VALUES('Emp5', 1002);


