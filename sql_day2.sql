Day-2 Lab

Lab 1. Use the Database and table from Day 1 lab. 
Insert 5 records in each table and retrieve data from all tables and display

         
                             /*-- INSERTING VALUES IN STUDENT TABLES-- */

--> INSERT into Student values
    -> ('S001','Shanaya','Srivastav','1999-11-12','Female','shanayasrivastav283@gmail.com',9330457318);
    -> ('S002','Yamin','Roy','2001-04-14','Male','yaminroy23@gmail.com',9123647283),
    -> ('S003','Shivi','Mukherjee','1999-04-24','Female','shivimukherjee24@gmail.com',6789147283),
    -> ('S004','Ravi','Shaw','2000-10-04','Male','shawravi04@gmail.com',6789144443),
    -> ('S005','Vivek','Sharma','2000-08-31','Male','viveksharma14@gmail.com',8777834245);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

--> select * from student;
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 |
| S002      | Yamin     | Roy       | 2001-04-14  | Male   | yaminroy23@gmail.com          | 9123647283 |
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 |
| S005      | Vivek     | Sharma    | 2000-08-31  | Male   | viveksharma14@gmail.com       | 8777834245 |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
5 rows in set (0.00 sec)


                            /* -- INSERTING VALUES IN COURSE TABLES-- */

-->insert into course values
    -> ('C101','PYTHON',10),
    -> ('C102','JAVA',10),
    -> ('C103','DBMS',10),
    -> ('C104','PHP',10),
    -> ('C105','DATA ANALYSIS',10);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

--> select * from course;
+----------+---------------+---------+
| CourseID | CourseTitle   | Credits |
+----------+---------------+---------+
| C101     | PYTHON        |      10 |
| C102     | JAVA          |      10 |
| C103     | DBMS          |      10 |
| C104     | PHP           |      10 |
| C105     | DATA ANALYSIS |      10 |
+----------+---------------+---------+
5 rows in set (0.00 sec)

                             /*-- INSERTING VALUES IN INSTRUCTOR TABLES-- */

-->insert into instructor values
    -> ('I001','Birabharata','Ganguly','bg24@gmail.com'),
    -> ('I002','Amit Kumar','Das','akd14@gmail.com'),
    -> ('I003','Amrita','Kundu','amritakundu22@gmail.com'),
    -> ('I004','Suchandra','Roy','suchandraroy002@gmail.com'),
    -> ('I005','Soumita','Dutta','sdutta44@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

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

                            /* -- INSERTING VALUES IN ENROLLMENT TABLES-- */

--> insert into enrollment values
    -> ('E01','2024-01-02', 'S001', 'C101', 'I001'),
    -> ('E02','2024-01-02', 'S002', 'C102', 'I002'),
    -> ('E03','2024-01-02', 'S003', 'C103', 'I003'),
    -> ('E04','2024-01-02', 'S004', 'C104', 'I004'),
    -> ('E05','2024-01-02', 'S005', 'C105', 'I005');
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

mysql> select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E01          | 2024-01-02     | S001      | C101     | I001         |
| E02          | 2024-01-02     | S002      | C102     | I002         |
| E03          | 2024-01-02     | S003      | C103     | I003         |
| E04          | 2024-01-02     | S004      | C104     | I004         |
| E05          | 2024-01-02     | S005      | C105     | I005         |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

                            /* -- INSERTING VALUES IN SCORE TABLES-- */

--> insert into score values
    -> ('S11','C101','S001','2024-01-03',5),
    -> ('S12','C102','S002','2024-01-03',7),
    -> ('S13','C103','S003','2024-01-03',8),
    -> ('S14','C104','S004','2024-01-03',6),
    -> ('S15','C105','S005','2024-01-03',3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

mysql> select * from score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| S11     | C101     | S001      | 2024-01-03 |              5 |
| S12     | C102     | S002      | 2024-01-03 |              7 |
| S13     | C103     | S003      | 2024-01-03 |              8 |
| S14     | C104     | S004      | 2024-01-03 |              6 |
| S15     | C105     | S005      | 2024-01-03 |              3 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

                            /*-- INSERTING VALUES IN FEEDBACK TABLES-- */

--> insert into feedback values
    -> ('F01','S001','2024-01-03','Birabharata','Need to improve'),
    -> ('F02','S002','2024-01-03','Amit Kumar','Nice, practice more'),
    -> ('F03','S003','2024-01-03','Amrita','Excellent'),
    -> ('F04','S004','2024-01-03','Suchandra','Practice more'),
    -> ('F05','S005','2024-01-03','Soumita','Less work hard');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*Output*/

mysql> select * from feedback;
+------------+-----------+------------+----------------+---------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback            |
+------------+-----------+------------+----------------+---------------------+
| F01        | S001      | 2024-01-03 | Birabharata    | Need to improve     |
| F02        | S002      | 2024-01-03 | Amit Kumar     | Nice, practice more |
| F03        | S003      | 2024-01-03 | Amrita         | Excellent           |
| F04        | S004      | 2024-01-03 | Suchandra      | Practice more       |
| F05        | S005      | 2024-01-03 | Soumita        | Less work hard      |
+------------+-----------+------------+----------------+---------------------+
5 rows in set (0.00 sec)




