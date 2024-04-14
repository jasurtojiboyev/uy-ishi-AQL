SELECT *
FROM customers

SELECT contact_name, city
FROM customers

SELECT order_id, shipped_date - order_date
FROM orders

SELECT DISTINCT city
FROM customers

SELECT DISTINCT city, country
FROM customers

SELECT COUNT(*)
FROM customers

SELECT COUNT(DISTINCT country)
FROM customers

-- ---------------------------------------------------

-- Tack 2/1

SELECT *
FROM orders
WHERE ship_country IN ('France', 'Austria', 'Spain')

-- 2/2
SELECT required_date, shipped_date
FROM orders
ORDER BY required_date DESC, shipped_date ASC

-- 2/3
SELECT MIN(units_in_stock)
FROM products
WHERE units_in_stock > 30

-- 2/4
SELECT MAX(units_in_stock)
FROM products
WHERE units_in_stock > 30

-- 2/5
SELECT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country = 'USA'

SELECT SUM(unit_price * units_in_stock)
FROM products	
WHERE discontinued != 1

SELECT ship_country, SUM(freight)
FROM orders
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC

