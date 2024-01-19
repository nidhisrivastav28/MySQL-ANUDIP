Day8- Lab

Lab 1: Use the Student management system Database and table from our previous lab and write a sql query to achieve the below scenario

Assume you are managing a university database that tracks student enrollments in various courses. You have two tables, "Student" and "Enrollment". The goal is to retrieve information about each student's ID, first name, last name, and their enrollment details, including the enrollment ID and the associated course ID.

/*Before Retrieving Data*/
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

/*After Retrieving Data*/
/*QUERY*/
-> select s.StudentID, s.FirstName, s.LastName, e.EnrollmentDate, e.CourseID, e.InstructorID
    -> from student s JOIN enrollment e
    -> ON s.StudentID = e.StudentID;

/*OUTPUT*/
+-----------+-----------+-----------+----------------+----------+--------------+
| StudentID | FirstName | LastName  | EnrollmentDate | CourseID | InstructorID |
+-----------+-----------+-----------+----------------+----------+--------------+
| S001      | Shanaya   | Srivastav | 2024-01-02     | C101     | I001         |
| S002      | Jane      | Smith     | 2024-01-02     | C102     | I002         |
| S003      | Shivi     | Mukherjee | 2024-01-02     | C103     | I003         |
| S004      | Ravi      | Shaw      | 2024-01-02     | C104     | I004         |
| S005      | Vivek     | Sharma    | 2024-01-02     | C105     | I005         |
+-----------+-----------+-----------+----------------+----------+--------------+
5 rows in set (0.00 sec)
