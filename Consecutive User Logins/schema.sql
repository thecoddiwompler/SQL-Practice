drop table if exists user_login;

create table user_login
(
	user_id		int,
	login_date	date
);

INSERT INTO user_login (user_id, login_date)
VALUES
(1, to_date('01/03/2024','dd/mm/yyyy')),
(1, to_date('02/03/2024','dd/mm/yyyy')),
(1, to_date('03/03/2024','dd/mm/yyyy')),
(1, to_date('04/03/2024','dd/mm/yyyy')),
(1, to_date('06/03/2024','dd/mm/yyyy')),
(1, to_date('10/03/2024','dd/mm/yyyy')),
(1, to_date('11/03/2024','dd/mm/yyyy')),
(1, to_date('12/03/2024','dd/mm/yyyy')),
(1, to_date('13/03/2024','dd/mm/yyyy')),
(1, to_date('14/03/2024','dd/mm/yyyy')),
(1, to_date('20/03/2024','dd/mm/yyyy')),
(1, to_date('25/03/2024','dd/mm/yyyy')),
(1, to_date('26/03/2024','dd/mm/yyyy')),
(1, to_date('27/03/2024','dd/mm/yyyy')),
(1, to_date('28/03/2024','dd/mm/yyyy')),
(1, to_date('29/03/2024','dd/mm/yyyy')),
(1, to_date('30/03/2024','dd/mm/yyyy')),
(2, to_date('01/03/2024','dd/mm/yyyy')),
(2, to_date('02/03/2024','dd/mm/yyyy')),
(2, to_date('03/03/2024','dd/mm/yyyy')),
(2, to_date('04/03/2024','dd/mm/yyyy')),
(3, to_date('01/03/2024','dd/mm/yyyy')),
(3, to_date('02/03/2024','dd/mm/yyyy')),
(3, to_date('03/03/2024','dd/mm/yyyy')),
(3, to_date('04/03/2024','dd/mm/yyyy')),
(3, to_date('04/03/2024','dd/mm/yyyy')),
(3, to_date('04/03/2024','dd/mm/yyyy')),
(3, to_date('05/03/2024','dd/mm/yyyy')),
(4, to_date('01/03/2024','dd/mm/yyyy')),
(4, to_date('02/03/2024','dd/mm/yyyy')),
(4, to_date('03/03/2024','dd/mm/yyyy')),
(4, to_date('04/03/2024','dd/mm/yyyy')),
(4, to_date('04/03/2024','dd/mm/yyyy'));