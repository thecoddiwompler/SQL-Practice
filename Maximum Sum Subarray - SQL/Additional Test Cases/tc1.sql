-- Create Table
CREATE TABLE IF NOT EXISTS ArrayTable (key1 INTEGER, val1 INTEGER);

-- Truncate table to clean Junk Data
TRUNCATE TABLE arraytable;

-- Insert Values
INSERT INTO
    arraytable (key1, val1)
VALUES
    (1, -2),
    (2, 1),
    (3, -3),
    (4, 4),
    (5, -1),
    (6, 2),
    (7, 1),
    (8, -5),
    (9, 4);

-- Commit the Transaction
COMMIT;