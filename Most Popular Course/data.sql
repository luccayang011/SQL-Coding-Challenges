-- course table
INSERT INTO course (date_published, name, subject)
VALUES ('2021-9-12', 'English', 'Language');

INSERT INTO course (date_published, name, subject)
VALUES ('2022-7-5', 'Algorithms', 'Computer Science');

INSERT INTO course (date_published, name, subject)
VALUES ('2020-9-5', 'Database', 'Computer Science');

-- lesson table
INSERT INTO lesson (date_published, course_id, name, subject)
VALUES ('2021-11-5', 2, 'Lesson 1', 'CS');

INSERT INTO lesson (date_published, course_id, name, subject)
VALUES ('2021-11-5', 2, 'Lesson 2', 'CS');

INSERT INTO lesson (date_published, course_id, name, subject)
VALUES ('2021-11-5', 3, 'Lesson 4', 'CS');

INSERT INTO lesson (date_published, course_id, name, subject)
VALUES ('2021-11-5', 3, 'Lesson 5', 'CS');

-- page_view table
INSERT INTO page_view (page_view_time, session_id, url, page_title,lesson_id,course_id)
VALUES ('2022-11-5', 2, 'http...', 'pg_title1',2,2);

INSERT INTO page_view (page_view_time, session_id, url, page_title,lesson_id,course_id)
VALUES ('2022-11-5', 2, 'http...', 'pg_title2',2,2);

INSERT INTO page_view (page_view_time, session_id, url, page_title,lesson_id,course_id)
VALUES ('2022-11-5', 2, 'http...', 'pg_title3',1,2);

INSERT INTO page_view (page_view_time, session_id, url, page_title,lesson_id,course_id)
VALUES ('2022-11-5', 3, 'http...', 'pg_title3',1,3);

INSERT INTO page_view (page_view_time, session_id, url, page_title,lesson_id,course_id)
VALUES ('2022-11-5', 3, 'http...', 'pg_title3',1,3);


-- session table
INSERT INTO session (session_start_time, unique_user_id)
VALUES ('2021-6-7', 5);

INSERT INTO session (session_start_time, unique_user_id)
VALUES ('2021-6-8', 10);

INSERT INTO session (session_start_time, unique_user_id)
VALUES ('2021-6-8', 20);