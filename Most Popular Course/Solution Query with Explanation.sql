/*
Task: 
find the most popular course

Thinking Process: 
most popular course = course that gets most page view
thus we will need to find it by grouping by the course id in page view table, and find out the one with most views.
However, that table only provides us with course id, in order to get its name, we will have to join the page view table with course table

Solution:
join the table page view and course first
group by course id
sort data by the sum of page views per course id
pick up the course that get most page views and return its name

*/
SELECT c.name,COUNT(p.page_view_id) AS total_view
FROM page_view p
INNER JOIN course c
ON p.course_id = c.course_id
GROUP BY c.course_id
ORDER BY COUNT(p.page_view_id) DESC
LIMIT 1;