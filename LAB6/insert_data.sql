-- =====================
-- FACULTY
-- =====================
INSERT INTO faculty (faculty_id, name) VALUES
    (1, 'Informatyka');

-- =====================
-- SPECIALIZATION
-- =====================
INSERT INTO specialization (specialization_id, name, faculty_id) VALUES
    (1, 'Programowanie', 1);

-- =====================
-- TUITION
-- =====================
INSERT INTO tuition (tuition_id, is_active) VALUES
    (1, TRUE);

-- =====================
-- STUDENT GROUP
-- =====================
INSERT INTO student_group (group_id, name, semester) VALUES
    (1, 'G1', 1);

-- =====================
-- USERS
-- =====================
INSERT INTO users (user_id, login, password, email, is_active, user_role, created, updated) VALUES
                                                                                                (1, 'student1', 'pass123', 'student1@example.com', TRUE, 'STUDENT', '2026-01-21', NULL),
                                                                                                (2, 'student2', 'pass123', 'student2@example.com', TRUE, 'STUDENT', '2026-01-21', NULL),
                                                                                                (3, 'student3', 'pass123', 'student3@example.com', TRUE, 'STUDENT', '2026-01-21', NULL),
                                                                                                (4, 'student4', 'pass123', 'student4@example.com', TRUE, 'STUDENT', '2026-01-21', NULL),
                                                                                                (5, 'student5', 'pass123', 'student5@example.com', TRUE, 'STUDENT', '2026-01-21', NULL);

-- =====================
-- STUDENT DETAILS
-- =====================
INSERT INTO student_details (student_detail_id, first_name, last_name, gender, phone_number, album_number, user_id) VALUES
                                                                                                                        (1, 'Anna', 'Kowalska', 'FEMALE', '600111222', 'A1001', 1),
                                                                                                                        (2, 'Piotr', 'Nowak', 'MALE', '600111223', 'A1002', 2),
                                                                                                                        (3, 'Ewa', 'Wiśniewska', 'FEMALE', '600111224', 'A1003', 3),
                                                                                                                        (4, 'Marek', 'Zieliński', 'MALE', '600111225', 'A1004', 4),
                                                                                                                        (5, 'Kasia', 'Lewandowska', 'FEMALE', '600111226', 'A1005', 5);

-- =====================
-- STUDENT-FACULTY
-- =====================
INSERT INTO student_faculty (student_faculty_id, student_detail_id, faculty_id, semester, tuition_id, group_id) VALUES
                                                                                                                    (1, 1, 1, 1, 1, 1),
                                                                                                                    (2, 2, 1, 1, 1, 1),
                                                                                                                    (3, 3, 1, 1, 1, 1),
                                                                                                                    (4, 4, 1, 1, 1, 1),
                                                                                                                    (5, 5, 1, 1, 1, 1);

-- =====================
-- CLASS
-- =====================
INSERT INTO class (class_id, subject_name, start_hour, end_hour, group_id) VALUES
                                                                               (1, 'Matematyka', '08:00:00', '10:00:00', 1),
                                                                               (2, 'Programowanie', '10:15:00', '12:15:00', 1);

-- =====================
-- CLASSROOM
-- =====================
INSERT INTO classroom (classroom_id, building, number) VALUES
                                                           (1, 'A', '101'),
                                                           (2, 'B', '202');

-- =====================
-- INSTRUCTOR
-- =====================
INSERT INTO instructor (instructor_id, first_name, last_name, email, department) VALUES
                                                                                     (1, 'Jan', 'Kowal', 'jan.kowal@example.com', 'Matematyka'),
                                                                                     (2, 'Ewa', 'Malinowska', 'ewa.malinowska@example.com', 'Informatyka');

-- =====================
-- SCHEDULE
-- =====================
INSERT INTO schedule (schedule_id, class_id, instructor_id, classroom_id, start_date, end_date, week_day, class_type) VALUES
                                                                                                                          (1, 1, 1, 1, '2026-01-21', '2026-04-21', 1, 'Lecture'),
                                                                                                                          (2, 2, 2, 2, '2026-01-21', '2026-04-21', 3, 'Lecture');

-- =====================
-- STUDENT ATTENDANCE
-- =====================
INSERT INTO student_attendance (attendance_id, user_id, schedule_id, attendance_date, status, notes) VALUES
                                                                                                         (1, 1, 1, '2026-01-21', 'Present', NULL),
                                                                                                         (2, 2, 1, '2026-01-21', 'Absent', 'Sick'),
                                                                                                         (3, 3, 2, '2026-01-21', 'Present', NULL),
                                                                                                         (4, 4, 2, '2026-01-21', 'Present', NULL),
                                                                                                         (5, 5, 2, '2026-01-21', 'Absent', 'Excused');

-- =====================
-- BOOK
-- =====================
INSERT INTO book (book_id, book_title, author, isbn) VALUES
                                                         (1, 'Wprowadzenie do SQL', 'Jan Nowak', '123-456-789'),
                                                         (2, 'Programowanie w Python', 'Anna Kowalska', '987-654-321');

-- =====================
-- LOAN
-- =====================
INSERT INTO loan (loan_id, loan_date, return_date, status, user_id, book_id) VALUES
                                                                                 (1, '2026-01-21', NULL, 'On Loan', 1, 1),
                                                                                 (2, '2026-01-21', '2026-02-20', 'Returned', 2, 2);

-- =====================
-- PAYMENTS
-- =====================
INSERT INTO payments (payment_id, term, amount, payment_date, payment_amount, status, tuition_id) VALUES
                                                                                                      (1, '2026-01-21 00:00:00', 1000.00, '2026-01-21', 1000.00, 'Paid', 1),
                                                                                                      (2, '2026-01-21 00:00:00', 1000.00, NULL, 0.00, 'Pending', 1);
