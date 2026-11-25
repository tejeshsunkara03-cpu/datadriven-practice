SELECT p.category, SUM(t.total_amount) total_revenue, COUNT(transaction_id) transaction_count
FROM transactions t
INNER JOIN products p
ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
