-- Showing all transactions, customer, market and product records
SELECT * FROM sales.transactions;
SELECT * FROM sales.customers;
SELECT * FROM sales.markets;
SELECT * FROM sales.products;

-- Showing total number of customers
SELECT COUNT(*) FROM sales.customers;

-- Showing transactions only in Mumbai markets(market_code = Mark002)
SELECT * FROM sales.transactions 
WHERE sales.transactions.market_code = "Mark002";

-- Showing distinct product types and product codes sold in Mumbai
SELECT DISTINCT sales.products.product_type, sales.products.product_code FROM sales.transactions
INNER JOIN sales.products
ON sales.products.product_code = sales.transactions.product_code
WHERE market_code = "Mark002";


-- Showing transactions which processed in USD
SELECT * FROM sales.transactions
WHERE currency = "USD";

-- Showing transactions which happened in 2020
SELECT sales.transactions.*, sales.date.* FROM sales.transactions
INNER JOIN sales.date
ON sales.date.date = sales.transactions.order_date
WHERE year = 2020;

-- Showing total revenue in year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE year = 2020;

-- Showing total revenue in January, 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE year = 2020 AND month_name = "January";

-- Showing total revenue in Mumbai in 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE year = 2020 AND market_code = "Mark002";