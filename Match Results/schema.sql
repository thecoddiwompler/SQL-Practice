CREATE TABLE IF NOT EXISTS MatchResults (
    ID INT PRIMARY KEY,
    Team1 VARCHAR(50),
    Team2 VARCHAR(50),
    Won VARCHAR(50)
);

INSERT INTO MatchResults (ID, Team1, Team2, Won) VALUES
(1, 'India', 'Australia', 'India'),
(2, 'Australia', 'England', 'Australia'),
(3, 'England', 'India', 'India'),
(4, 'South Africa', 'Australia', 'Australia'),
(5, 'England', 'South Africa', 'South Africa'),
(6, 'India', 'South Africa', 'India'),
(7, 'Sri Lanka', 'India', 'India'),
(8, 'Australia', 'Sri Lanka', 'Australia'),
(9, 'Sri Lanka', 'England', 'Sri Lanka'),
(10, 'South Africa', 'Sri Lanka', 'South Africa');

COMMIT;
