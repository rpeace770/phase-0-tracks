#allows sqlite3 gem
require 'sqlite3'

#creates new database
db = SQLite3::Database.new("flashcards.db")
# db.results_as_hash = true

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

#creates vocab list through user input
def user_add_vocab(db)
	user_word = nil
	while true
		plain_display_vocab(db)
		puts "What word would you like to insert? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			puts "What is the definition for #{user_word}?"
			user_def = gets.chomp.downcase
			#add new word and definition to table
			db.execute("INSERT INTO nursing (word, definition) VALUES (?, ?)", [user_word, user_def])
		else
			return
		end
	end
end

def word(db)
	plain_display_vocab(db)
	puts "What word would you like to change?"
	user_word = gets.chomp.capitalize
	puts "What is the new word?"
	new_word = gets.chomp.capitalize
	db.execute("UPDATE nursing SET word=? WHERE word=?", [new_word, user_word])
end

def definition(db)
	plain_display_vocab(db)
	puts "Which word's definition would you like to change?"
	old_word = gets.chomp.capitalize
	puts "What is the new definition for #{old_word}?"
	definition = gets.chomp
	db.execute("UPDATE nursing SET definition=? WHERE word=?", [definition, old_word])
end

def delete_all(db)
	db.execute("DELETE FROM nursing")
end

def user_remove_vocab(db)
	user_word = nil
	while true
		plain_display_vocab(db)
		puts "What word would you like to delete? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			db.execute("DELETE FROM nursing WHERE word=?", [user_word])
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

def shuffle(db)
	shuffle_list = db.execute("SELECT nursing.id, nursing.word, nursing.definition FROM nursing")
	shuffle_list.shuffle.each do |number, word, definition|
		puts "#{number}. #{word}"
		puts "What is the definition?"
		user_definition = gets.chomp
		puts "The real definition is: #{definition}"
		puts "Were you correct? (y/n)"
		re_quiz = gets.chomp
		db.execute("UPDATE nursing SET recognition=? WHERE id=?", [re_quiz, number])
		puts " "
	end
	display_vocab(db)
end

# print database information
# p db.execute("SELECT nursing.id, nursing.word, nursing.definition, nursing.recognition FROM nursing")

# DRIVER CODE

user_input = nil
while user_input != "Q"
	puts "What would you like to do? (or 'q' to quit)"
	puts "Add\nChange word\nChange definition\nDelete\nDelete all\nDisplay\nTest"
	user_input = gets.chomp.capitalize

	if user_input == "Q"
		puts "See you later!"
	elsif user_input == "Add"
		puts " "
		user_add_vocab(db)
		puts " "
	elsif user_input == "Change word"
		puts " "
		word(db)
		puts " "
	elsif user_input == "Change definition"
		puts " "
		definition(db)
		puts " "
	elsif user_input == "Delete"
		puts " "
		user_remove_vocab(db)
		puts " "
	elsif user_input == "Delete all"
		puts " "
		delete_all(db)
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


