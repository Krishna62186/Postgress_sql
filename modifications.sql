-- update statement is used to change or modify the existing record 

UPDATE student_scores SET race_ethnicity = 'F' WHERE gender  = 'female';

-- delete , to delete the existing record , based on some condition
DELETE FROM student_scores WHERE gender = 'male';

-- deletes the records of the table 
DELETE FROM Customers;

-- drop is used to delete the record 
DROP TABLE Customers;