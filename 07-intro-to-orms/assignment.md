With a partner/group:

1.  Write the SQL to create tables for Books (id, title, author_id) and Authors (id, name)

CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER);

CREATE TABLE IF NOT EXISTS authors(
    id INTEGER PRIMARY KEY,
    title TEXT);

2.  Write the SQL to get all Books

3.  Write the SQL to get all Authors

4.  Write the SQL to create a new book, given the title and author id

5.  Write the SQL to create a new author, given the author's name

6.  Write the SQL to get all Books by a given author, given the author's id

7.  Write the SQL to get all Books by a given author, given the author's name

8.  Write the SQL to update a Book's title
