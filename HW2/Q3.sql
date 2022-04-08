-- Live SQL
CREATE TABLE Projects (
    ProjectID CHAR(10) NOT NULL,
    Step INTEGER NOT NULL,
    Status CHAR NOT NULL,
    PRIMARY KEY (ProjectID, Step)
);

INSERT INTO Projects  VALUES ('P100', 0, 'C');
INSERT INTO Projects  VALUES ('P100', 1, 'W');
INSERT INTO Projects  VALUES ('P100', 2, 'W');
INSERT INTO Projects  VALUES ('P201', 0, 'C');
INSERT INTO Projects  VALUES ('P201', 1, 'C');
INSERT INTO Projects  VALUES ('P333', 0, 'W');
INSERT INTO Projects  VALUES ('P333', 1, 'W');
INSERT INTO Projects  VALUES ('P333', 2, 'W');
INSERT INTO Projects  VALUES ('P333', 3, 'W');

select * from Projects

select B.ProjectID from Projects A, Projects B where A.Status = 'C' and B.Status = 'W' and A.Step=0 and B.Step=1 and A.ProjectID=B.ProjectID;