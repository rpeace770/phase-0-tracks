class Santa

	def speak
		p "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def initialize
		p "Initializing Santa instance..."
	end

end

Nick = Santa.new

Nick.speak
Nick.eat_milk_and_cookies("oreo")