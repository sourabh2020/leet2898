SELECT unique_id, name FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id

/*
df_emp.select(df_emp.unique_id, df_emp.name).join(df_empuni, df_emp.id == df_empuni.id, "left").show(truncate=False)
*/
