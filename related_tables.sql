create database related_tables;
use related_tables;

create table customers(customer_id int primary key,name varchar(50) not null,phone bigint unique,email varchar(50) check(email like '%@gmail.com'),city varchar(50) check(city in ('karnataka')),customer_status varchar(50) default 'active',created_date date);
insert into customers values
(1, 'Aarav', 9876543210, 'aarav@gmail.com', 'karnataka', 'active', '2024-01-01'),
(2, 'Diya', 9123456780, 'diya@gmail.com', 'karnataka', 'active', '2024-01-05'),
(3, 'Rohan', 9988776655, 'rohan@gmail.com', 'karnataka', 'inactive', '2024-01-10'),
(4, 'Sneha', 9090909090, 'sneha@gmail.com', 'karnataka', 'active', '2024-01-12'),
(5, 'Kiran', 9871234567, 'kiran@gmail.com', 'karnataka', 'active', '2024-01-15'),
(6, 'Ananya', 9012345678, 'ananya@gmail.com', 'karnataka', 'inactive', '2024-01-18'),
(7, 'Rahul', 8899776655, 'rahul@gmail.com', 'karnataka', 'active', '2024-01-20'),
(8, 'Pooja', 8765432190, 'pooja@gmail.com', 'karnataka', 'active', '2024-01-22'),
(9, 'Vikram', 9988123456, 'vikram@gmail.com', 'karnataka', 'inactive', '2024-01-25'),
(10, 'Meena', 9345678901, 'meena@gmail.com', 'karnataka', 'active', '2024-01-28'),
(11, 'Arjun', 9234567890, 'arjun@gmail.com', 'karnataka', 'active', '2024-02-01'),
(12, 'Nisha', 9876501234, 'nisha@gmail.com', 'karnataka', 'inactive', '2024-02-03'),
(13, 'Manoj', 9012987654, 'manoj@gmail.com', 'karnataka', 'active', '2024-02-05'),
(14, 'Kavya', 9988771122, 'kavya@gmail.com', 'karnataka', 'active', '2024-02-08'),
(15, 'Deepak', 9123987654, 'deepak@gmail.com', 'karnataka', 'inactive', '2024-02-10');

create table order_place(order_id int primary key,customer_id int unique ,product_name varchar(100) not null,price decimal(10,2) check(price>=1000),order_date date,quality decimal(3,2) check(quality>4.5),foreign key(customer_id) references customers(customer_id));
insert into order_place values
(101, 1, 'Laptop', 55000.00, '2024-03-01', 4.8),
(102, 2, 'Smartphone', 25000.00, '2024-03-02', 4.7),
(103, 3, 'Tablet', 15000.00, '2024-03-03', 4.9),
(104, 4, 'Headphones', 3000.00, '2024-03-04', 4.6),
(105, 5, 'Smartwatch', 5000.00, '2024-03-05', 4.8);

create table students_details(student_id int primary key,name varchar(50) not null,age int check(age >= 16),gender varchar(50) check(gender in ('male','female')),phone varchar(15) unique,department varchar(20),join_date date);
insert into students_details values
(1,'Aarav',18,'male','9876500001','CSE','2024-01-01'),
(2,'Diya',19,'female','9876500002','ECE','2024-01-02'),
(3,'Rohan',20,'male','9876500003','MECH','2024-01-03'),
(4,'Sneha',18,'female','9876500004','CSE','2024-01-04'),
(5,'Kiran',21,'male','9876500005','EEE','2024-01-05'),
(6,'Ananya',19,'female','9876500006','CIVIL','2024-01-06'),
(7,'Rahul',22,'male','9876500007','CSE','2024-01-07'),
(8,'Pooja',18,'female','9876500008','ECE','2024-01-08'),
(9,'Vikram',23,'male','9876500009','MECH','2024-01-09'),
(10,'Meena',20,'female','9876500010','EEE','2024-01-10'),
(11,'Arjun',19,'male','9876500011','CSE','2024-01-11'),
(12,'Nisha',18,'female','9876500012','ECE','2024-01-12'),
(13,'Manoj',21,'male','9876500013','CIVIL','2024-01-13'),
(14,'Kavya',20,'female','9876500014','CSE','2024-01-14'),
(15,'Deepak',22,'male','9876500015','MECH','2024-01-15');

create table courses_details (student_id int not null,course_name varchar(200) not null,duration int check(duration >= 5),fee decimal(10,2) check(fee >=100000),start_date date,foreign key(student_id) references students_details(student_id));
insert into courses_details values
(1,'Data Science',6,150000.00,'2024-02-01'),
(2,'AI & ML',8,200000.00,'2024-02-05'),
(3,'Cyber Security',7,180000.00,'2024-02-10'),
(4,'Web Development',5,120000.00,'2024-02-15'),
(5,'Cloud Computing',6,160000.00,'2024-02-20');

