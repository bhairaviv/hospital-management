CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    phone VARCHAR(20)
);
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(10),
    contact_info VARCHAR(100)
);
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    description TEXT,
    cost DECIMAL(10, 2),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
CREATE TABLE Bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    total_amount DECIMAL(10, 2),
    billing_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
INSERT INTO Doctors (name, specialty, phone) VALUES
('Dr. Alice Smith', 'Cardiology', '555-1001'),
('Dr. Bob Johnson', 'Neurology', '555-1002'),
('Dr. Clara Lee', 'Pediatrics', '555-1003'),
('Dr. David Brown', 'Orthopedics', '555-1004'),
('Dr. Emma Davis', 'Dermatology', '555-1005'),
('Dr. Frank Miller', 'ENT', '555-1006'),
('Dr. Grace Kim', 'Gastroenterology', '555-1007'),
('Dr. Henry Young', 'Cardiology', '555-1008'),
('Dr. Ivy Chen', 'Neurology', '555-1009'),
('Dr. Jack Wilson', 'Orthopedics', '555-1010');

INSERT INTO Patients (name, dob, gender, contact_info) VALUES
('John Doe', '1985-03-15', 'Male', 'john.doe@example.com'),
('Jane Smith', '1990-07-22', 'Female', 'jane.smith@example.com'),
('Michael Johnson', '1978-12-01', 'Male', 'michael.johnson@example.com'),
('Emily Davis', '1995-05-10', 'Female', 'emily.davis@example.com'),
('Daniel Brown', '1982-09-18', 'Male', 'daniel.brown@example.com'),
('Sarah Taylor', '2000-01-30', 'Female', 'sarah.taylor@example.com'),
('Christopher Lee', '1993-11-20', 'Male', 'chris.lee@example.com'),
('Olivia Harris', '1999-06-13', 'Female', 'olivia.harris@example.com'),
('Matthew Clark', '1987-08-05', 'Male', 'matt.clark@example.com'),
('Sophia Lewis', '2001-03-29', 'Female', 'sophia.lewis@example.com'),
('Ethan Walker', '1986-07-08', 'Male', 'ethan.walker@example.com'),
('Ava Hall', '1992-04-17', 'Female', 'ava.hall@example.com'),
('Ryan Allen', '1991-10-11', 'Male', 'ryan.allen@example.com'),
('Isabella Young', '1996-02-23', 'Female', 'isabella.young@example.com'),
('Andrew King', '1983-06-04', 'Male', 'andrew.king@example.com'),
('Mia Wright', '1997-12-30', 'Female', 'mia.wright@example.com'),
('Jacob Scott', '1984-11-27', 'Male', 'jacob.scott@example.com'),
('Charlotte Green', '2002-09-19', 'Female', 'charlotte.green@example.com'),
('Logan Adams', '1998-01-08', 'Male', 'logan.adams@example.com'),
('Amelia Baker', '1994-10-02', 'Female', 'amelia.baker@example.com');
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2025-10-01', 'Completed'),
(2, 2, '2025-10-02', 'Scheduled'),
(3, 3, '2025-10-03', 'Completed'),
(4, 4, '2025-10-04', 'Cancelled'),
(5, 5, '2025-10-05', 'Completed'),
(6, 6, '2025-10-06', 'Completed'),
(7, 7, '2025-10-07', 'Scheduled'),
(8, 8, '2025-10-08', 'Completed'),
(9, 9, '2025-10-09', 'Completed'),
(10, 10, '2025-10-10', 'Scheduled'),
(11, 1, '2025-10-11', 'Completed'),
(12, 2, '2025-10-12', 'Scheduled'),
(13, 3, '2025-10-13', 'Completed'),
(14, 4, '2025-10-14', 'Completed'),
(15, 5, '2025-10-15', 'Completed'),
(16, 6, '2025-10-16', 'Cancelled'),
(17, 7, '2025-10-17', 'Completed'),
(18, 8, '2025-10-18', 'Scheduled'),
(19, 9, '2025-10-19', 'Completed'),
(20, 10, '2025-10-20', 'Completed'),
(1, 1, '2025-10-21', 'Completed'),
(2, 2, '2025-10-22', 'Scheduled'),
(3, 3, '2025-10-23', 'Completed'),
(4, 4, '2025-10-24', 'Scheduled'),
(5, 5, '2025-10-25', 'Completed'),
(6, 6, '2025-10-26', 'Completed'),
(7, 7, '2025-10-27', 'Completed'),
(8, 8, '2025-10-28', 'Scheduled'),
(9, 9, '2025-10-29', 'Completed'),
(10, 10, '2025-10-30', 'Cancelled');
INSERT INTO Treatments (appointment_id, description, cost) VALUES
(1, 'Cardio exam and ECG', 250.00),
(2, 'Neurological exam', 300.00),
(3, 'Pediatric consultation', 150.00),
(5, 'Orthopedic follow-up', 500.00),
(6, 'ENT infection treatment', 200.00),
(7, 'Skin allergy treatment', 180.00),
(8, 'Gastro checkup', 275.00),
(9, 'Heart monitoring', 325.00),
(10, 'Ear wax removal', 125.00),
(11, 'Annual physical exam', 220.00),
(12, 'Blood pressure check', 90.00),
(13, 'Migraine treatment', 320.00),
(14, 'Knee injury follow-up', 415.00),
(15, 'Child growth consultation', 185.00),
(16, 'Stomach ache treatment', 210.00),
(17, 'Skin check', 160.00),
(18, 'ENT diagnosis', 190.00),
(19, 'Heart rate monitoring', 290.00),
(20, 'Bone density scan', 400.00),
(21, 'Follow-up heart check', 275.00),
(22, 'Eye infection treatment', 150.00),
(23, 'Cholesterol test', 140.00),
(24, 'Child flu treatment', 165.00),
(25, 'Lung function test', 350.00),
(26, 'Gastro exam', 305.00),
(27, 'Routine heart check', 220.00),
(28, 'ENT treatment', 200.00),
(29, 'Orthopedic injury check', 450.00),
(30, 'Skin rash diagnosis', 180.00);
INSERT INTO Bills (patient_id, total_amount, billing_date) VALUES
(1, 600.00, '2025-10-06'),
(2, 200.00, '2025-10-07'),
(3, 320.00, '2025-10-08'),
(4, 400.00, '2025-10-09'),
(5, 500.00, '2025-10-10'),
(6, 275.00, '2025-10-11'),
(7, 150.00, '2025-10-12'),
(8, 305.00, '2025-10-13'),
(9, 415.00, '2025-10-14'),
(10, 360.00, '2025-10-15'),
(11, 220.00, '2025-10-16'),
(12, 280.00, '2025-10-17'),
(13, 390.00, '2025-10-18'),
(14, 410.00, '2025-10-19'),
(15, 250.00, '2025-10-20'),
(16, 190.00, '2025-10-21'),
(17, 275.00, '2025-10-22')

