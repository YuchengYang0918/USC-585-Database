-- Live SQL
CREATE TABLE Instructors (
    Name CHAR(10) NOT NULL,
    hourly_rate INTEGER NOT NULL,
    sum_of_class_counts INTEGER NOT NULL,
    PRIMARY KEY (Name)
);

INSERT INTO Instructors VALUES ('A', 20, 155);
INSERT INTO Instructors VALUES ('B', 15, 200);
INSERT INTO Instructors VALUES ('C', 100, 90);


select * from Instructors

select max(Hourly_rate * sum_of_class_counts) as bonusAmountPaid from Instructors