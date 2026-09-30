create database education_db;
use education_db;

create table course(course_id int auto_increment primary key,course_name varchar(20) not null unique,
					duration int,fee int);

create table Student(student_id int auto_increment primary key,student_name varchar(20) not null,email varchar(30) unique,
                      age int,gender enum('Female','Male'),mark int,courseid int, foreign key(courseid) references course(course_id));
                      
INSERT INTO Course (course_name, duration, fee) VALUES
('Python Full Stack', 6, 45000),
('Java Full Stack', 6, 50000),
('Data Science', 8, 60000),
('Cyber Security', 6, 55000),
('Web Development', 4, 35000);

INSERT INTO Student
(student_name, email, age, gender, mark, courseid)
VALUES
('Anu', 'anu@gmail.com', 21, 'Female', 92, 1),
('Arun', 'arun@gmail.com', 23, 'Male', 85, 1),
('Meera', 'meera@gmail.com', 20, 'Female', 78, 2),
('Rahul', 'rahul@gmail.com', 24, 'Male', 95, 2),
('Sneha', 'sneha@gmail.com', 19, 'Female', 88, 3),
('Vishnu', 'vishnu@gmail.com', 26, 'Male', 72, 3),
('Athira', 'athira@gmail.com', 22, 'Female', 91, 1),
('Akhil', 'akhil@gmail.com', 25, 'Male', 67, 4),
('Devika', 'devika@gmail.com', 21, 'Female', 83, 2),
('Nikhil', 'nikhil@gmail.com', 27, 'Male', 76, 4),
('Gopika', 'gopika@gmail.com', 20, 'Female', 89, 3),
('Sanjay', 'sanjay@gmail.com', 24, 'Male', 81, 1);
                      
-- 1. Write a query to display all students who scored more than *80 marks, ordered by mark in descending order.

         select * from Student where mark>80;
         
-- 2. Write a query to find the highest mark, lowest mark, and average mark of all students.

        select max(mark),min(mark),avg(mark) from Student;
        
-- 3. Write a query to display the top 5 students based on their marks.

        select * from Student order by mark desc limit 5;
        
-- 4. Write a query to display the names and marks of students whose age is between 18 and 25, ordered by age.

       select student_name,mark from Student where age between 18 and 25 order by age;
       
-- 5. Write a query to find the number of students in each course.

       select count(*),course_name from Student inner join course on Student.courseid=course.course_id group by course_id;
       
-- 6. Write a query to display the courses that have more than 2 students.
             
             
     
	
