SELECT w1.id
from weather w1 JOIN weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate)=1
where w1.temperature>w2.temperature

/*
df_join = df_weather.alias('w1').join(df_weather.alias('w1'), F.datediff(F.col("w1.recordDate"), F.col("w2.recordDate")==1, "inner"))
df_join.select(F.col("w1.id")).filter(F.col("w1.temperature")>F.col("w1.temperature"))
*/
