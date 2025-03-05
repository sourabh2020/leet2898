select distinct author_id as id
from views
where author_id = viewer_id
order by id

/*
df.select(df.author_id).filter(df.author_id==df.viewer_id).orderBy(df.id)
*/
