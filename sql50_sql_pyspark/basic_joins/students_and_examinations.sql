SELECT stud.student_id, stud.student_name, sub.subject_name, count(exam.student_id) as attended_exams
FROM Students stud CROSS JOIN Subjects sub
LEFT JOIN Examinations exam on exam.student_id=stud.student_id AND exam.subject_name = sub.subject_name
GROUP BY stud.student_id, stud.student_name, sub.subject_name
ORDER BY stud.student_id

/*
df_joined_1 = df_studemt.alias("stud").crossJoin(df_subjects.alias("sub"))
df_joined_2 = df_joined_1.join(df_examinations.alias("exam"),(
        (F.col("exam.student_id")==F.col("stud.student_id")) &
        (F.col("exam.subject_name")==F.col("sub.subject_name"))
    ),
    "left"
)
df_final = df_joined_2.groupBy(F.col("stud.student_id"), F.col("stud.student_name"), F.col("sub.subject_name")).agg(F.count(F.col("exam.student_id")).alias("attended_exams")).orderBy("F.col(stud.student_id)")
*/
