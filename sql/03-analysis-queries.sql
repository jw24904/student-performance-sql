-- Query 1: Calculate students' weighted module results
-- A pass is an overall module mark of 40% or above.
-- Only includes modules where all assessment weightings
-- represented by the student's recorded marks add up to 100%.

SELECT
    S.studentID,
    S.studentName,
    M.moduleTitle,
    SUM(MR.marksObtained * A.assessmentPercentage) / 100
        AS overallPercentage
FROM STUDENT_TABLE S
JOIN MARKS_TABLE MR
    ON S.studentID = MR.studentID
JOIN ASSESSMENT_TABLE A
    ON MR.assessmentID = A.assessmentID
JOIN MODULE_TABLE M
    ON A.moduleID = M.moduleID
GROUP BY
    S.studentID,
    S.studentName,
    M.moduleID,
    M.moduleTitle
HAVING
    SUM(A.assessmentPercentage) = 100
    AND SUM(MR.marksObtained * A.assessmentPercentage) / 100 >= 40;