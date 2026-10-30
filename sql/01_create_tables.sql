/********************************************************************************/
/*										                                      	*/
/*	Student Relational Database					*/
CREATE DATABASE Students;
USE Students;

CREATE TABLE STUDENT_TABLE(
	studentID		varchar(6)			NOT NULL, 
    studentName		Char(25)		NOT NULL,
    CONSTRAINT StudentPK PRIMARY KEY(studentID)
);

CREATE TABLE STAFF_TABLE(
	staffID		varchar(3)		NOT NULL,
    staffName	varchar(25)		NOT NULL,
    CONSTRAINT StaffPK 	PRIMARY KEY(staffID)
);

CREATE TABLE MODULE_TABLE(
	moduleID		varchar(4)	NOT NULL,
    moduleTitle		Char(30)	NOT NULL,
    staffID			varchar(3)	NOT NULL,
    moderatorID		varchar(3)	NOT NULL,
    CONSTRAINT		ModulePK	PRIMARY KEY(moduleID),
    CONSTRAINT		Module_StaffFK	FOREIGN KEY(staffID)
				REFERENCES STAFF_TABLE(staffID),
	CONSTRAINT		Module_ModeratorFK	FOREIGN KEY(moderatorID)
				REFERENCES STAFF_TABLE(staffID)
);
CREATE TABLE ASSESSMENT_TABLE(
	assessmentID	varchar(3)	NOT NULL,
    moduleID		varchar(4)	NOT NULL,
    AssessmentType	Char(15)	NOT NULL,
    AssessmentPercentage	int,
    Deadline	date	NOT NULL,
    CONSTRAINT AssessmentPK	PRIMARY KEY(assessmentID),
    CONSTRAINT	Assessment_ModuleFK FOREIGN KEY(moduleID)
			REFERENCES MODULE_TABLE(moduleID)
);

CREATE TABLE MARKS_TABLE(
	studentID	varchar(6)		NOT NULL,
    assessmentID	varchar(3)	NOT NULL,
    marksObtained	int		NOT NULL,
    CONSTRAINT MarksPK 	PRIMARY KEY(studentID,assessmentID),
    CONSTRAINT Marks_StudentFK FOREIGN KEY (studentID)
			REFERENCES STUDENT_TABLE(studentID),
    CONSTRAINT Marks_AssessmentFK FOREIGN KEY (assessmentID)
			REFERENCES ASSESSMENT_TABLE(assessmentID)
);
