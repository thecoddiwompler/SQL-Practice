CREATE TABLE IF NOT EXISTS Seat (id int, student varchar(255));

TRUNCATE TABLE Seat;

INSERT INTO
    Seat (id, student)
VALUES
    (1, 'Abbot'),
    (2, 'Doris'),
    (3, 'Emerson'),
    (4, 'Green'),
    (5, 'Jeames');