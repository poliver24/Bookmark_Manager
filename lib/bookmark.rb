require 'pg'

class Bookmark
    def self.all
        connection = PG.connect(dbname: 'bookmark_manager') # connects to our bookmark_manager databse using PG
        result = connection.exec("SELECT * FROM bookmarks;") # Gets results from the bookmark_manaer database
        result.map { |bookmark| bookmark['url'] } 
    end
end