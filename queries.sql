-- Create the Student table
CREATE TABLE Student (
    STU_NUM       CHAR(6)      PRIMARY KEY,
    STU_SNAME     VARCHAR(15),
    STU_FNAME     VARCHAR(15),
    STU_INITIAL   CHAR(1),
    STU_STARTDATE DATE,
    COURSE_CODE   CHAR(3),
    PROJ_NUM      INT
);

-- Insert all the student records into the Student table
INSERT INTO Student VALUES ('01', 'Snow',      'Jon',     'E', '2014-04-05', '201', 6);
INSERT INTO Student VALUES ('02', 'Stark',     'Arya',    'C', '2017-07-12', '305', 11);
INSERT INTO Student VALUES ('03', 'Lannister', 'Jamie',   'C', '2012-09-05', '101', 2);
INSERT INTO Student VALUES ('04', 'Lannister', 'Cercei',  'J', '2012-09-05', '101', 2);
INSERT INTO Student VALUES ('05', 'Greyjoy',   'Theon',   'I', '2015-12-09', '402', 14);
INSERT INTO Student VALUES ('06', 'Tyrell',    'Margaery','Y', '2017-07-12', '305', 10);
INSERT INTO Student VALUES ('07', 'Baratheon', 'Tommen',  'R', '2019-06-13', '201', 5);

-- Retrieve students enrolled in course 305
SELECT *
  FROM Student
 WHERE COURSE_CODE = '305';

-- Delete Jamie Lannister’s record
DELETE
  FROM Student
 WHERE STU_FNAME     = 'Jamie'
   AND STU_SNAME     = 'Lannister'
   AND STU_STARTDATE = '2012-09-05'
   AND COURSE_CODE   = '101'
   AND PROJ_NUM      = 2;

-- Update project numbers to 14 for students who started before 2016 in courses >= 201
UPDATE Student
   SET PROJ_NUM = 14
 WHERE STU_STARTDATE < '2016-01-01'
   AND COURSE_CODE   >= '201';

-- Drop the entire Student table when done
DROP TABLE Student;