//Find the doctors with the most completed appointments

SELECT 
  d.doctor_id,
  d.name AS doctor_name,
  COUNT(a.appointment_id) AS total_completed
FROM Doctors d
  JOIN Appointments a 
    ON d.doctor_id = a.doctor_id
WHERE a.status = 'Completed'
GROUP BY d.doctor_id, d.name
ORDER BY total_completed DESC;

//Total treatment cost per patient
SELECT 
  p.patient_id,
  p.name AS patient_name,
  COALESCE(SUM(t.cost), 0) AS total_treatment_cost
FROM Patients p
  LEFT JOIN Appointments a 
    ON p.patient_id = a.patient_id
  LEFT JOIN Treatments t 
    ON a.appointment_id = t.appointment_id
GROUP BY p.patient_id, p.name
ORDER BY total_treatment_cost DESC;

//Patients whose treatment cost exceeds the average treatment cost

SELECT 
  patient_id,
  patient_name,
  total_treatment_cost
FROM (
  SELECT 
    p.patient_id,
    p.name AS patient_name,
    SUM(t.cost) AS total_treatment_cost
  FROM Patients p
    JOIN Appointments a ON p.patient_id = a.patient_id
    JOIN Treatments t ON a.appointment_id = t.appointment_id
  GROUP BY p.patient_id, p.name
) AS sub
WHERE total_treatment_cost > (
  SELECT AVG(total_cost)
  FROM (
    SELECT SUM(t2.cost) AS total_cost
    FROM Patients p2
      JOIN Appointments a2 ON p2.patient_id = a2.patient_id
      JOIN Treatments t2 ON a2.appointment_id = t2.appointment_id
    GROUP BY p2.patient_id
  ) AS avg_sub
);


