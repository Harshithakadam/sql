CREATE DATABASE SchoolManagement;
USE SchoolManagement;
-- Table 1: Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT,
    enrollment_date DATE,
    status ENUM('Active', 'Inactive', 'Graduated') DEFAULT 'Active'
);

INSERT INTO Students VALUES (1, 'Harshitha', 'Kumar', '2003-06-15', 'Female', 'harshitha@email.com', '9876543210', 'Mandya, Karnataka', '2021-06-01', 'Active');

-- Table 2: Teachers
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    subject VARCHAR(100),
    qualification VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2),
    department VARCHAR(100)
);

INSERT INTO Teachers VALUES (1, 'Ravi', 'Sharma', 'ravi@school.com', '9123456789', 'Mathematics', 'M.Sc', '2015-07-01', 45000.00, 'Science');

-- Table 3: Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE,
    credits INT,
    teacher_id INT,
    department VARCHAR(100),
    duration_hours INT,
    max_students INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

INSERT INTO Courses VALUES (1, 'Java Programming', 'CS101', 4, 1, 'Computer Science', 60, 60);

-- Table 4: Enrollments
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(5),
    attendance_percent DECIMAL(5,2),
    semester VARCHAR(20),
    academic_year VARCHAR(10),
    status ENUM('Enrolled', 'Completed', 'Dropped') DEFAULT 'Enrolled',
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments VALUES (1, 1, 1, '2024-06-01', 'A', 92.50, 'Semester 3', '2024-25', 'Enrolled');

-- Table 5: Exams
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(100),
    course_id INT,
    exam_date DATE,
    total_marks INT,
    passing_marks INT,
    exam_type ENUM('Internal', 'External', 'Practical'),
    duration_minutes INT,
    venue VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Exams VALUES (1, 'Java Mid-Term', 1, '2024-09-15', 100, 35, 'Internal', 180, 'Hall A');