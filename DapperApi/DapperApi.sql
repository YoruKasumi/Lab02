CREATE DATABASE SchoolDB;
GO

USE SchoolDB;

CREATE TABLE Students
(
Id INT PRIMARY KEY IDENTITY ,
Name NVARCHAR(100) NOT NULL ,
Age INT
);

-- Thêm ữd ệliu ẫmu để test
INSERT INTO Students (Name, Age) VALUES
(N'ễNguyn ăVn An', 21),
(N'ầTrn ịTh Bình', 22),
(N'Lê Minh Châu', 20);

ALTER TABLE Students ADD Email NVARCHAR(150);

CREATE TABLE Courses
(
Id INT PRIMARY KEY IDENTITY ,
CourseName NVARCHAR(100) NOT NULL
);

CREATE TABLE StudentCourses
(
StudentId INT NOT NULL ,
CourseId INT NOT NULL ,
PRIMARY KEY (StudentId , CourseId),
FOREIGN KEY (StudentId) REFERENCES Students(Id),
FOREIGN KEY (CourseId) REFERENCES Courses(Id)
);

-- Du lieu mau
INSERT INTO Courses (CourseName) VALUES
(N'ậLp trình .NET'), (N'ơC ởs ữd ệliu'), (N'ếKin trúc ầphn ềmm');

INSERT INTO StudentCourses VALUES (1,1) ,(1,2) ,(2,2) ,(2,3) ,(3,1) ,(3,3);
