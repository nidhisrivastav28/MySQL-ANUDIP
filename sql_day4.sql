Day4- Lab
Lab 1: Database Schema:
Consider a simple database with one tables: BankAccount

/*creating database*/
->create database BankAccount;
Query OK, 1 row affected (0.03 sec)

/*OUTPUT*/
mysql> show Databases;
+-------------------------+
| Database                |
+-------------------------+
| bankaccount             |
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.00 sec)


BankAccount Table:
● Columns: account_id (Primary Key), account_holder_name,
account_balance

/*Creating tables*/
-> create table bankaccount(
    -> Account_id varchar(10) Primary Key,
    -> Account_holder_name varchar(20) not null,
    -> Account_balance int(20) not null
    -> );
Query OK, 0 rows affected, 1 warning (0.09 sec)

/*OUTPUT*/
 desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| Account_id          | varchar(10) | NO   | PRI | NULL    |       |
| Account_holder_name | varchar(20) | NO   |     | NULL    |       |
| Account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

Task 1: Insert Data
Write an SQL INSERT statement to insert data into the BankAccount table.

/*Inserting values in database*/
-> insert into bankaccount values
    -> ('1111111111', 'Alice Johnson', 3000.00),
    -> ('2222222222', 'Bob Williams', 5500.00),
    -> ('3333333333', 'Eva Davis', 7000.00);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

/*OUTPUT*/
-> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| Account_id          | varchar(10) | NO   | PRI | NULL    |       |
| Account_holder_name | varchar(20) | NO   |     | NULL    |       |
| Account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

/*Retrieving account_holder_name and account_balance of all account holders from the BankAccount table.*/
-> select account_holder_name , account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Alice Johnson       |            3000 |
| Bob Williams        |            5500 |
| Eva Davis           |            7000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

/*first Inserting a new row in the table*/
-> insert into bankaccount values
    -> ('4444444444', 'Michael Brown', 242223);
Query OK, 1 row affected (0.01 sec)

/*OUTPUT after inserting*/
-> select * from bankaccount;
+------------+---------------------+-----------------+
| Account_id | Account_holder_name | Account_balance |
+------------+---------------------+-----------------+
| 1111111111 | Alice Johnson       |            3000 |
| 2222222222 | Bob Williams        |            5500 |
| 3333333333 | Eva Davis           |            7000 |
| 4444444444 | Michael Brown       |          242223 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

/*Retrieving account_holder_name and account_balance where account_balance > 30,000*/
-> select account_holder_name , account_balance from bankaccount where account_balance > 30000;

/*OUTPUT*/
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Michael Brown       |          242223 |
+---------------------+-----------------+
1 row in set (0.00 sec)

Task 4: Updating Data
Write an SQL UPDATE statement to change the account_balance of the account
holder whose ID is 101.

/*inserting values having id 101*/
> insert into bankaccount values
    -> ('101', 'John Brown', 424244);
Query OK, 1 row affected (0.01 sec)

/*before updating*/
> select * from bankaccount;
+------------+---------------------+-----------------+
| Account_id | Account_holder_name | Account_balance |
+------------+---------------------+-----------------+
| 101        | John Brown          |          424244 |
| 1111111111 | Alice Johnson       |            3000 |
| 2222222222 | Bob Williams        |            5500 |
| 3333333333 | Eva Davis           |            7000 |
| 4444444444 | Michael Brown       |          242223 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

/*updating account_balance whose ID is 101*/
> update bankaccount
    -> set Account_balance= 200103
    -> where Account_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*after updating*/
-> select * from bankaccount;
+------------+---------------------+-----------------+
| Account_id | Account_holder_name | Account_balance |
+------------+---------------------+-----------------+
| 101        | John Brown          |          200103 |
| 1111111111 | Alice Johnson       |            3000 |
| 2222222222 | Bob Williams        |            5500 |
| 3333333333 | Eva Davis           |            7000 |
| 4444444444 | Michael Brown       |          242223 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
