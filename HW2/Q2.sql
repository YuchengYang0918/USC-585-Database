-- Live SQL
CREATE TABLE ENROLLMENT ( 
    SID INTEGER NOT NULL, 
    ClassName CHAR(30) NOT NULL, 
    GRADE CHAR,
    PRIMARY KEY (SID,ClassName)
);


INSERT INTO ENROLLMENT VALUES (123, 'Processing', 'A');
INSERT INTO ENROLLMENT VALUES (123, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES (123, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Java', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'Javascript', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'Scratch', 'A');
INSERT INTO ENROLLMENT VALUES (345, 'Javascript', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES (355, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES (355, 'Javascript', 'B');

select * from enrollment

select classname as ClassName, count(Sid) as Total from enrollment group by ClassName order by Total desc;