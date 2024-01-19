Day7- Lab

Task1: Assume you are managing a database of student records, and you need to retrieve information about students born after June 16, 2000. What will be the sql query for this?

/*Before retrieving data*/
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

/*After retrieving data*/
/*QUERY*/
-> select * from student where DateOfBirth > '2000-06-16';

/*OUTPUT*/
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                   | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| S002      | Jane      | Smith    | 2001-04-14  | Male   | jane_Smith@example.com  | 9123647283 |
| S004      | Ravi      | Shaw     | 2000-10-04  | Male   | shawravi04@gmail.com    | 6789144443 |
| S005      | Vivek     | Sharma   | 2000-08-31  | Male   | viveksharma14@gmail.com | 8777834245 |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
3 rows in set (0.01 sec)


Task2: Assume you have a database containing a "Student" table with information about students, including their first names. You want to retrieve records of students whose first names start with either 'A' or 'J'. To achieve this,what will be your sql query?

/*Before retrieving records*/
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

/*After retrieving records*/
/*QUERY*/
-> select * from student where FirstName LIKE 'A%' OR FirstName LIKE 'J%';

/*OUTPUT*/
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                  | Phone      |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| S002      | Jane      | Smith    | 2001-04-14  | Male   | jane_Smith@example.com | 9123647283 |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
1 row in set (0.01 sec)


Task 3 .Let's consider a scenario where you have a database with a "Student" table that contains information about students, including their first names and email addresses. You want to retrieve records of students whose first name is not 'Alice' and whose email addresses contain the domain '@example.com'. To achieve this, what will be your sql query?

/*Before retrieving records*/
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

/*After retrieving records*/
/*QUERY*/
> select FirstName, Email from student where FirstName != 'Vivek' AND Email LIKE '%@gmail.com';

/*OUTPUT*/
+-----------+-------------------------------+
| FirstName | Email                         |
+-----------+-------------------------------+
| Shanaya   | shanayasrivastav283@gmail.com |
| Shivi     | shivimukherjee24@gmail.com    |
| Ravi      | shawravi04@gmail.com          |
+-----------+-------------------------------+
3 rows in set (0.00 sec)





