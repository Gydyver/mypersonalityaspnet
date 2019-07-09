create database mypersonality2

use mypersonality2
go
create table question_table
(
id_question int identity(1,1) primary key,
category varchar(30) not null,
question varchar (200) not null,
question_status int
)
go
create table user_table
(
id_user int identity(1,1) primary key,
user_email varchar(50) not null,
user_name varchar(50)
)
go
create table answer_table
(
id_answer int identity(1,1) primary key,
id_user int not null,
id_question int not null,
answer int
)
create table employee_table
(
emp_ID varchar(50) primary key,
emp_name varchar(50) not null,
emp_status varchar(50) not null
)
create table account
(
username varchar(50) primary key,
password varchar(50) not null,
emp_ID varchar(50) not null
)

select * from answer_table
	truncate table answer_table
select * from user_table
insert into user_table(user_email, user_name) values ('lia@gmail.com', 'lia');
insert into account(username, password, emp_ID) values ('nurulaw', '123', 'E1');
insert into employee_table(emp_ID, emp_name, emp_status) values ('E1', 'Nurul Awalia', 'Active');
