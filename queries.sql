-- Create the Student table with descriptive column names
CREATE TABLE Student (
    STUDENT_NUMBER   CHAR(6)      PRIMARY KEY,     -- Unique student identifier
    SURNAME          VARCHAR(15),                  -- Student's last name
    FIRST_NAME       VARCHAR(15),                  -- Student's first name
    MIDDLE_INITIAL   CHAR(1),                      -- Student's middle initial
    START_DATE       DATE,                         -- Enrollment/start date
    COURSE_CODE      CHAR(3),                      -- Course code enrolled in
    PROJECT_NUMBER   INT                           -- Assigned project number
);

-- Insert records into the Student table
INSERT INTO Student VALUES ('01', 'Snow',      'Jon',     'E', '2014-04-05', '201', 6);
INSERT INTO Student VALUES ('02', 'Stark',     'Arya',    'C', '2017-07-12', '305', 11);
INSERT INTO Student VALUES ('03', 'Lannister', 'Jamie',   'C', '2012-09-05', '101', 2);
INSERT INTO Student VALUES ('04', 'Lannister', 'Cercei',  'J', '2012-09-05', '101', 2);
INSERT INTO Student VALUES ('05', 'Greyjoy',   'Theon',   'I', '2015-12-09', '402', 14);
INSERT INTO Student VALUES ('06', 'Tyrell',    'Margaery','Y', '2017-07-12', '305', 10);
INSERT INTO Student VALUES ('07', 'Baratheon', 'Tommen',  'R', '2019-06-13', '201', 5);

-- Query: Retrieve all students enrolled in course code '305'
SELECT *
  FROM Student
 WHERE COURSE_CODE = '305';

-- Delete student record: Jamie Lannister who enrolled in 2012-09-05 in course '101' and project 2
DELETE
  FROM Student
 WHERE FIRST_NAME     = 'Jamie'
   AND SURNAME        = 'Lannister'
   AND START_DATE     = '2012-09-05'
   AND COURSE_CODE    = '101'
   AND PROJECT_NUMBER = 2;

-- Update: Set PROJECT_NUMBER = 14 for students who started before 2016 and have course code >= '201'
UPDATE Student
   SET PROJECT_NUMBER = 14
 WHERE START_DATE < '2016-01-01'
   AND COURSE_CODE >= '201';

-- Drop the Student table (irreversible operation)
DROP TABLE Student;
