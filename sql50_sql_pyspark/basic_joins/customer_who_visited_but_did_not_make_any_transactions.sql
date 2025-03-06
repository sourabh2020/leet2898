SELECT customer_id, COUNT(visit_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
SELECT v.visit_id
    FROM Visits V INNER JOIN Transactions T
    ON V.visit_id = T.visit_id
)
GROUP BY customer_id

/*
df_joined = df_visit.join(df_transact, df_visit.visit_id == df_transact.visit_id, "inner")
df_visit.exceptAll(df_joined).groupBy(df_visit.customer_id).count("visit_id")
*/

--optimised approach
/*
df_no_trans = df_visit.join(df_transact, df_visit.visit_id == df_transact.visit_id, "left_anti")
df_no_trans.groupBy("customer_id").count().show()
*/
