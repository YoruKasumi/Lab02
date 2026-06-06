CREATE DATABASE SchoolDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE SchoolDB;

CREATE TABLE Students
(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT
);

-- Thêm dữ liệu mẫu để test
INSERT INTO Students (Name, Age) VALUES
('Nguyễn Văn An', 21),
('Trần Thị Bình', 22),
('Lê Minh Châu', 20);