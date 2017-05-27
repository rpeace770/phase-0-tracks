class Game

	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def initial_display
		display = "-" * @word.length
		p display
	end

	def display(display, word, letter)
	correct_guess = word.index(letter)
		if correct_guess != nil
			display[correct_guess] = letter
			p display
		else
			p display
		end
	end

	def result(display)
	if display.include?("-")
		p "You lose!"
	else
		p "You win!"
	end
end

end

