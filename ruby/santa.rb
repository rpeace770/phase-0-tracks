class Santa

	def speak
		p "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def initialize
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

end

Nick = Santa.new(gender, ethnicity)

Nick.speak
Nick.eat_milk_and_cookies("oreo")