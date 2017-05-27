class Game
	#no reason to change word during the game
	attr_reader :word
	#set word for the game
	def initialize(word)
		@word = word
	end
	#display set up for multiple letters
	def display_word(display, word, letter)
		i = 0
		word.each_char do |char|
			if char == letter
				display[i] = letter
			end
			i += 1
		end
		p display
	end
	#display message at end of game
	def result(display)
	if display.include?("-")
		p "You lose! The word was #{@word}."
	else
		p "You win!"
	end
end

end

#DRIVER CODE

puts "Please enter a secret word:"
secret_word = gets.chomp.downcase
#start with all dashes for the secret word
display = "-" * secret_word.length
#initialize new game
new_game = Game.new(secret_word)
p display
#array to hold guessed letters
letter_array = []
#loop to continue guessing letters until loop stops or complete word is guessed
i = 0
while i < secret_word.length
	break if display.include?("-") == false
	puts "Guess a letter:"
	letter = gets.chomp.downcase
		#check to see if user already guessed the letter
		if letter_array.include?(letter) == false
			letter_array << letter
			new_game.display_word(display, secret_word, letter)
			i += 1
		else
			puts "You already guessed that letter!"
			p display
		end
end
#print result
new_game.result(display)


