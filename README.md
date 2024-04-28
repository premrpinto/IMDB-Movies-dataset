# IMDB-Movies-dataset

## Table of Contents
- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Analysis using SQL](#data-analysis-using-sql)
- [Results](#results)
- [Data Visualization using PowerBi](#data-visualization-using-powerbi)
- [Findings](#findings)
- [Limitations](#limitations)

### Project Overview
This data analysis project aims to provide insights into movie production over the years. By analyzing various aspects of movie dataset, we seek to identify user ratings, movie success based on imdb ratings, meta score, number of votes.

### Data Sources
IMDB Movies dataset [Download here](https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows)

### Tools
- Excel   - Data Cleaning
- SQL     - Data Analysis
- PowerBi - Data visualization and dashboard

### Data Cleaning
In the initial data preparation phase, I performed the following tasks:
1. Data loading and inspection.
2. Handling missing values.
3. Data cleaning and formatting.

### Exploratory Data Analysis
EDA involved exploring the IMDB movies dataset to answer the key questions, such as:
- Which movie has the least Meta_score?
- Which movie got the highest number of votes and who are the stars?
- Who was the director of the movie Jocker?
- Which director has produced the highest movies?

### Data Analysis using SQL
Which movie has the least Meta_score?
```SQL
SELECT Series_Title, least(meta_score)AS Lowest_Metascore
FROM movies 
ORDER BY Lowest_metascore ASC;
```

Which movie got the highest number of votes and who are the stars?
```SQL
SELECT Series_Title, greatest(No_of_Votes)AS Max_Votes, Star1, Star2, Star3
FROM movies
ORDER BY Max_Votes DESC;
```

Who was the director of the movie Jocker?
```SQL
SELECT Series_Title, director
FROM movies
WHERE Series_Title = 'Joker';
```

Which director has directed the highest movies?
```SQL
SELECT director, Count(Series_Title) 
FROM movies
GROUP BY director;
```

### Results
1. Movies Tumbbad and Snatch has the lowest meta score.
2. The Shawshank Redemtion got the highest number of votes. The stars who acted in the movie are Tim Robbins, Morgan Freeman and Bob Gunton.
3. The director of the movie Joker is Todd Phillips.
4. Steven Spielberg has directed the highest movies.

### Data Visualization using PowerBi
[Download here](https://app.powerbi.com/groups/me/reports/6355d3bf-0645-44c9-9631-7d0097bd5e94?experience=power-bi)
![Least Meta Score](https://github.com/premrpinto/IMDB-Movies-dataset/assets/168356414/af70c5b0-0fee-4aef-af8a-9997029a11bc)
![Highest number of votes](https://github.com/premrpinto/IMDB-Movies-dataset/assets/168356414/9c451786-570c-49f7-b700-00805aa8dfe3)
![Director with highest movies](https://github.com/premrpinto/IMDB-Movies-dataset/assets/168356414/1c0b2ddd-5fbd-445c-9963-685ec852256c)
![Interactive Dashboard](https://github.com/premrpinto/IMDB-Movies-dataset/assets/168356414/6aa1bbf8-5ba3-4096-90ca-01b25cbc2e72)

### Findings
Based on the analysis, I found out that Steven Spielberg has produced highest movies. The most favoured movie by the audience was 'The Shawshank Redemtion' based on the number of votes it received. The famous movie which received the golden Globe award 'Jocker' was directed by Todd Phillips.

### Limitations
- Dropped unwanted columns from the dataset.
- Deleted the rows containing the null values.
