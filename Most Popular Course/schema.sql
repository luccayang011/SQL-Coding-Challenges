/* one row for every course on the site */
CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    date_published DATE,
    name VARCHAR(255),
    subject VARCHAR(255)
)
;
/* one row for every lesson on the site. Each lesson is part of a course. */
CREATE TABLE lesson (
    lesson_id SERIAL PRIMARY KEY,
    date_published DATE,
    course_id INTEGER,
    name VARCHAR(255),
    subject VARCHAR(255),
    FOREIGN KEY (course_id) REFERENCES course (course_id)
)
;
/* one row for every time a person views a page */
CREATE TABLE page_view (
    page_view_id SERIAL PRIMARY KEY,
    page_view_time DATE NOT NULL ,
    session_id INTEGER NOT NULL,
    url varchar(255) NOT NULL ,
    page_title varchar(255),
    lesson_id INTEGER,
    course_id INTEGER,
    FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id),
    FOREIGN KEY (course_id) REFERENCES course (course_id)
)
;
/* one rows for every session a user has on the site. A session generally spans several page_views */
CREATE TABLE session (
    session_id SERIAL PRIMARY KEY,
    session_start_time DATE NOT NULL ,
    unique_user_id INTEGER NOT NULL /* This is a unique identifier of a user's device. Could be based on a long lasting cookie or derived from user agent + IP address */
);
