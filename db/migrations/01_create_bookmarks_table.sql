CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60)); # create table with 1 column
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60); # add column for URL title
CREATE TABLE comments
(
    id SERIAL PRIMARY KEY,
    text VARCHAR(240),
    bookmark_id INTEGER REFERENCES bookmarks (id)
);
CREATE TABLE bookmarks_tags(tag_id INTEGER REFERENCES tags (id), bookmark_id INTEGER REFERENCES bookmarks (id));