-- SQL Solution to find products that are both low fat and recyclable

SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';

-- Explanation:
-- 1. Filtering Condition:
--    - We need products that are both low fat (low_fats = 'Y') and recyclable (recyclable = 'Y').
--    - The WHERE clause filters only the rows where both conditions are met.

-- 2. Selecting the Required Column:
--    - The query selects only the product_id column since the problem asks for product IDs.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Products Table:
-- | product_id | low_fats | recyclable |
-- |------------|----------|------------|
-- | 0          | Y        | N          |
-- | 1          | Y        | Y          |
-- | 2          | N        | Y          |
-- | 3          | Y        | Y          |
-- | 4          | N        | N          |

-- Applying the Filter (low_fats = 'Y' AND recyclable = 'Y'):
-- - Rows with product_id = 1 and product_id = 3 meet the condition.

-- Final Output:
-- | product_id |
-- |------------|
-- | 1          |
-- | 3          |

-- This efficiently retrieves the desired results in O(n) time complexity, where n is the number of rows in the table.
