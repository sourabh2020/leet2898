SELECT t1.machine_id, round(avg(t2.timestamp-t1.timestamp), 3) AS processing_time
FROM Activity t1 JOIN Activity t2
ON t1.machine_id=t2.machine_id AND t1.process_id=t2.process_id AND t1.activity_type='start' AND t2.activity_type='end'
GROUP BY t1.machine_id

/*
df_joined = df_activity.alias("t1").join(
    (df_activity).alias("t2"), 
    (
        (F.col("t1.machine_id")==F.col("t2.machine_id")) & 
        (F.col("t1.process_id")==F.col("t2.process_id")) & 
        (F.col("t1.activity_type")==F.lit('start')) & 
        (F.col("t2.activity_type")==F.lit('end'))
    ), 
    "inner"
)
df_joined.groupBy(F.col("t1.machine_id")).agg(F.round(F.avg(F.col("t2.timestamp")-F.col("t1.timestamp")),3).alias("processing_time"))
*/
