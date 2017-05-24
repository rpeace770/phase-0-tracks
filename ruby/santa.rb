class Santa

	def speak
		p "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

end

santas = []

genders = ["female", "transgender", "male", "agender", "N/A"]
ethnicities = ["Swedish", "Iranian", "Korean", "Norwegian", "N/A"]

i = 0
while i < genders.length
	santas << Santa.new(genders[i], ethnicities[i])
	i += 1
end

p santas













