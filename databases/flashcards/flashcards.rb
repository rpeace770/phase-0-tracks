#allows sqlite3 gem
require 'sqlite3'

#creates new database
db = SQLite3::Database.new("flashcards.db")

#create a table command
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS bones(
    id INTEGER PRIMARY KEY,
    word VARCHAR(255),
    definition VARCHAR(255)
  );
SQL

#executes create table command
db.execute(create_table)

#creates a new vocab word and definition
def create_vocab(db, word, define)
  db.execute("INSERT INTO bones (word, definition) VALUES (?, ?)", [word, define])
end

#DRIVER CODE
def add_vocab(database)
	user_word = nil
	while true
		puts "What word would you like to insert? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			puts "What is the definition for #{user_word}?"
			user_def = gets.chomp.downcase
			create_vocab(database, user_word, user_def)
		else
			return
		end
	end
end

add_vocab(db)












