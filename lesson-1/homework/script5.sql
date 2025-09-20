После создания базы данных выбераем её в выпадающем списке (или выполняем USE SchoolDB;), затем выполним:
USE SchoolDB;

CREATE TABLE Студенты (
    StudentID INT PRIMARY KEY,
    Имя VARCHAR(50),
    Возраст INT
);
