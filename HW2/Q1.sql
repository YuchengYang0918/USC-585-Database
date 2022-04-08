-- Live SQL
Q1:
For first issue, I can add constraint to check if startTime is later than endTime (Constraint checkTime check (startTime<endTime))
For second issue, I can add a new data type Char called isOccupied, and set default to 'N' which means not occupied. 'Y' means occupied. (isOccupied char(1) Default 'N')
For simplicity, add a constraint to check the startTime is later than 7 and endTime is after than 18.