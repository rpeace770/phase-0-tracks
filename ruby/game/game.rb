class Game

	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def print_word
		p @word
	end

end