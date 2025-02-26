select name from customer 
where referee_id<>2 OR referee_id is NULL\

/* pyspark
df.select(df.name).filter((df.referee_id!='2') & (df.referee_id IS NULL)).show(truncate=False)
*/
