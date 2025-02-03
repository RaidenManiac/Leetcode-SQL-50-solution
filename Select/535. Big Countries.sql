-- SQL Solution to find big countries based on area or population

SELECT name, population, area 
FROM World 
WHERE area >= 3000000 OR population >= 25000000;

-- Explanation:
-- 1. Filtering Condition:
--    - A country is considered "big" if:
--      a) Its area is at least 3,000,000 km² (area >= 3000000), OR
--      b) Its population is at least 25,000,000 (population >= 25000000).
--    - The WHERE clause ensures that we select only those countries that meet at least one of these criteria.

-- 2. Selecting the Required Columns:
--    - The query selects the name, population, and area columns as requested in the problem statement.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given World Table:
-- | name        | continent | area    | population | gdp          |
-- |------------|-----------|---------|------------|--------------|
-- | Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
-- | Albania     | Europe    | 28748   | 2831741    | 12960000000  |
-- | Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
-- | Andorra     | Europe    | 468     | 78115      | 3712000000   |
-- | Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

-- Applying the Filter (area >= 3000000 OR population >= 25000000):
-- - Afghanistan (population = 25,500,100) meets the population condition.
-- - Algeria (population = 37,100,000) meets the population condition.

-- Final Output:
-- | name        | population | area    |
-- |------------|------------|---------|
-- | Afghanistan | 25500100   | 652230  |
-- | Algeria     | 37100000   | 2381741 |

-- This efficiently retrieves the desired results in O(n) time complexity, where n is the number of rows in the table.
