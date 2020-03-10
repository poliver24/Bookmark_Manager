CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60)); # create table with 1 column
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60); # add column for URL title