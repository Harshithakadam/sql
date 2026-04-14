CREATE DATABASE HospitalManagement;
USE HospitalManagement;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    blood_group VARCHAR(5),
    phone VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    emergency_contact VARCHAR(15),
    registration_date DATE,
    insurance_number VARCHAR(50)
);

INSERT INTO Patients VALUES (1, 'Asha', 'Reddy', '1990-04-20', 'Female', 'B+', '9988776655', 'asha@gmail.com', 'Mysuru, Karnataka', '9900112233', '2024-01-10', 'INS123456');

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    qualification VARCHAR(100),
    experience_years INT,
    consultation_fee DECIMAL(8,2),
    department VARCHAR(100)
);

INSERT INTO Doctors VALUES (1, 'Suresh', 'Patil', 'Cardiology', '9001122334', 'dr.suresh@hospital.com', 'MBBS, MD', 12, 500.00, 'Cardiology');

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason VARCHAR(255),
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    notes TEXT,
    follow_up_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments VALUES (1, 1, 1, '2024-10-05', '10:30:00', 'Chest pain', 'Completed', 'ECG done, normal', '2024-10-19');

CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(100) NOT NULL,
    generic_name VARCHAR(100),
    category VARCHAR(100),
    manufacturer VARCHAR(100),
    unit_price DECIMAL(8,2),
    stock_quantity INT,
    expiry_date DATE,
    dosage_form ENUM('Tablet', 'Syrup', 'Injection', 'Capsule', 'Cream'),
    requires_prescription BOOLEAN DEFAULT TRUE
);

INSERT INTO Medicines VALUES (1, 'Aspirin 75mg', 'Acetylsalicylic Acid', 'Antiplatelet', 'Sun Pharma', 2.50, 500, '2026-12-31', 'Tablet', FALSE);

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    bill_date DATE,
    consultation_charge DECIMAL(10,2),
    medicine_charge DECIMAL(10,2),
    lab_charge DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Pending', 'Partial') DEFAULT 'Pending',
    payment_method ENUM('Cash', 'Card', 'UPI', 'Insurance'),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

INSERT INTO Bills VALUES (1, 1, 1, '2024-10-05', 500.00, 150.00, 200.00, 850.00, 'Paid', 'UPI');