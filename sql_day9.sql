Day9- Lab

Lab: Using the Student Management System Database and table & Performing the following commands on the table Student and Enrollment.

Let's consider a scenario where you have a database tracking student enrollments and some students may not be enrolled in any courses. John Doe (StudentID: 1) is enrolled in courses with EnrollmentIDs 101 and 102.Jane Smith (StudentID: 2) is enrolled in courses with EnrollmentIDs 103 and 104.Bob Johnson (StudentID: 3) is not enrolled in any courses. Now,run RIGHT OUTER JOIN query to retrieve data.

/*Taking All records from Student table*/
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

/*Taking All records from Enrollment table*/
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

/*Fetching all students to check those who doesn't enrolled in any course*/
-> SELECT s.StudentID,s.FirstName,s.LastName,e.EnrollmentID,e.CourseID
    -> FROM student s RIGHT JOIN Enrollment e
    -> ON s.StudentID = e.StudentID;

/*OUTPUT*/
+-----------+-----------+-----------+--------------+----------+
| StudentID | FirstName | LastName  | EnrollmentID | CourseID |
+-----------+-----------+-----------+--------------+----------+
| S001      | Shanaya   | Srivastav | E01          | C101     |
| S002      | Jane      | Smith     | E02          | C102     |
|S005       | Vivek     | Sharma    | NULL         | NULL     |
| S003      | Shivi     | Mukherjee | E03          | C103     |
| S004      | Ravi      | Shaw      | E04          | C104     |
+-----------+-----------+-----------+--------------+----------+
4 rows in set (0.00 sec)


2. Assume a university where students can enroll in various courses. Here are some
fictional details:
Student Information:
Student with ID 1: John, email: john@email.com
Student with ID 2: Jane, email: jane@email.com
Student with ID 3: Bob, email: bob@email.com
Enrollment Information:
Enrollment with ID 101: John (StudentID: 1) enrolls in Math (CourseID: MATH101).
Enrollment with ID 102: John (StudentID: 1) enrolls in History (CourseID: HIST201).
Enrollment with ID 103: Jane (StudentID: 2) enrolls in Physics (CourseID: PHYS301).
Enrollment with ID 104: Bob (StudentID: 3) enrolls in Chemistry (CourseID: CHEM401).
Now, write a LEFT JOIN query to retrieve the data.


/*Taking All records from Student table*/
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

/*Taking All records from Enrollment table*/
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


/*Fetching all students to check those who doesn't enrolled in any course*/
-> select s.StudentID,s.FirstName,s.LastName,e.EnrollmentID,e.CourseId
    -> FROM Student s LEFT JOIN Enrollment e
    -> ON s.StudentID = e.StudentID;

/*OUTPUT*/
+-----------+-----------+-----------+--------------+----------+
| StudentID | FirstName | LastName  | EnrollmentID | CourseId |
+-----------+-----------+-----------+--------------+----------+
| S001      | Shanaya   | Srivastav | E01          | C101     |
| S002      | Jane      | Smith     | E02          | C102     |
| S003      | Shivi     | Mukherjee | E03          | C103     |
| S004      | Ravi      | Shaw      | E04          | C104     |
| S005      | Vivek     | Sharma    | NULL         | NULL     |
+-----------+-----------+-----------+--------------+----------+
5 rows in set (0.00 sec)


