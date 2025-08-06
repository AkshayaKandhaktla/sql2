# sql2
elevatelabs-task 2
## ✏️ Data Manipulation: INSERT, UPDATE, DELETE

This section demonstrates how to perform **basic data operations** in SQL for your E-commerce Database. These commands are essential for maintaining and updating records.

---

### ✅ INSERT – Add New Data

Used to add new records to a table.

**Example: Add a new customer**
```sql
INSERT INTO Customers (name, email, phone)
VALUES ('Alice Johnson', 'alice@example.com', '9876543210');
✏UPDATE – Modify Existing Data
Used to update values in existing rows. Always use a WHERE clause to avoid updating all rows.
UPDATE Products
SET price = 999.99
WHERE product_id = 3;
DELETE – Remove Data
Used to delete rows from a table. Again, always use a WHERE clause to avoid deleting everything.

Example: Delete an order
DELETE FROM Orders
WHERE order_id = 5;
⚠️ Important: Always double-check your WHERE clause when using UPDATE or DELETE to avoid unintended changes.
