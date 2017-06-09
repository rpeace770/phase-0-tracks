#allows sqlite3 gem
require 'sqlite3'

#creates new database
db = SQLite3::Database.new("flashcards.db")
#db.results_as_hash = true

# create a table command
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

#creates vocab list through user input
def user_add_vocab(database)
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

def delete_vocab(db, word)
	db.execute("DELETE FROM bones WHERE word=?", [word])
end

def user_remove_vocab(database)
	user_word = nil
	while true
		puts "What word would you like to delete? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			delete_vocab(database, user_word)
		else
			return
		end
	end
end

def display_vocab(db)
	list = db.execute("SELECT bones.word, bones.definition FROM bones")
	list.each do |key, value|
		puts "#{key} - #{value}"
	end
end


# DRIVER CODE

# user_add_vocab(db)
# user_remove_vocab(db)
# display_vocab(db)

# let user delete based on label!!!!!!!!!!!!
user_input = nil

while user_input != "Q"
	puts "What would you like to do? (or 'q' to quit)"
	puts "Add\nDelete\nDisplay"
	user_input = gets.chomp.capitalize

	if user_input == "Q"
		puts "See you later!"
	elsif user_input == "Add"
		user_add_vocab(db)
	elsif user_input == "Delete"
		user_remove_vocab(db)
	elsif user_input == "Display"
		display_vocab(db)
	else
		puts "I did not understand your command."
	end
end










