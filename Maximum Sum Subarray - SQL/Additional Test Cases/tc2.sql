-- Create Table
CREATE TABLE IF NOT EXISTS ArrayTable (key1 INTEGER, val1 INTEGER);

-- Truncate table to clean Junk Data
TRUNCATE TABLE arraytable;

-- Insert Values
INSERT INTO
    arraytable (key1, val1)
VALUES
    (1, 5),
    (2, 4),
    (3, -1),
    (4, 7),
    (5, 8);

-- Commit the transaction
COMMIT;