CREATE DATABASE upi_fraud_db;
USE upi_fraud_db;
USE upi_fraud_db;

SELECT COUNT(*) AS total_transactions
FROM transactions;

SELECT *
FROM transactions
LIMIT 5;


SELECT
    COUNT(*) AS total_transactions,
    ROUND(AVG(transaction_amount), 2) AS average_amount,
    ROUND(MAX(transaction_amount), 2) AS maximum_amount,
    ROUND(MIN(transaction_amount), 2) AS minimum_amount
FROM transactions;

SELECT
    actual_fraud_label,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY actual_fraud_label;

DESCRIBE transactions;

USE upi_fraud_db;

SELECT COUNT(*) AS total_transactions
FROM transactions;

USE upi_fraud_db;

SELECT
    actual_fraud_label,
    COUNT(*) AS transaction_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions),
        2
    ) AS percentage
FROM transactions
GROUP BY actual_fraud_label
ORDER BY actual_fraud_label;

SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_value,
    ROUND(AVG(transaction_amount), 2) AS average_amount,
    ROUND(MAX(transaction_amount), 2) AS maximum_amount,
    ROUND(MIN(transaction_amount), 2) AS minimum_amount
FROM transactions;

SELECT

    merchant_category,
    COUNT(*) AS transaction_count,
    ROUND(AVG(transaction_amount), 2) AS average_amount,
    ROUND(SUM(transaction_amount), 2) AS total_value
FROM transactions
GROUP BY merchant_category
ORDER BY total_value DESC;

SELECT
    transaction_id,
    transaction_amount,
    merchant_category,
    transaction_type,
    location,
    actual_fraud_label
FROM transactions
ORDER BY transaction_amount DESC
LIMIT 10;

USE upi_fraud_db;

SELECT
    actual_fraud_label,
    COUNT(*) AS transaction_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM transactions),
        2
    ) AS percentage
FROM transactions
GROUP BY actual_fraud_label
ORDER BY actual_fraud_label;

SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_value,
    ROUND(AVG(transaction_amount), 2) AS average_amount,
    ROUND(MAX(transaction_amount), 2) AS maximum_amount,
    ROUND(MIN(transaction_amount), 2) AS minimum_amount
FROM transactions;