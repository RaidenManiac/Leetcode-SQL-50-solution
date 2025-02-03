-- SQL Solution to find invalid tweets exceeding 15 characters

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- Explanation:
-- 1. Filtering Condition:
--    - A tweet is considered invalid if its content length is strictly greater than 15 characters.
--    - The WHERE clause filters only the rows where LENGTH(content) > 15.

-- 2. Selecting the Required Column:
--    - The query selects only the tweet_id column as required in the output.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Tweets Table:
-- | tweet_id | content                           |
-- |---------|-----------------------------------|
-- | 1       | Let us Code                       |
-- | 2       | More than fifteen chars are here! |

-- Applying the Filter (LENGTH(content) > 15):
-- - Tweet 1 has length = 11, which is valid.
-- - Tweet 2 has length = 33, which is invalid.

-- Final Output:
-- | tweet_id |
-- |---------|
-- | 2       |

-- This efficiently retrieves the desired results in O(n) time complexity, where n is the number of rows in the table.