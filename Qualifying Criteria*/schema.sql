CREATE TABLE Ameriprise_LLC (
    teamID varchar(2),
    memberID varchar(10),
    Criteria1 varchar(1),
    Criteria2 varchar(1)
);

INSERT INTO
    Ameriprise_LLC
VALUES
    ('T1', 'T1_mbr1', 'Y', 'Y'),
    ('T1', 'T1_mbr2', 'Y', 'Y'),
    ('T1', 'T1_mbr3', 'Y', 'Y'),
    ('T1', 'T1_mbr4', 'Y', 'Y'),
    ('T1', 'T1_mbr5', 'Y', 'N'),
    ('T2', 'T2_mbr1', 'Y', 'Y'),
    ('T2', 'T2_mbr2', 'Y', 'N'),
    ('T2', 'T2_mbr3', 'N', 'Y'),
    ('T2', 'T2_mbr4', 'N', 'N'),
    ('T2', 'T2_mbr5', 'N', 'N'),
    ('T3', 'T3_mbr1', 'Y', 'Y'),
    ('T3', 'T3_mbr2', 'Y', 'Y'),
    ('T3', 'T3_mbr3', 'N', 'Y'),
    ('T3', 'T3_mbr4', 'N', 'Y'),
    ('T3', 'T3_mbr5', 'Y', 'N');

COMMIT;