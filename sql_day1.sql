Day-1 Lab

Lab 1. Create a Database & Table Using MySQL Command-Line Client.

● Create a database with the name StudentManagementSystem.

--> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with named Student with attributes:
● StudentID (Primary Key)
● FirstName
● LastName
● DateOfBirth
● Gender
● Email
● Phone

--> create table Student(
    -> StudentID varchar(20) Primary Key,
    -> FirstName varchar(20) not null,
    -> LastName varchar(20) not null,
    -> DateOfBirth date not null,
    -> Gender varchar(20) not null,
    -> Email varchar(50) not null,
    -> Phone numeric(20) not null
    -> );
Query OK, 0 rows affected (0.07 sec)

--> desc Student;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| StudentID   | varchar(20)   | NO   | PRI | NULL    |       |
| FirstName   | varchar(20)   | NO   |     | NULL    |       |
| LastName    | varchar(20)   | NO   |     | NULL    |       |
| DateOfBirth | date          | NO   |     | NULL    |       |
| Gender      | varchar(20)   | NO   |     | NULL    |       |
| Email       | varchar(50)   | NO   |     | NULL    |       |
| Phone       | decimal(20,0) | NO   |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with name Course with attributes:
● CourseID (Primary Key)
● CourseTitle
● Credits

--> create table Course(
    -> CourseID varchar(20) Primary Key,
    -> CourseTitle  varchar(20) Not Null,
    -> Credits int(50) Not Null
    -> );

--> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(20) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(20) | NO   |     | NULL    |       |
| Credits     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with named Instructor with attributes:
● InstructorID (Primary Key)
● FirstName
● LastName
● Email

-->create table instructor(
    -> InstructorID varchar(20) Primary Key,
    -> FirstName varchar(20) not null,
    -> LastName varchar(20) not null,
    -> Email varchar(50) not null
    -> );
Query OK, 0 rows affected (0.04 sec)

--> desc instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(20) | NO   |     | NULL    |       |
| LastName     | varchar(20) | NO   |     | NULL    |       |
| Email        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with named Enrollment with attributes:
● EnrollmentID (Primary Key)
● EnrollmentDate
● StudentID(Foreign key)
● CourseID(Foreign Key)
● InstructorID(Foreign key)

--> create table Enrollment(
    -> EnrollmentID varchar(20) primary key,
    -> EnrollmentDate date not null,
    -> StudentID varchar(20),
    -> Foreign Key(StudentID) REFERENCES Student(StudentID),
    -> CourseID varchar(20),
    -> Foreign Key(CourseID) REFERENCES Course(CourseID),
    -> InstructorID varchar(20),
    -> Foreign Key(InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.23 sec)

--> desc table Enrollment;
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | Enrollment | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.03 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with named Score with attributes:
● ScoreID (Primary Key)
● CourseID (Foreign key)
● StudentID (Foreign Key)
● DateOfExam
● CreditObtained

--> create table Score(
    -> ScoreID varchar(20) Primary Key,
    -> CourseID varchar(20),
    -> Foreign Key(CourseID) REFERENCES Course(CourseID),
    -> StudentID varchar(20),
    -> Foreign Key(StudentID) REFERENCES Student(StudentID),
    -> DateOfExam date not null,
    -> CreditObtained int(20) not null
    -> );
Query OK, 0 rows affected, 1 warning (0.06 sec)

--> desc table Score;
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | Score | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    1 |   100.00 | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------

Create a table with named Feedback with attributes:
● FeedbackID (Primary Key)
● StudentID (Foreign key)
● Date
● InstructorName
● Feedback

--> create table Feedback(
    -> FeedbackID varchar(20) Primary Key,
    -> StudentID varchar(20),
    -> Foreign Key(StudentID) REFERENCES Student(StudentID),
    -> Date date not null,
    -> InstructorName varchar(50) not null,
    -> Feedback varchar(100) not null
    -> );
Query OK, 0 rows affected (0.07 sec)

--> desc table Feedback;
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | Feedback | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    1 |   100.00 | NULL  |
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------
