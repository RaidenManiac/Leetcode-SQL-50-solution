-- SQL Solution to get product_name, year, and price for each sale

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;

-- Explanation:
-- 1. Using INNER JOIN:
--    - We join the Sales table with the Product table on product_id.
--    - This links each sale with its corresponding product name.

-- 2. Selecting the Required Columns:
--    - We select product_name from the Product table.
--    - We select year and price from the Sales table.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Sales Table:
-- | sale_id | product_id | year | quantity | price |
-- |--------|------------|------|----------|-------|
-- | 1      | 100        | 2008 | 10       | 5000  |
-- | 2      | 100        | 2009 | 12       | 5000  |
-- | 7      | 200        | 2011 | 15       | 9000  |

-- Given Product Table:
-- | product_id | product_name |
-- |-----------|--------------|
-- | 100       | Nokia        |
-- | 200       | Apple        |
-- | 300       | Samsung      |

-- Applying INNER JOIN:
-- - Nokia (product_id 100) appears in years 2008 and 2009 with price 5000.
-- - Apple (product_id 200) appears in year 2011 with price 9000.

-- Final Output:
-- | product_name | year  | price |
-- |------------|------|-------|
-- | Nokia      | 2008 | 5000  |
-- | Nokia      | 2009 | 5000  |
-- | Apple      | 2011 | 9000  |

-- This efficiently retrieves the desired results using an INNER JOIN operation.