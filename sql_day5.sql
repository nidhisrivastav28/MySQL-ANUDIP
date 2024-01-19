Day5- Lab

Lab 1-Using the StudentManagementSystem database scheme created in Previous Lab.

Task: Let's consider a scenario where you want to retrieve information about students from a database table named student and display the results in ascending order based on their last names.

Hint: Use orderBy clause in a ascending Order

/*Before retrieving student data*/
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
5 rows in set (0.04 sec)

/*OUTPUT*/
/*After Retrieving student data*/
-> select * from student
-> ORDER BY LastName ASC;
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth | Gender | Email                         | Phone      |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
| S003      | Shivi     | Mukherjee | 1999-04-24  | Female | shivimukherjee24@gmail.com    | 6789147283 |
| S005      | Vivek     | Sharma    | 2000-08-31  | Male   | viveksharma14@gmail.com       | 8777834245 |
| S004      | Ravi      | Shaw      | 2000-10-04  | Male   | shawravi04@gmail.com          | 6789144443 |
| S002      | Jane      | Smith     | 2001-04-14  | Male   | jane_Smith@example.com        | 9123647283 |
| S001      | Shanaya   | Srivastav | 1999-11-12  | Female | shanayasrivastav283@gmail.com | 9330457318 |
+-----------+-----------+-----------+-------------+--------+-------------------------------+------------+
5 rows in set (0.00 sec)



Lab 2-Using the StudentManagementSystem database scheme created in Previous Lab.

Task: Let's consider a scenario where you want to count the number of students based on their gender from a database table named Student.

Hint: use GroupBy clause and Count() function

/*OUTPUT*/
/*Counting No of students based on gender*/
-> select gender, COUNT(*) AS count_of_students
-> FROM student
-> GROUP BY gender;
+--------+-------------------+
| gender | count_of_students |
+--------+-------------------+
| Female |                 2 |
| Male   |                 3 |
+--------+-------------------+
2 rows in set (0.01 sec)