//Monthly billing totals (per month)

SELECT 
  DATE_FORMAT(b.billing_date, '%Y-%m') AS billing_month,
  SUM(b.total_amount) AS total_billed
FROM Bills b
GROUP BY billing_month
ORDER BY billing_month;

//List doctors who have had no appointments in the last 30 days

SELECT 
  d.doctor_id,
  d.name AS doctor_name
FROM Doctors d
WHERE d.doctor_id NOT IN (
  SELECT DISTINCT a.doctor_id
  FROM Appointments a
  WHERE a.appointment_date >= CURDATE() - INTERVAL 30 DAY
);


//each doctor, the average cost of treatments they’ve administered

SELECT 
  d.doctor_id,
  d.name AS doctor_name,
  AVG(t.cost) AS avg_treatment_cost
FROM Doctors d
  JOIN Appointments a ON d.doctor_id = a.doctor_id
  JOIN Treatments t ON a.appointment_id = t.appointment_id
GROUP BY d.doctor_id, d.name
ORDER BY avg_treatment_cost DESC;


//. Top 3 Most Frequent Diagnoses per Department
WITH DiagnosisRank AS (
  SELECT
    d.department,
    t.description AS diagnosis,
    COUNT(*) AS frequency,
    RANK() OVER (PARTITION BY d.department ORDER BY COUNT(*) DESC) AS rank
  FROM
    Treatments t
    JOIN Appointments a ON t.appointment_id = a.appointment_id
    JOIN Doctors doc ON a.doctor_id = doc.doctor_id
    JOIN Departments d ON doc.department_id = d.department_id
  GROUP BY
    d.department, t.description
)
SELECT
  department,
  diagnosis,
  frequency
FROM
  DiagnosisRank
WHERE
  rank <= 3
ORDER BY
  department, frequency DESC;

///Patients with Multiple Appointments in the Last 30 Days

SELECT
  p.patient_id,
  p.name,
  COUNT(a.appointment_id) AS appointment_count
FROM
  Patients p
  JOIN Appointments a ON p.patient_id = a.patient_id
WHERE
  a.appointment_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY
  p.patient_id, p.name
HAVING
  COUNT(a.appointment_id) > 1
ORDER BY
  appointment_count DESC;


//Average Treatment Cost by Gender

SELECT
  p.gender,
  AVG(t.cost) AS avg_treatment_cost
FROM
  Patients p
  JOIN Appointments a ON p.patient_id = a.patient_id
  JOIN Treatments t ON a.appointment_id = t.appointment_id
GROUP BY
  p.gender;

//Doctors with No Treatments in the Last 60 Day

SELECT
  d.doctor_id,
  d.name
FROM
  Doctors d
WHERE
  d.doctor_id NOT IN (
    SELECT DISTINCT
      a.doctor_id
    FROM
      Appointments a
      JOIN Treatments t ON a.appointment_id = t.appointment_id
    WHERE
      a.appointment_date >= CURDATE() - INTERVAL 60 DAY
  );


//Total Revenue by Department

SEMonthly Patient Admissions TrendLECT
  d.department,
  SUM(t.cost) AS total_revenue
FROM
  Treatments t
  JOIN Appointments a ON t.appointment_id = a.appointment_id
  JOIN Doctors doc ON a.doctor_id = doc.doctor_id
  JOIN Departments d ON doc.department_id = d.department_id
GROUP BY
  d.department
ORDER BY
  total_revenue DESC;


///Monthly Patient Admissions Trend

SELECT
  DATE_FORMAT(a.appointment_date, '%Y-%m') AS month,
  COUNT(DISTINCT a.patient_id) AS new_patients
FROM
  Appointments a
WHERE
  a.appointment_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY
  month
ORDER BY
  month DESC;
