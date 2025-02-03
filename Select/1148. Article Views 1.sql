-- SQL Solution to find authors who viewed at least one of their own articles

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

-- Explanation:
-- 1. Filtering Condition:
--    - We need to find authors who have viewed their own articles.
--    - This happens when author_id is equal to viewer_id.
--    - The WHERE clause filters only the rows where this condition is met.

-- 2. Selecting the Required Column:
--    - The query selects the author_id column (renamed as id) as required in the output.
--    - The DISTINCT keyword ensures we do not return duplicate author IDs.

-- 3. Sorting the Result:
--    - The ORDER BY id ASC ensures the output is sorted in ascending order.

-- Example Execution:
-- Given Views Table:
-- | article_id | author_id | viewer_id | view_date  |
-- |-----------|-----------|-----------|------------|
-- | 1         | 3         | 5         | 2019-08-01 |
-- | 1         | 3         | 6         | 2019-08-02 |
-- | 2         | 7         | 7         | 2019-08-01 |
-- | 2         | 7         | 6         | 2019-08-02 |
-- | 4         | 7         | 1         | 2019-07-22 |
-- | 3         | 4         | 4         | 2019-07-21 |
-- | 3         | 4         | 4         | 2019-07-21 |

-- Applying the Filter (author_id = viewer_id):
-- - Rows with author_id = 7 and viewer_id = 7.
-- - Rows with author_id = 4 and viewer_id = 4.

-- Final Output:
-- | id  |
-- |-----|
-- | 4   |
-- | 7   |

-- This efficiently retrieves the desired results in O(n) time complexity, where n is the number of rows in the table.