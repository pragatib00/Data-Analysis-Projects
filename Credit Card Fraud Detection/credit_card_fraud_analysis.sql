-- ============================================
-- Credit Card Fraud Detection SQL Analysis
-- Database: PostgreSQL
-- ============================================

-- 1. View first few records
SELECT *
FROM transactions
LIMIT 10;


-- 2. Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;


-- 3. Fraud vs Legitimate transaction count
SELECT
    class,
    COUNT(*) AS total_transactions
FROM transactions
GROUP BY class;


-- 4. Percentage of fraudulent transactions
SELECT
    class,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions) AS percentage
FROM transactions
GROUP BY class;


-- 5. Summary statistics of transaction amount
SELECT
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount,
    AVG(amount) AS avg_amount,
    STDDEV(amount) AS stddev_amount
FROM transactions;


-- 6. Average transaction amount by class
SELECT
    class,
    AVG(amount) AS avg_amount
FROM transactions
GROUP BY class;


-- 7. High-value fraudulent transactions
SELECT *
FROM transactions
WHERE class = 1
  AND amount > 1000
ORDER BY amount DESC;


-- 8. Fraudulent transactions by time range
SELECT
    CASE
        WHEN time < 21600 THEN 'Night'
        WHEN time < 43200 THEN 'Morning'
        WHEN time < 64800 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_period,
    COUNT(*) AS fraud_count
FROM transactions
WHERE class = 1
GROUP BY time_period;


-- 9. Transactions with amount greater than overall average
SELECT *
FROM transactions
WHERE amount > (SELECT AVG(amount) FROM transactions);


-- 10. Create a view for fraud-only transactions
CREATE OR REPLACE VIEW fraud_transactions AS
SELECT *
FROM transactions
WHERE class = 1;


-- 11. Query from the fraud view
SELECT COUNT(*) AS total_fraud_transactions
FROM fraud_transactions;
