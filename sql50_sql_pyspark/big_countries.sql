SELECT name, population, area FROM World
WHERE area>=3000000 OR population>=25000000

/*
df.select(df.name, df.population, df.area).filter((df.area>='3000000') | (df.population>='25000000'))
*/
