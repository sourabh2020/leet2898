WITH cte1 AS(
SELECT *, 
RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS rnk
FROM products
WHERE change_date<='2019-08-16'
)
SELECT distinct A.product_id, COALESCE(cte1.new_price, 10) AS price
FROM products A LEFT JOIN cte1
ON A.product_id = cte1.product_id
AND (rnk=1 OR rnk IS NULL) 

/*
windowSpec = Window.partitionBy(F.col("product_id")).orderBy(F.col("change_date").desc())
df1 = df.withColumn("rnk", rank().over(windowSpec)).filter(F.col("change_date")<=F.lit("2019-08-16"))
df_join = df.alias('A').join(df1, (
    (df.product_id == df1.product_id) &
    (df1.rnk==1 | df1.rnk.isNull())
    ),
    "left"
)
df_join.select("product_id", F.coalesce(F.col("new_price"),F.lit("10"))).ditinct()
*/
