CREATE TABLE flights (
    cid VARCHAR(512),
    fid VARCHAR(512),
    origin VARCHAR(512),
    Destination VARCHAR(512)
);

INSERT INTO
    flights (cid, fid, origin, Destination)
VALUES
    ('1', 'f1', 'Del', 'Hyd'),
    ('1', 'f2', 'Hyd', 'Blr'),
    ('1', 'f3', 'Blr', 'Pune'),
    ('2', 'f4', 'Mum', 'Agra'),
    ('2', 'f5', 'Agra', 'Kol');

COMMIT;