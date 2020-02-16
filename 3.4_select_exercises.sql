#2
USE albums_db;

#3
-- structure is INT, VARCHARs, and FLOATS

#4
-- Query to get the names of all the albums by Pink Floyd:
SELECT NAME
FROM albums
WHERE artist = 'Pink Floyd';

-- Query to get the year 'Sgt. Pepper' was released
SELECT release_date
FROM albums 
WHERE NAME = "Sgt. Pepper's Lonely Hearts Club Band";

-- Query to get the genre for 'Nevermind'
SELECT genre
FROM albums 
WHERE NAME = "Nevermind";

-- Query to see which albums were released in the 1990's
SELECT NAME 
FROM albums 
WHERE release_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Query to see which albums sold less than 20 million
SELECT NAME
FROM albums 
WHERE sales < '20';

-- Query to get all the albums with the genre 'Rock'
SELECT NAME
FROM albums 
WHERE genre = 'Rock' OR 'rock';
# The reason only these 5 albums were returned is that the query did not include 'IN' qualifier, NOR did it specify the other genres that include the word 'rock.'\\