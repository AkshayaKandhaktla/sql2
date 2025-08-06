-- Use the correct database
USE ecommerce_db;

-- ====================================
-- 1. INSERT Statements
-- ====================================

-- Insert into Customers
INSERT INTO Customers (name, email, phone) VALUES
('Alice Smith', 'alice@example.com', '1234567890'),
('Bob Johnson', 'bob@example.com', '9876543210'),
('Charlie Lee', 'charlie@example.com', NULL);

-- Insert into Categories
INSERT INTO Categories (name) VALUES
('Electronics'),
('Books'),
('Clothing');

-- Insert into Products
INSERT INTO Products (name, price, category_id) VALUES
('Smartphone', 699.99, 1),
('Novel - Fiction', 14.50, 2),
('T-Shirt', 9.99, 3);

-- Insert into Orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-08-01'),
(2, '2025-08-02');

-- Insert into OrderItems
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1),   -- Alice bought 1 Smartphone
(1, 2, 2),   -- Alice bought 2 Novels
(2, 3, 3);   -- Bob bought 3 T-Shirts

-- Optional: Insert into Addresses
INSERT INTO Addresses (customer_id, address_line, city, postal_code, country) VALUES
(1, '123 Main St', 'Mumbai', '400001', 'India'),
(2, '456 Hill Rd', 'Delhi', '110001', 'India');

-- Optional: Insert into Payments
INSERT INTO Payments (order_id, payment_method, amount, payment_date) VALUES
(1, 'Credit Card', 728.99, '2025-08-01'),
(2, 'UPI', 29.97, '2025-08-02');

-- ====================================
-- 2. UPDATE Statements
-- ====================================

-- Update product price
UPDATE Products
SET price = 749.99
WHERE name = 'Smartphone';

-- Update customer phone number
UPDATE Customers
SET phone = '5551234567'
WHERE email = 'charlie@example.com';

-- Update address city
UPDATE Addresses
SET city = 'Bangalore'
WHERE customer_id = 2;

-- ====================================
-- 3. DELETE Statements
-- ====================================

-- Delete a customer (only if you also want to remove dependent data!)
-- NOTE: Will fail if foreign key constraints aren't handled (e.g., Orders exist)
-- For learning, let's try deleting someone with no orders
DELETE FROM Customers
WHERE name = 'Charlie Lee';

-- Delete a specific order item (not the full order)
DELETE FROM OrderItems
WHERE order_id = 1 AND product_id = 2;

-- Delete a category (will fail if any product uses it)
-- For demo, let's delete Clothing after removing its product
DELETE FROM Products WHERE category_id = 3;
DELETE FROM Categories WHERE name = 'Clothing';
