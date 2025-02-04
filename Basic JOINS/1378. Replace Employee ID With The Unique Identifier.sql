-- SQL Solution to get unique IDs of employees, showing NULL if not present

SELECT euni.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI euni
ON e.id = euni.id;

-- Explanation:
-- 1. Using LEFT JOIN:
--    - We join Employees with EmployeeUNI using the id column.
--    - LEFT JOIN ensures all employees are included, even if they have no unique_id.

-- 2. Selecting the Required Columns:
--    - We select unique_id from EmployeeUNI.
--    - We select name from Employees.
--    - If an employee does not have a unique_id, NULL is displayed.

-- 3. Result Order:
--    - The output order is not specified, so we return results in any order.

-- Example Execution:
-- Given Employees Table:
-- | id  | name     |
-- |----|----------|
-- | 1  | Alice    |
-- | 7  | Bob      |
-- | 11 | Meir     |
-- | 90 | Winston  |
-- | 3  | Jonathan |

-- Given EmployeeUNI Table:
-- | id  | unique_id |
-- |----|-----------|
-- | 3  | 1         |
-- | 11 | 2         |
-- | 90 | 3         |

-- Applying LEFT JOIN:
-- - Alice (id 1) and Bob (id 7) have no matching records, so unique_id is NULL.
-- - Meir (id 11) has unique_id 2.
-- - Winston (id 90) has unique_id 3.
-- - Jonathan (id 3) has unique_id 1.

-- Final Output:
-- | unique_id | name     |
-- |----------|----------|
-- | null     | Alice    |
-- | null     | Bob      |
-- | 2        | Meir     |
-- | 3        | Winston  |
-- | 1        | Jonathan |

-- This efficiently retrieves the desired results using a LEFT JOIN operation.
