-- Live SQL
CREATE TABLE Instruction(
    Instructor CHAR(15),
    Subject CHAR(30),
    PRIMARY KEY (Instructor, Subject)
);  

INSERT INTO Instruction VALUES ('Aleph', 'Scratch');        
INSERT INTO Instruction VALUES ('Aleph', 'Java');         
INSERT INTO Instruction VALUES ('Aleph', 'Processing');       
INSERT INTO Instruction VALUES ('Bit', 'Python');
INSERT INTO Instruction VALUES ('Bit', 'Javascript');
INSERT INTO Instruction VALUES ('Bit', 'Java');
INSERT INTO Instruction VALUES ('CRC', 'Python');
INSERT INTO Instruction VALUES ('CRC', 'Javascript');
INSERT INTO Instruction VALUES ('Dat', 'Scratch');
INSERT INTO Instruction VALUES ('Dat', 'Python');
INSERT INTO Instruction VALUES ('Dat', 'Javascript');
INSERT INTO Instruction VALUES ('Emscr', 'Scratch');
INSERT INTO Instruction VALUES ('Emscr', 'Processing');
INSERT INTO Instruction VALUES ('Emscr', 'Javascript');
INSERT INTO Instruction VALUES ('Emscr', 'Python');

CREATE TABLE Subjects(
    Subject Char(30),
    PRIMARY KEY(Subject)
);

INSERT INTO Subjects VALUES ('Javascript'); 
INSERT INTO Subjects VALUES ('Scratch'); 
INSERT INTO Subjects VALUES ('Python'); 


--select distinct Instructor from Instruction where Instruction.subject In (select Subject from Subjects) GROUP BY Instructor HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)
-- use distinct to avoid repeat data in the table.
-- I use group by and count method to make sure instructors can teach three subjects list above.

select distinct Instructor from Instruction join subjects on Instruction.subject=Subjects.subject GROUP BY Instructor HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)
-- use distinct to avoid repeat data in the table.
-- I use group by and count method to make sure instructors can teach three subjects list above.
-- AND the difference is that I use join instead of where