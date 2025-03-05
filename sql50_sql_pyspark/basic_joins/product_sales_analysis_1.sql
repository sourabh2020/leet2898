SELECT product_name, year, price
FROM Sales JOIN Product 
ON Sales.product_id = product.product_id

/*
df_sales.join(df_product, df_sales.product_id == df_product.product_id, "inner").select(df_product.procust_name, df_sales.year, df_sales.price).show(truncate=False)
*/
