-- SQL Solution to find customers not referred by customer with id = 2

SELECT name 
FROM Customer 
WHERE referee_id IS NULL OR referee_id <> 2;

-- Explanation:
-- 1. Filtering Condition:
--    - We need customers whose referee_id is either NULL (not referred by anyone) or not equal to 2.
--    - The WHERE clause ensures that we exclude all customers who were referred by customer with id = 2.

-- 2. Selecting the Required Column:
--    - The query selects only the name column as the problem asks for customer names.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Customer Table:
-- | id | name | referee_id |
-- |----|------|------------|
-- | 1  | Will | null       |
-- | 2  | Jane | null       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | null       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |

-- Applying the Filter (referee_id IS NULL OR referee_id <> 2):
-- - Rows with names Will, Jane, Bill, and Zack meet the condition.

-- Final Output:
-- | name |
-- |------|
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |

-- This efficiently retrieves the desired results in O(n) time complexity, where n is the number of rows in the table.
