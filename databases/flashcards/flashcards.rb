#allows sqlite3 gem
require 'sqlite3'

#creates new database
db = SQLite3::Database.new("flashcards.db")
#db.results_as_hash = true

# create a table command
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS nursing(
    id INTEGER PRIMARY KEY,
    word VARCHAR(255),
    definition VARCHAR(255),
    recognition VARCHAR(255) DEFAULT "-"
  );
SQL

#executes create table command
db.execute(create_table)

#creates a new vocab word and definition
def create_vocab(db, word, define)
  db.execute("INSERT INTO nursing (word, definition) VALUES (?, ?)", [word, define])
end

#creates vocab list through user input
def user_add_vocab(database)
	user_word = nil
	while true
		plain_display_vocab(database)
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
	db.execute("DELETE FROM nursing WHERE word=?", [word])
end

def user_remove_vocab(database)
	user_word = nil
	while true
		plain_display_vocab(database)
		puts "What word would you like to delete? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			delete_vocab(database, user_word)
		else
			return
		end
	end
end

def plain_display_vocab(db)
	list = db.execute("SELECT nursing.id, nursing.word, nursing.definition FROM nursing")
	list.each do |number, word, definition|
		puts "#{number}. #{word} - #{definition}"
	end
end

def display_vocab(db)
	list = db.execute("SELECT nursing.id, nursing.word, nursing.definition, nursing.recognition FROM nursing")
	list.each do |number, word, definition, recognition|
		puts "#{number}. #{word} - #{definition}"
		puts "Do you know this definition? - #{recognition}"
	end
end

def shuffle_insert(db, recog, number)
	db.execute("UPDATE nursing SET recognition=? WHERE id=?", [recog, number])
end

def shuffle(db)
	shuffle_list = db.execute("SELECT nursing.id, nursing.word, nursing.definition FROM nursing")
	shuffle_list.shuffle.each do |number, word, definition|
		puts "#{number}. #{word}"
		puts "What is the definition?"
		user_definition = gets.chomp
		puts "The real definition is: #{definition}"
		puts "Were you correct? (y/n)"
		re_quiz = gets.chomp
		shuffle_insert(db, re_quiz, number)
	end
	display_vocab(db)
end


# DRIVER CODE

user_input = nil

while user_input != "Q"
	puts "What would you like to do? (or 'q' to quit)"
	puts "Add\nDelete\nDisplay\nTest"
	user_input = gets.chomp.capitalize

	if user_input == "Q"
		puts "See you later!"
	elsif user_input == "Add"
		puts " "
		user_add_vocab(db)
		puts " "
	elsif user_input == "Delete"
		puts " "
		user_remove_vocab(db)
		puts " "
	elsif user_input == "Display"
		puts " "
		plain_display_vocab(db)
		puts " "
	elsif user_input == "Test"
		puts " "
		shuffle(db)
		puts " "
	else
		puts " "
		puts "I did not understand your command."
		puts " "
	end
end


