-- SQL Solution to find customers who visited without making transactions

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

-- Explanation:
-- 1. Using LEFT JOIN:
--    - We join Visits and Transactions using the visit_id column.
--    - LEFT JOIN ensures all visits are included, even if they have no matching transactions.

-- 2. Filtering Non-Transaction Visits:
--    - We use WHERE t.transaction_id IS NULL to find visits without transactions.

-- 3. Counting Non-Transaction Visits:
--    - We use COUNT(v.visit_id) to count the number of times each customer visited without making a transaction.
--    - We GROUP BY v.customer_id to aggregate the count for each customer.

-- 4. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Visits Table:
-- | visit_id | customer_id |
-- |---------|-------------|
-- | 1       | 23          |
-- | 2       | 9           |
-- | 4       | 30          |
-- | 5       | 54          |
-- | 6       | 96          |
-- | 7       | 54          |
-- | 8       | 54          |

-- Given Transactions Table:
-- | transaction_id | visit_id | amount |
-- |--------------|----------|--------|
-- | 2            | 5        | 310    |
-- | 3            | 5        | 300    |
-- | 9            | 5        | 200    |
-- | 12           | 1        | 910    |
-- | 13           | 2        | 970    |

-- Applying LEFT JOIN and Filtering:
-- - Customer 23 (visit_id 1) made a transaction.
-- - Customer 9 (visit_id 2) made a transaction.
-- - Customer 30 (visit_id 4) made no transactions → Count = 1.
-- - Customer 54 visited 3 times (visit_ids 5, 7, 8), but only visit_id 5 had transactions → Count = 2.
-- - Customer 96 (visit_id 6) made no transactions → Count = 1.

-- Final Output:
-- | customer_id | count_no_trans |
-- |-----------|----------------|
-- | 54        | 2              |
-- | 30        | 1              |
-- | 96        | 1              |

-- This efficiently retrieves the desired results using a LEFT JOIN operation with filtering and aggregation.