create table doctors (doctor_id int primary key,name varchar(50) not null,specialization varchar(50) not null,experience int check(experience >= 3),phone varchar(15) unique,hospital_name varchar(50),status varchar(20) default 'available');
insert into doctors values
(1,'Dr.Amit','Cardiology',5,'9000000001','City Hospital','available'),
(2,'Dr.Sneha','Dermatology',4,'9000000002','Apollo','available'),
(3,'Dr.Ravi','Neurology',6,'9000000003','Fortis','busy'),
(4,'Dr.Pooja','Orthopedic',7,'9000000004','City Hospital','available'),
(5,'Dr.Kiran','Pediatrics',3,'9000000005','Apollo','available'),
(6,'Dr.Anil','ENT',5,'9000000006','Fortis','busy'),
(7,'Dr.Meena','Gynecology',8,'9000000007','City Hospital','available'),
(8,'Dr.Rahul','General',4,'9000000008','Apollo','available'),
(9,'Dr.Kavya','Dental',5,'9000000009','Fortis','available'),
(10,'Dr.Ajay','Cardiology',6,'9000000010','City Hospital','busy'),
(11,'Dr.Nisha','Dermatology',3,'9000000011','Apollo','available'),
(12,'Dr.Manoj','Neurology',7,'9000000012','Fortis','available'),
(13,'Dr.Vikram','Orthopedic',9,'9000000013','City Hospital','busy'),
(14,'Dr.Arjun','ENT',4,'9000000014','Apollo','available'),
(15,'Dr.Deepak','General',5,'9000000015','Fortis','available');

create table patients (patient_id int primary key,doctor_id int not null,name varchar(50) not null,age int check(age > 0),disease varchar(50),visit_date DATE,foreign key(doctor_id) references doctors(doctor_id));
insert into patients values
(1,1,'Ramesh',45,'Heart Problem','2024-03-01'),
(2,2,'Sita',30,'Skin Allergy','2024-03-02'),
(3,3,'Mohan',50,'Migraine','2024-03-03'),
(4,4,'Radha',28,'Fracture','2024-03-04'),
(5,5,'Kumar',10,'Fever','2024-03-05');

CREATE TABLE libraries (library_id int primary key,library_name varchar(50) not null,location varchar(50) check(location in ('Mandya')),phone varchar(15) unique,email varchar(100) unique check(email like '%@gmail.com'),opening_time TIME,status varchar(20) default 'open');
insert into libraries values
(1,'Central Library','Mandya','8000000001','lib1@gmail.com','09:00:00','open'),
(2,'City Library','Mandya','8000000002','lib2@gmail.com','09:30:00','open'),
(3,'Public Library','Mandya','8000000003','lib3@gmail.com','10:00:00','closed'),
(4,'Knowledge Hub','Mandya','8000000004','lib4@gmail.com','09:00:00','open'),
(5,'Readers Point','Mandya','8000000005','lib5@gmail.com','08:30:00','open'),
(6,'Study Center','Mandya','8000000006','lib6@gmail.com','09:00:00','closed'),
(7,'Book World','Mandya','8000000007','lib7@gmail.com','10:00:00','open'),
(8,'Edu Library','Mandya','8000000008','lib8@gmail.com','09:15:00','open'),
(9,'Smart Library','Mandya','8000000009','lib9@gmail.com','09:45:00','closed'),
(10,'Digital Library','Mandya','8000000010','lib10@gmail.com','10:30:00','open'),
(11,'Campus Library','Mandya','8000000011','lib11@gmail.com','09:00:00','open'),
(12,'Knowledge Zone','Mandya','8000000012','lib12@gmail.com','08:45:00','open'),
(13,'Readers Club','Mandya','8000000013','lib13@gmail.com','09:30:00','closed'),
(14,'Study Hub','Mandya','8000000014','lib14@gmail.com','10:00:00','open'),
(15,'Book Palace','Mandya','8000000015','lib15@gmail.com','09:00:00','open');

create table books(book_code int primary key,library_id int not null,book_name varchar(50) not null,author varchar(50),price decimal(10,2) check(price >= 500),recevied_date date,foreign key(library_id) references libraries(library_id));
insert into books values
(101,1,'SQL Basics','John',600.00,'2024-01-01'),
(102,2,'Python Guide','David',800.00,'2024-01-05'),
(103,3,'Data Science','Smith',1200.00,'2024-01-10'),
(104,4,'AI Book','Andrew',1500.00,'2024-01-15'),
(105,5,'Cloud Computing','James',900.00,'2024-01-20');