

### Netflix Case Study 

Welcome to the Netflix Case Study! This document provides a comprehensive overview of the tasks and analyses performed on Netflix’s content database. The goal of this case study is to derive actionable insights and patterns from the dataset, which includes information on movies and TV shows. The analysis focuses on content categorization, trend identification, and content-specific metrics. Below is a detailed description of each analysis performed:



### [The data for this project is sourced from the Kaggle dataset:

Dataset Link: Movies Dataset](https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download)


# Create Code:


```sql
DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
    show_id      VARCHAR(5),
    type         VARCHAR(10),
    title        VARCHAR(250),
    director     VARCHAR(550),
    casts        VARCHAR(1050),
    country      VARCHAR(550),
    date_added   VARCHAR(55),
    release_year INT,
    rating       VARCHAR(15),
    duration     VARCHAR(15),
    listed_in    VARCHAR(250),
    description  VARCHAR(550)
);
```

---

#### 1. Count the Number of Movies vs TV Shows

This task involves calculating the total number of movies and TV shows available on Netflix. The goal is to understand the distribution of content types on the platform.

**Query/Analysis:**
- Count the total entries for each content type (Movies and TV Shows) and provide a summary.

---

#### 2. Find the Distinct Types in the Type Feature

We explore the `type` feature to identify all unique types of content present in the dataset. This helps in understanding the diversity of content types available.

**Query/Analysis:**
- Retrieve and list all distinct types found in the `type` feature of the dataset.

---

#### 3. Find the Most Common Rating for Movies and TV Shows

Determine the most frequently occurring rating for both movies and TV shows. This analysis helps in understanding the common rating trends.

**Query/Analysis:**
- Analyze the rating distribution and identify the most common rating for movies and TV shows separately.

---

#### 4. List All Movies Released in the Latest Year

Identify and list movies that were released in the most recent year available in the dataset. This provides insights into the latest additions to Netflix’s movie library.

**Query/Analysis:**
- Filter movies based on the release year and list those from the most recent year.

---

#### 5. Identify the Longest Movie

Find the movie with the longest duration. This helps in understanding the extreme end of movie lengths available on Netflix.

**Query/Analysis:**
- Compare the duration of all movies and identify the one with the maximum duration.

---

#### 6. Find the Top 5 Countries with the Most Content on Netflix

Determine the top five countries with the highest number of content items available on Netflix. This provides insight into the geographical diversity of Netflix’s content library.

**Query/Analysis:**
- Count the number of content items per country and list the top five countries with the most content.

---

#### 7. List All TV Shows with More Than 3 Seasons

Identify TV shows that have more than three seasons. This helps in recognizing popular and long-running TV series available on Netflix.

**Query/Analysis:**
- Filter TV shows based on the number of seasons and list those with more than three.

---

#### 8. Count the Number of Content Items in Each Genre

Count and summarize the number of content items in each genre. This analysis provides an overview of genre distribution on Netflix.

**Query/Analysis:**
- Aggregate the content items by genre and count the number of items per genre.

---

#### 9. List All Movies that are Documentaries

Identify and list all movies categorized as documentaries. This helps in exploring the range of documentary films available on Netflix.

**Query/Analysis:**
- Filter the dataset to retrieve all movies where the genre or type indicates that they are documentaries.

---

#### 10. Find All Content Without a Director

Identify and list content items that do not have a director specified. This analysis helps in understanding gaps in content metadata.

**Query/Analysis:**
- Filter out content items where the director field is missing or null.

---

#### 11. Find How Many Movies Actor 'Brad Pitt' Appeared in the Last 10 Years

Calculate the number of movies that actor Brad Pitt has appeared in over the last decade. This provides insight into his recent contributions to the movie industry as represented on Netflix.

**Query/Analysis:**
- Filter movies based on the actor and release year, then count the number of movies featuring Brad Pitt in the last 10 years.

---

#### 12. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in Australia

Identify the top ten actors who have appeared in the most movies that were produced in Australia. This highlights key actors associated with Australian productions.

**Query/Analysis:**
- Aggregate the number of movies by actor for those produced in Australia and list the top ten actors with the highest counts.

---

#### 13. Categorize Content Based on Keywords in the Description

Categorize content based on the presence of the keywords 'kill' and 'violence' in the description field. Label content containing these keywords as 'Bad' and all other content as 'Good'. Count the number of items in each category.

**Query/Analysis:**
- Use text analysis to categorize content based on keywords in descriptions and count the number of items in each category.

---

Feel free to review the results and insights provided from each analysis to gain a deeper understanding of Netflix’s content offerings and trends.

For any additional questions or detailed explanations of the queries and methods used, please refer to the corresponding sections in the analysis documentation.

