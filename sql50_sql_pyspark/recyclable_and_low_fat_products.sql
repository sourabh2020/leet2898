SELECT product_id FROM Products WHERE low_fats='Y' AND recyclable='Y'

/* PYSPARK SOLUTION
df.select(df.product_id).filter((df.low_fats=='Y') & (df.recyclable=='Y')).show(truncate=False)
*/
