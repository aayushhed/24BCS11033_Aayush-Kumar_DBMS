# Task-2: Populate Data

## Problem Summary

Insert the given records into the following tables:

- Doctors
- Patients
- Appointments
- Treatments
- MedicalRecords
- Billing

After inserting the data, retrieve the first record from the following tables:

- Doctors
- Patients
- Appointments

## Solution

```sql
-- Insert records into all six tables

-- Retrieve first record from Doctors
SELECT * FROM Doctors
WHERE DoctorID = 1;

-- Retrieve first record from Patients
SELECT * FROM Patients
WHERE PatientID = 1;

-- Retrieve first record from Appointments
SELECT * FROM Appointments
WHERE AppointmentID = 1;
```

## Explanation

1. Inserted the provided records into all six tables using `INSERT INTO`.
2. Retrieved the first record from the **Doctors**, **Patients**, and **Appointments** tables using `SELECT` with the corresponding primary key.

## SQL Concepts Used

- INSERT INTO
- VALUES
- SELECT
- WHERE
- Primary Key


## Author

**Aayush Kumar**