-- to get the complete details of the table 
SELECT * FROM student_scores;

--  to get only the specfic columns form the table 
SELECT gender , race_ethnicity FROM student_scores;

-- to get the distinct // different race_enthinicty from the table
SELECT DISTINCT race_ethnicity FROM student_scores;

-- to count the number of records  from the table   
-- also counts the null values 
SELECT COUNT (*) FROM student_scores;

-- to distinct race_ethnicity 
SELECT COUNT (DISTINCT race_ethnicity) FROM student_scores;

-- to select , based on  some conditions , we use where at the end 
SELECT  gender , test_preparation FROM student_scores WHERE parental_education = 'some college' ;


SELECT test_preparation FROM student_scores WHERE math_score < 40;

-- to get the isnull  values 
SELECT * FROM student_scores WHERE test_preparation IS NULL;

-- to use two conditions at once 
SELECT *  FROM student_scores WHERE math_score > 50 AND reading_score < 80;

-- to use either or condition ,only one should be true 
SELECT * FROM student_scores WHERE math_score > 50 OR reading_score < 80;

-- to order by ascending order is default 
SELECT *  FROM student_scores ORDER BY math_score;

-- to order by descending order 
SELECT * FROM  student_scores ORDER BY reading_score DESC;

-- to order by ascending and descinding order both 
SELECT * FROM student_scores ORDER BY math_score ASC , reading_score DESC;

-- to only need limited amout of the data  , we use limit   
-- uses in pagination 
SELECT * FROM student_scores LIMIT 10;

-- to only need  the top scorer 
SELECT * FROM student_scores ORDER BY math_score LIMIT 15;

-- using order , where , limit  at onces
SELECT * FROM student_scores WHERE  reading_score > 50 ORDER BY math_score LIMIT 10;

-- to get only the between values , we can use it in the date thing 
-- without having multiple conditions 
SELECT * FROM student_scores WHERE reading_score BETWEEN 20 AND 40;

-- using not  with the help of between 
SELECT * FROM student_scores WHERE reading_score NOT BETWEEN 20 AND 40;

--  in command is used for the just the spefic 
SELECT * FROM student_scores WHERE reading_score IN ('71' , '72');

-- not in command , just not want  this 
SELECT * FROM student_scores WHERE reading_score NOT IN ('71' , '72');

--- starts from s 
SELECT * FROM student_scores WHERE lunch LIKE 's%';

-- between s , like any occurence of s in between 
SELECT * FROM student_scores WHERE lunch LIKE 's%';

-- ends with c 
SELECT * FROM student_scores WHERE race_ethnicity LIKE  '%c';

-- same as like , it is just not case sensitive 
SELECT * FROM student_scores WHERE test_preparation ILIKE '%ed';



-- _represnts the single charecter 
-- % represents multiplle charcter 
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';


-- alias , like represnt the clumn with different name 
SELECT math_score AS math FROM student_scores;

-- having , only used with group by clause , with a condition
SELECT Country, COUNT(CustomerID) AS [Number of Customers]
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;