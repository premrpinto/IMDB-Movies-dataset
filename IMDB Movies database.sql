CREATE TABLE Movies (Series_Title varchar(100), Released_Year int, Runtime varchar(100), Genre varchar(100), IMDB_Rating int, Meta_score int, Director varchar(100), Star1 varchar(100),
			  Star2 varchar(100), Star3 varchar(100), No_of_Votes int, Gross int);

SELECT * FROM movies

-- Questions:
-- Which movie has the least Meta_score?
SELECT Series_Title, least(meta_score)AS Lowest_Metascore
FROM movies 
ORDER BY Lowest_metascore ASC;
--Movies Tumbbad and Snatch has the lowest meta score.


-- Which movie got the highest number of votes and who are the stars?
SELECT Series_Title, greatest(No_of_Votes)AS Max_Votes, Star1, Star2, Star3
FROM movies
ORDER BY Max_Votes DESC;
-- The Shawshank Redemtion got the highest number of votes 
-- The stars who acted in the movie are Tim Robbins, Morgan Freeman and Bob Gunton.


-- Who was the director of the movie Jocker?
SELECT Series_Title, director
FROM movies
WHERE Series_Title = 'Joker';
-- The director of the ovie Joker is Todd Phillips.

-- Which director has produced the highest movies?
SELECT director, Count(Series_Title) 
FROM movies
GROUP BY director;
-- Steven Spielberg has produced the highest movies.

