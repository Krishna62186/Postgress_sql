-- to find the highest score and the lowest score 
SELECT MAX(math_score) FROM student_scores;
SELECT MIN(math_score) FROM student_scores; 

-- to find out the latest birth date 
SELECT MAX(BirthDate) AS LatestBirthdate
FROM Employees;

-- using conditions while finding the maximum value
SELECT MAX(Price) AS HighestPrice, CategoryID
FROM Products
GROUP BY CategoryID;

-- to get the sum of the particular column
SELECT SUM(math_score) FROM student_scores;

-- to get the avg of the particular column
SELECT AVG(math_score) FROM student_scores;

