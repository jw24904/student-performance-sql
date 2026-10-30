INSERT INTO STUDENT_TABLE VALUES
('STU001','Mitchell'),
('STU002','Jamie'),
('STU003','Kevin'),
('STU004','Rashid'),
('STU005','Amir'),
('STU007','Adam');


INSERT INTO STAFF_TABLE VALUES
('T10','James'),
('T06','Guram'),
('T05','Evan'),
('T09','Sam'),
('T07','Morgan'),
('T04','Staff1'),
('T03','Staff2'),
('T02','Staff3'),
('T01','Staff4'),
('T12','Staff5'),
('T11','Staff6'),
('T19','Staff7');


INSERT INTO MODULE_TABLE VALUES
('CS08','Cyber Security','T10','T05'),
('CS07','Python','T09','T04'),
('CS04','Databases','T06','T03'),
('CS05','Application Development','T05','T02'),
('CS03','Web Development','T07','T01');


INSERT INTO ASSESSMENT_TABLE VALUES
('A04','CS08','Project',40,'2025-10-28'),
('A03','CS08','Final Exam',60,'2025-11-15'),
('A06','CS07','Project',40,'2025-10-30'),
('A05','CS07','Final Exam',60,'2025-11-05'),
('A08','CS04','Project',30,'2025-10-31'),
('A07','CS04','Final Exam',70,'2025-11-11'),
('A10','CS05','Project',30,'2025-11-04'),
('A09','CS05','Progress Test',70,'2025-11-14'),
('A12','CS03','Final Exam',60,'2025-11-11'),
('A11','CS03','Project',40,'2025-11-13');


INSERT INTO MARKS_TABLE VALUES
('STU001','A04',29),
('STU001','A03',41),
('STU002','A06',30),
('STU002','A05',65),
('STU003','A08',27),
('STU003','A07',53),
('STU004','A10',9),
('STU004','A09',23),
('STU005','A12',34),
('STU005','A11',65),
('STU007','A04',75);