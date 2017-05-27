class Game

	attr_reader :word

	def initialize(word)
		@word = word
	end

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
display = "-" * secret_word.length

new_game = Game.new(secret_word)
p display

letter_array = []

i = 0
while i < secret_word.length
	break if display.include?("-") == false
	puts "Guess a letter:"
	letter = gets.chomp.downcase
		if letter_array.include?(letter) == false
			letter_array << letter
			new_game.display_word(display, secret_word, letter)
			i += 1
		else
			puts "You already guessed that letter!"
			p display
		end
end

new_game.result(display)


