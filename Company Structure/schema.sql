DROP TABLE IF EXISTS company;
CREATE TABLE company
(
	employee	varchar(10) primary key,
	manager		varchar(10)
);

INSERT INTO company VALUES
('Elon', null),
('Ira', 'Elon'),
('Bret', 'Elon'),
('Earl', 'Elon'),
('James', 'Ira'),
('Drew', 'Ira'),
('Mark', 'Bret'),
('Phil', 'Mark'),
('Jon', 'Mark'),
('Omid', 'Earl');


COMMIT;