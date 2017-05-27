#player one enters a word
#display hangman word
#player two guesses a letter
#if letter is correct display hangman word with letter
#if not display previous hangman word
#guesses are limited and related to the length of the word
#repeated guesses do not count agains the user
#guesser receives continual feedback on the current state of the word, like hangman
#congratulatory message if they win, taunting message if they lose

require_relative 'game'

describe Game do
	let(:word) { Game.new("hello") }

	it "displays the secret word in dashes" do
		expect(word.initial_display).to eq "-----"
	end

	it "displays letters when the user guesses correctly" do
		expect(word.display("-----", "hello", "e")).to eq "-e---"
	end

	it "congratulates the user if they win" do
		expect(word.result("hello")).to eq "You win!"
	end

	it "taunts the user if they lose" do
		expect(word.result("h-llo")).to eq "You lose!"
	end

end