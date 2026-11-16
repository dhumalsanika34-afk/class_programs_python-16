create database collegesDB;
use collegesDB;

create table students(
student_id int primary key, 
first_name varchar(50), 
last_name varchar(50), 
date_of_birth date,
email varchar(100),
enrollment_date date
);

insert into students(student_id, first_name, last_name, date_of_birth, email, enrollment_date)values
(2, 'sanika','dhumal','2005-06-15', 'sdfiaj@gmail.com','2020-09-01'),
(1, 'pooja','dhumal','2005-08-15', 'sdfdaj@gmail.com','2020-08-01'),
(3, 'sanika','mule','2004-06-15', 'sdfiaj@gmail.com','2020-09-06'),
(5, 'nisha','sahrma','2005-07-13', 'sdfiaj@gmail.com','2020-06-07'),
(4, 'amit','varma','2005-08-20', 'sdfiaj@gmail.com','2020-06-02');

select * from students;
select first_name from students;

select last_name from students;

select enrollment_date from students;

select * from students where date_of_birth >'2005-06-15';

update students set email='sdfiaj@gmail.com' where student_id=2;

delete from students where student_id=1;

alter table students add phone_number varchar(15);

update students
set phone_number = '555-0192'
where student_id = 1;

create table courses(
course_id int primary key,
course_name varchar(100),
instructor_name varchar(100));

insert into courses (course_id, course_name, instructor_name) values
(102, 'Data Structures and Algorithms', 'abc'),
(103, 'Web Development Fundamentals', 'lmn'),
(104, 'Operating Systems', 'xyz');
 
select * from courses;

create table enrollments(
student_id int,
course_id int,
enrollment_date date,
primary key(student_id, course_id), 
foreign key (student_id) references students(student_id),
foreign key(course_id) references courses (course_id)
 );
insert into enrollments (student_id, course_id, enrollment_date) values
(2, 102, '2020-09-01'),
(3, 103, '2020-09-06');
 
 select * from enrollments;
  
select students.first_name, students.last_name, courses.course_name 
from students
inner join enrollments on students.student_id=enrollments.student_id 
inner join courses on enrollments.course_id=courses.course_id;

select students.first_name, students.last_name, courses.course_name 
from students
left join enrollments on students.student_id=enrollments.student_id 
left join courses on enrollments.course_id=courses.course_id;

select students.first_name, students.last_name, courses.course_name 
from students
right join enrollments on students.student_id=enrollments.student_id 
right join courses on enrollments.course_id=courses.course_id;

select students.first_name, students.last_name, courses.course_name 
from students
full join enrollments on students.student_id=enrollments.student_id 
full join courses on enrollments.course_id=courses.course_id;

select students.first_name, students.last_name, courses.course_name 
from students
cross join courses;

create table faculty(
faculty_id int primary key,
first_name varchar(50),
last_name varchar(50),
manager_id int );

insert into faculty values('201','pravin sir','Bagal','501');
insert into faculty values('202',' sir','adsul','502');
insert into faculty values('203','mayank sir','kothawade','503');
insert into faculty values('204','anil sir','shriwastav','504');

select f1.first_name as facult_name, f2.first_name as manager_name
from faculty f1
left join faculty f2 on f1.manager_id=f2.faculty_id;