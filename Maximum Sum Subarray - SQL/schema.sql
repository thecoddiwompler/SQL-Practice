-- Create Table
CREATE TABLE IF NOT EXISTS ArrayTable (key1 INTEGER, val1 INTEGER);

-- Truncate table to clean Junk Data
TRUNCATE TABLE arraytable;

-- Insert Values
INSERT INTO
    ArrayTable (key1, val1)
VALUES
    (1, 10),
    (2, -40),
    (3, 20),
    (4, 35),
    (5, -2);

-- Commit the transaction
COMMIT;