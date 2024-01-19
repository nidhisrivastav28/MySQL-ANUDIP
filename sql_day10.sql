Day10- Lab

/*USING STUDENTMANAGEMENTSYSTEM DATABASE*/

1. Assume a university where students can enroll in various courses.Now, write down a FULL outer JOIN query to retrieve the details.

/*Fetching records from Student table*/
-> select * from student;
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 |
| S002      | Jane      | Smith     | 2001-04-14  | Male   | jane_Smith@example.com        | 9123647283 |
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 |
| S005      | Vivek     | Sharma    | 2000-08-31  | Male   | viveksharma14@gmail.com       | 8777834245 |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
5 rows in set (0.00 sec)

/*Fetching records from Enrollment table*/
-> select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E01          | 2024-01-02     | S001      | C101     | I001         |
| E02          | 2024-01-02     | S002      | C102     | I002         |
| E03          | 2024-01-02     | S003      | C103     | I003         |
| E04          | 2024-01-02     | S004      | C104     | I004         |
+--------------+----------------+-----------+----------+--------------+
4 rows in set (0.00 sec)


/*FULL outer JOIN query to retrieve the details.*/
-> select s.StudentID,s.FirstName,s.LastName,e.StudentID,e.CourseId from student s LEFT JOIN enrollment e
    -> ON s.StudentID = e.StudentID
    -> UNION ALL
    -> select s.StudentID,s.FirstName,s.LastName,e.StudentID,e.CourseId from student s RIGHT JOIN enrollment e
    -> ON s.StudentID = e.StudentID
    -> WHERE e.StudentID is NULL;
+-----------+-----------+-----------+-----------+----------+
| StudentID | FirstName | LastName  | StudentID | CourseId |
+-----------+-----------+-----------+-----------+----------+
| S001      | Shanaya   | Srivastav | S001      | C101     |
| S002      | Jane      | Smith     | S002      | C102     |
| S003      | Shivi     | Mukherjee | S003      | C103     |
| S004      | Ravi      | Shaw      | S004      | C104     |
| S005      | Vivek     | Sharma    | NULL      | NULL     |
+-----------+-----------+-----------+-----------+----------+
5 rows in set (0.01 sec)



2. Assume a university where students can enroll in various courses.Now, write down a Natural JOIN query to retrieve the details

/*Fectching records of students & the course in which they are enrolled using a common column i.e. StudentID*/
-> select * from student NATURAL JOIN enrollment;
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+--------------+----------------+----------+--------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      | EnrollmentID | EnrollmentDate | CourseID | InstructorID |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+--------------+----------------+----------+--------------+
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 | E01          | 2024-01-02     | C101     | I001         |
| S002      | Jane      | Smith     | 2001-04-14  | Male   | jane_Smith@example.com        | 9123647283 | E02          | 2024-01-02     | C102     | I002         |
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 | E03          | 2024-01-02     | C103     | I003         |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 | E04          | 2024-01-02     | C104     | I004         |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+--------------+----------------+----------+--------------+
4 rows in set (0.00 sec)
