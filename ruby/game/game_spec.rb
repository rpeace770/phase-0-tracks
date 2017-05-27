#player one enters a word
#display hangman word
#player two guesses a letter
#if letter is correct display hangman word with letter
#if not display previous hangman word
#guesses are limited and related to the length of the word
#repeated guesses do not count agains the user
#guesser receives continual feedback on the current state of the word, like hangman
#congratulatory message if they win, taunting message if they lose

require_re

describe Game do
	let(:word) { Game.new("hello")}

	it "stores the word for player 2 to guess" do
		expect(word.initialize).to eq word
	end

end