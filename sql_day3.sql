Day-3 Lab
Lab 1. For this assignment, please use the same tables created in your previous lab session.

Task 1: 
Update the Student table with the following information:
Change the email to 'jane_Smith@example.com' Where FirstName is 'Jane' and LastName is 'Smith';

/*the student table before updating*/
-> select * from student;
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

/*firstly Updating firstname & lastname*/
-> update student
    -> set FirstName='Jane' , LastName = 'Smith'
    -> where StudentID = 'S002';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 |
| S002      | Jane      | Smith     | 2001-04-14  | Male   | yaminroy23@gmail.com          | 9123647283 |
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 |
| S005      | Vivek     | Sharma    | 2000-08-31  | Male   | viveksharma14@gmail.com       | 8777834245 |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
5 rows in set (0.00 sec)

/*now updating the email with reference to firstname & lastname(the previously updated one)*/
->update student
    -> set Email='jane_Smith@example.com'
    -> where FirstName = 'Jane'and LastName='Smith';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

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


Update the Instructor with the following information:
Change the email to 'rogerwhite@example.com' Where FirstName of the instructor is 'Roger' and LastName is 'White';

/*the instructor table before updating*/
-> select * from instructor;
+--------------+-------------+----------+---------------------------+
| InstructorID | FirstName   | LastName | Email                     |
+--------------+-------------+----------+---------------------------+
| I001         | Birabharata | Ganguly  | bg24@gmail.com            |
| I002         | Amit Kumar  | Das      | akd14@gmail.com           |
| I003         | Amrita      | Kundu    | amritakundu22@gmail.com   |
| I004         | Suchandra   | Roy      | suchandraroy002@gmail.com |
| I005         | Soumita     | Dutta    | sdutta44@gmail.com        |
+--------------+-------------+----------+---------------------------+
5 rows in set (0.01 sec)

/*first Updating first & last name */
-> update instructor
    -> set FirstName='Roger' , LastName = 'White'
    -> where InstructorID = 'I002';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+--------------+-------------+----------+---------------------------+
| InstructorID | FirstName   | LastName | Email                     |
+--------------+-------------+----------+---------------------------+
| I001         | Birabharata | Ganguly  | bg24@gmail.com            |
| I002         | Roger       | White    | akd14@gmail.com           |
| I003         | Amrita      | Kundu    | amritakundu22@gmail.com   |
| I004         | Suchandra   | Roy      | suchandraroy002@gmail.com |
| I005         | Soumita     | Dutta    | sdutta44@gmail.com        |
+--------------+-------------+----------+---------------------------+
5 rows in set (0.01 sec)

/*Updating the email*/
-> update instructor
    -> set Email='rogerwhite@example.com'
    -> where FirstName= 'Roger' and LastName ='White';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--> select * from instructor;
+--------------+-------------+----------+---------------------------+
| InstructorID | FirstName   | LastName | Email                     |
+--------------+-------------+----------+---------------------------+
| I001         | Birabharata | Ganguly  | bg24@gmail.com            |
| I002         | Roger       | White    | rogerwhite@example.com    |
| I003         | Amrita      | Kundu    | amritakundu22@gmail.com   |
| I004         | Suchandra   | Roy      | suchandraroy002@gmail.com |
| I005         | Soumita     | Dutta    | sdutta44@gmail.com        |
+--------------+-------------+----------+---------------------------+
5 rows in set (0.00 sec)


Task 2:
Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Roy.


/*Firstly Inserting one row having last name Roy*/
-> insert into student values
    ->  ('S006','Shivi','Roy','2001-11-28','Female','shiviroy@gmail.com',6290721201);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 |
| S002      | Jane      | Smith     | 2001-04-14  | Male   | jane_Smith@example.com        | 9123647283 |
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 |
| S005      | Vivek     | Sharma    | 2000-08-31  | Male   | viveksharma14@gmail.com       | 8777834245 |
| S006      | Shivi     | Roy       | 2001-11-28  | Female | shiviroy@gmail.com            | 6290721201 |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
6 rows in set (0.00 sec)


/*After deleting the row of lastname Roy*/
-> delete from student
    -> where LastName='Roy';
Query OK, 1 row affected (0.01 sec)

/*OUTPUT*/
-> select * from Student;
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


Task 3: List the student whose first name starts with J.

