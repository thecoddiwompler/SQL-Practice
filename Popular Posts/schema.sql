CREATE TABLE user_sessions (
    session_id int,
    user_id varchar(10),
    session_starttime timestamp,
    session_endtime timestamp,
    platform varchar(20)
);

INSERT INTO
    user_sessions
VALUES
(
        1,
        'U1',
        '2020-01-01 12:14:28',
        '2020-01-01 12:16:08',
        'Windows'
    );

INSERT INTO
    user_sessions
VALUES
(
        2,
        'U1',
        '2020-01-01 18:23:50',
        '2020-01-01 18:24:00',
        'Windows'
    );

INSERT INTO
    user_sessions
VALUES
(
        3,
        'U1',
        '2020-01-01 08:15:00',
        '2020-01-01 08:20:00',
        'IPhone'
    );

INSERT INTO
    user_sessions
VALUES
(
        4,
        'U2',
        '2020-01-01 10:53:10',
        '2020-01-01 10:53:30',
        'IPhone'
    );

INSERT INTO
    user_sessions
VALUES
(
        5,
        'U2',
        '2020-01-01 18:25:14',
        '2020-01-01 18:27:53',
        'IPhone'
    );

INSERT INTO
    user_sessions
VALUES
(
        6,
        'U2',
        '2020-01-01 11:28:13',
        '2020-01-01 11:31:33',
        'Windows'
    );

INSERT INTO
    user_sessions
VALUES
(
        7,
        'U3',
        '2020-01-01 06:46:20',
        '2020-01-01 06:58:13',
        'Android'
    );

INSERT INTO
    user_sessions
VALUES
(
        8,
        'U3',
        '2020-01-01 10:53:10',
        '2020-01-01 10:53:50',
        'Android'
    );

INSERT INTO
    user_sessions
VALUES
(
        9,
        'U3',
        '2020-01-01 13:13:13',
        '2020-01-01 13:34:34',
        'Windows'
    );

INSERT INTO
    user_sessions
VALUES
(
        10,
        'U4',
        '2020-01-01 08:12:00',
        '2020-01-01 12:23:11',
        'Windows'
    );

INSERT INTO
    user_sessions
VALUES
(
        11,
        'U4',
        '2020-01-01 21:54:03',
        '2020-01-01 21:54:04',
        'IPad'
    );

COMMIT;

DROP TABLE IF EXISTS post_views;

CREATE TABLE post_views (
    session_id int,
    post_id int,
    perc_viewed float
);

INSERT INTO
    post_views
VALUES
(1, 1, 2);

INSERT INTO
    post_views
VALUES
(1, 2, 4);

INSERT INTO
    post_views
VALUES
(1, 3, 1);

INSERT INTO
    post_views
VALUES
(2, 1, 20);

INSERT INTO
    post_views
VALUES
(2, 2, 10);

INSERT INTO
    post_views
VALUES
(2, 3, 10);

INSERT INTO
    post_views
VALUES
(2, 4, 21);

INSERT INTO
    post_views
VALUES
(3, 2, 1);

INSERT INTO
    post_views
VALUES
(3, 4, 1);

INSERT INTO
    post_views
VALUES
(4, 2, 50);

INSERT INTO
    post_views
VALUES
(4, 3, 10);

INSERT INTO
    post_views
VALUES
(6, 2, 2);

INSERT INTO
    post_views
VALUES
(8, 2, 5);

INSERT INTO
    post_views
VALUES
(8, 3, 2.5);

COMMIT;