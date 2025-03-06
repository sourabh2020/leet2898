SELECT E.name, B.Bonus FROM
Employee E LEFT JOIN Bonus B 
ON E.empId=B.EmpID
WHERE B.Bonus<1000 OR B.Bonus IS NULL

/*
df_joined = df_emp.alias('E').join(
    df_bonus.alias('B'),
    (
        F.col("E.empId")==F.col("B.empId")
    ),
    "left"
)
df_joined.select(F.col("E.name"), F.col("B.Bonus")).filter(
    (F.col("B.Bonus")<1000) | (F.col("B.Bonus").isNull())
    ).show(truncate=False)
*/