/*OUTPUT*/
->> select * from student where firstname like '%J%';
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                  | Phone      |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| S002      | Jane      | Smith    | 2001-04-14  | Male   | jane_Smith@example.com | 9123647283 |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
1 row in set (0.01 sec)


Lab 2.Database Schema:
Consider a simple database with one tables: Employee
Employee Table:
● Columns: emp_id (Primary Key), first_name, last_name, age, email


/*Creating table colums*/
->create table Employee(
    -> Emp_id varchar(10) Primary key,
    -> FirstName varchar(20) not null,
    -> LastName varchar(20) not null,
    -> Age numeric(5) not null,
    -> Email varchar(50) not null
    -> );
Query OK, 0 rows affected (0.16 sec)

/*OUTPUT*/
->desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Emp_id    | varchar(10)  | NO   | PRI | NULL    |       |
| FirstName | varchar(20)  | NO   |     | NULL    |       |
| LastName  | varchar(20)  | NO   |     | NULL    |       |
| Age       | decimal(5,0) | NO   |     | NULL    |       |
| Email     | varchar(50)  | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.08 sec)


Task 1: Insert Data
Write an SQL INSERT statement to insert data into the Employee table.


/*Inserting data in the tables*/
-> insert into employee values
    -> ('E1','Varun','Dhawan','27','varundhawan12@gmail.com'),
    -> ('E2','Nisha','Kumari','25','nishakumari03@gmail.com'),
    -> ('E3', 'Mike', 'Johnson', 35, 'mike@johnsongmail.com'),
    ->    ('E4', 'William', 'Martinez', 27, 'william@gmail.com');
Query OK, 4 rows affected (0.09 sec)
Records: 4  Duplicates: 0  Warnings: 0

/*OUTPUT*/
-> select* from employee;
+--------+-----------+----------+-----+-------------------------+
| Emp_id | FirstName | LastName | Age | Email                   |
+--------+-----------+----------+-----+-------------------------+
| E1     | Varun     | Dhawan   |  27 | varundhawan12@gmail.com |
| E2     | Nisha     | Kumari   |  25 | nishakumari03@gmail.com |
| E3     | Mike      | Johnson  |  35 | mike@johnsongmail.com   |
| E4     | William   | Martinez |  27 | william@gmail.com       |
+--------+-----------+----------+-----+-------------------------+
4 rows in set (0.00 sec)


Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.


/*Retrieving first & last name of all employees from the employees table*/
-> select FirstName, LastName from Employee;
+-----------+----------+
| FirstName | LastName |
+-----------+----------+
| Varun     | Dhawan   |
| Nisha     | Kumari   |
| Mike      | Johnson  |
| William   | Martinez |
+-----------+----------+
4 rows in set (0.00 sec)


Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.


/*Filtering employees of age more than 30*/
-> select FirstName, LastName from Employee where age > 30;
+-----------+----------+
| FirstName | LastName |
+-----------+----------+
| Mike      | Johnson  |
+-----------+----------+
1 row in set (0.00 sec)


Task 4: Updating Data
Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25.


/*Before Updating the table looks like this*/
-> select* from employee;
+--------+-----------+----------+-----+-------------------------+
| Emp_id | FirstName | LastName | Age | Email                   |
+--------+-----------+----------+-----+-------------------------+
| E1     | Varun     | Dhawan   |  27 | varundhawan12@gmail.com |
| E2     | Nisha     | Kumari   |  25 | nishakumari03@gmail.com |
| E3     | Mike      | Johnson  |  35 | mike@johnsongmail.com   |
| E4     | William   | Martinez |  27 | william@gmail.com       |
+--------+-----------+----------+-----+-------------------------+
4 rows in set (0.00 sec)

/*Appling Update query*/
-> update employee
    -> set Age = Age+1
    -> where Age > 25;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

/*After updating the age older han 25 is changed*/
-> select * from employee;
+--------+-----------+----------+-----+-------------------------+
| Emp_id | FirstName | LastName | Age | Email                   |
+--------+-----------+----------+-----+-------------------------+
| E1     | Varun     | Dhawan   |  28 | varundhawan12@gmail.com |
| E2     | Nisha     | Kumari   |  25 | nishakumari03@gmail.com |
| E3     | Mike      | Johnson  |  36 | mike@johnsongmail.com   |
| E4     | William   | Martinez |  28 | william@gmail.com       |
+--------+-----------+----------+-----+-------------------------+
4 rows in set (0.00 sec)



