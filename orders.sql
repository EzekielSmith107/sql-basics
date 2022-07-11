-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name TEXT,
    product_price FLOAT,
    quantity INTEGER
);
-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders(person_id, product_name, product_price, quantity)
Values (54, 'eggs and toast', 13.50, 2),
(54, 'coffee and bacon', 5.50, 1),
(87, 'steak and cheese', 13.50, 3),
(93, 'fish and chips', 10, 2),
(54, 'toast and jam', 3.50, 8);
-- Select all the records from the orders table.
SELECT * 
FROM orders;
-- Calculate the total number of products ordered.
SELECT SUM(quantity) 
FROM orders;
-- Calculate the total order price.
SELECT SUM(quantity * product_price) 
FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(quantity * product_price) 
FROM orders
WHERE person_id = 93;