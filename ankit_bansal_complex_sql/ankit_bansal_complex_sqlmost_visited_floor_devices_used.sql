SELECT * FROM entries;
WITH max_floor_visits AS(
SELECT name, floor, COUNT(*) AS no_of_floor_visits,
RANK() OVER(PARTITION BY name ORDER BY COUNT(*) DESC) AS rnk
FROM entries
GROUP BY name, floor
), devices_used_visits AS (
SELECT name, COUNT(*) AS total_visits, GROUP_CONCAT(distinct resources) AS resources_used FROM entries
GROUP BY name
)
SELECT mfv.name, duv.total_visits, mfv.floor, duv.resources_used AS most_visited_floor
FROM max_floor_visits mfv JOIN devices_used_visits duv ON mfv.name = duv.name
WHERE mfv.rnk=1

/*
lesson learned:
STRING_AGG function is there in SQL SERVER STRING_AGG(column_name, ','), this will cobined the values from all the rows of that vies in table grouped by column_name
equivalent to GROUP_CONCAT(column_name) in MYSQL
*/
