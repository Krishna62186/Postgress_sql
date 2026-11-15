-- to create the table in the database
CREATE TABLE student_scores (
    gender VARCHAR(10),
    race_ethnicity VARCHAR(30),
    parental_education VARCHAR(50),
    lunch VARCHAR(30),
    test_preparation VARCHAR(30),
    math_score INT,
    reading_score INT,
    writing_score INT
);

--- to insert into student table 
INSERT INTO student_scores VALUES ('trans' , 'group d' , 'abc' , 'free' , 'none' , 53, 53,64);
-- TO INSERT INTO SPECFIC VALUES
INSERT INTO student_scores (math_score , reading_score , writing_score) VALUES (31 , 31,78);
 
-- just to check the null values 
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

SELECT  * FROM student_scores WHERE gender IS NULL;

-- to check not null vaalues 
SELECT * FROM student_scores WHERE gender IS NOT NULL;
