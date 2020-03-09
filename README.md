## README

## Bookmark Manager Project

The website will have the following specification:

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks

1. Show a list of Bookmarks

    As a User
    So that I may view my saved websites
    I would like to see a list of my bookmarks

## Domain Model

![Bookmark Manager Domain model](./public/Domain_model.png)

## Database Setup

Anyone needing to setup the database from scratch will need to do the following things:

1. Connect to psql - `psql postgres`
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the pqsl command `psql bookmark_manager;`
4. Run the query we have saved in the file 01_create_bookmarks_table.sql