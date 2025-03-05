
select tweet_id from Tweets where length(content)>15

/*
df.select(df.tweet_id).filter(length(df.content)>15)
*/
