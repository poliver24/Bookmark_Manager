require 'pg'

class Bookmark
    def self.all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
        else
            connection = PG.connect(dbname: 'bookmark_manager') # connects to our bookmark_manager databse using PG
        end
        
        result = connection.exec("SELECT * FROM bookmarks;") # Gets results from the bookmark_manaer database
        result.map { |bookmark| bookmark['url'] } 
    end
end