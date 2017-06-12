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

#creates vocab list through user input, loop for many additions
def user_add_vocab(db)
	user_word = nil
	while true
		#display without recognition column
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
	#update word in vocab list
	db.execute("UPDATE nursing SET word=? WHERE word=?", [new_word, user_word])
end

def definition(db)
	plain_display_vocab(db)
	puts "Which word's definition would you like to change?"
	old_word = gets.chomp.capitalize
	puts "What is the new definition for #{old_word}?"
	definition = gets.chomp
	#update definition in vocab list
	db.execute("UPDATE nursing SET definition=? WHERE word=?", [definition, old_word])
end

def delete_all(db)
	#delete all vocab words from list
	db.execute("DELETE FROM nursing")
end

def user_remove_vocab(db)
	#loop for mulitple deletions
	user_word = nil
	while true
		plain_display_vocab(db)
		puts "What word would you like to delete? (or done)"
		user_word = gets.chomp.capitalize
		if user_word != "Done"
			#remove one word at a time from list
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
	#display for review purposes
	list = db.execute("SELECT nursing.id, nursing.word, nursing.definition, nursing.recognition FROM nursing")
	list.each do |number, word, definition, recognition|
		puts "#{number}. #{word} - #{definition}"
		puts "Do you know this definition? - #{recognition}"
	end
end

def shuffle(db)
	#shuffle vocab words and test user on knowledge
	shuffle_list = db.execute("SELECT nursing.id, nursing.word, nursing.definition FROM nursing")
	shuffle_list.shuffle.each do |number, word, definition|
		puts "#{number}. #{word}"
		puts "What is the definition?"
		user_definition = gets.chomp
		puts "The real definition is: #{definition}"
		#self-check for understanding
		puts "Were you correct? (y/n)"
		re_quiz = gets.chomp
		db.execute("UPDATE nursing SET recognition=? WHERE id=?", [re_quiz, number])
		puts " "
	end
	display_vocab(db)
end

def shuffle_redo(db)
	#shuffle words that were not understood and test again
	shuffle_list = db.execute("SELECT nursing.id, nursing.word, nursing.definition FROM nursing WHERE recognition!='y'")
	shuffle_list.shuffle.each do |number, word, definition|
		puts "#{number}. #{word}"
		puts "What is the definition?"
		user_definition = gets.chomp
		puts "The real definition is: #{definition}"
		#self-check for understanding
		puts "Were you correct? (y/n)"
		re_quiz = gets.chomp
		db.execute("UPDATE nursing SET recognition=? WHERE id=?", [re_quiz, number])
		puts " "
	end
	display_vocab(db)
		#message to user if they know all the words
		if shuffle_list.empty? == true
			puts "You do not have any words to study!\n"
		end
end

# print database information
# p db.execute("SELECT nursing.id, nursing.word, nursing.definition, nursing.recognition FROM nursing")

# DRIVER CODE

user_input = nil
while user_input != "Q"
	puts "What would you like to do? (or 'q' to quit)"
	puts "Add\nChange word\nChange definition\nDelete\nDelete all\nDisplay\nTest\nTest redo"
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
	elsif user_input == "Test redo"
		puts " "
		shuffle_redo(db)
		puts " "
	else
		puts " "
		puts "I did not understand your command."
		puts " "
	end
end


