
-- // 1. Count the Number of Movies vs TV Shows

select count(*) from public.netflix


-- 2.Find the Distinct Types in type feautre

select distinct(type) from public.Netflix 


-- 3.Find the Most Common Rating for Movies and TV Shows

select type,rating,count(*) from public.Netflix  where rating is not null group by rating,type order by type,count DESC


-- 4.List all the movies which are released of latest year

select distinct(title) from public.netflix where release_year in (select max(release_year) from public.netflix) and type='Movie'

 -- 5.Identify the longest movie


 with length as ( select title,split_part(duration,' ',1) as duration from public.netflix where type='Movie' and duration is not null
)

 select title,cast(duration as INT) as dur from length order by dur desc limit 1

 -- 6. Find the top 5 countries with the most content on Netflix


 select country,count(*) as country_content_count from public.netflix where country is not null group by country order by country_content_count DESC limit 5



-- 7. List all TV shows with more than 3 seasons


with length as ( select title,split_part(duration,' ',1) as seasons from public.netflix where type!='Movie' and duration is not null
)

 select * from (select title,cast(seasons as INT) as seasons from length) as answer where answer.seasons>=3 order by seasons desc


-- 8. Count the number of content items in each genre

SELECT 
	UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
	COUNT(*) as genre_count
FROM netflix
GROUP BY genre order by genre_count desc


-- 9. List all movies that are documentaries

with answer as (select title,string_to_array(listed_in,',') as text from public.netflix where type='Movie')
select * from answer where 'Documentaries'=ANY(text)


-- 10. Find all content without a director

select title from public.netflix where director is null


-- 11. Find how many movies actor 'Brad Pitt' appeared in last 10 years!


with answer as (select *,string_to_array(casts,',') as text from public.netflix where type='Movie')
select * from answer where 'Brad Pitt'=ANY(text)



-- 12. Find the top 10 actors who have appeared in the highest number of movies produced in Australia.


SELECT 
	UNNEST(STRING_TO_ARRAY(casts, ',')) as actors,
	COUNT(*) as actors_count
FROM netflix where country='Australia'
GROUP BY actors order by actors_count desc


-- 13.
-- Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
-- the description field. Label content containing these keywords as 'Bad' and all other 
-- content as 'Good'. Count how many items fall into each category.



with answer as (select *,string_to_array(description,' ') as descript from public.netflix where type='Movie')
select title,case when 'kill'=ANY(descript) or 'violence'=ANY(descript) then 'Bad' else 'Good' end  as movie_type from answer) 
