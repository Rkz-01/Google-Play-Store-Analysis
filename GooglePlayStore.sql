SELECT * FROM GooglePlayStore

--Q1 Which is the most used Android Version?
SELECT Android_Ver, COUNT(*) 
FROM GooglePlayStore 
GROUP BY Android_Ver 
ORDER BY COUNT(*) DESC;


--Q2 Which all categories of mobile apps are existing from this dataset?
SELECT Category, COUNT(*) as count
FROM GooglePlayStore
GROUP BY Category
ORDER BY count DESC


-- Changing the dtype due to error of big calculations in Installs column
ALTER TABLE GooglePlayStore
ALTER COLUMN Installs BIGINT;


--Q3 Which is the most installed category of mobile apps from this dataset?
SELECT Category, SUM(Installs) as total_installs
FROM GooglePlayStore
GROUP BY Category
ORDER BY total_installs DESC;


--Q4 How many total categories are there
SELECT COUNT(DISTINCT Category)
FROM GooglePlayStore;


--Q5 Which are the top 10 mobile apps based on Ratings?
SELECT TOP (10)  App, Rating, COUNT(*) as count
FROM GooglePlayStore
GROUP BY App, Rating
ORDER BY count DESC


--Q6 Which Apps have got 5 star ratings?
SELECT App, Rating
FROM GooglePlayStore
WHERE Rating = 5
ORDER BY App;


