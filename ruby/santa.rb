class Santa
	#getter methods
	attr_reader :age, :ethnicity
	#setter methods or just use accessor if you want to use same variable for setter and getter
	attr_accessor :gender, :age
	#attr_writer - only writing, not readable

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

	def celebrate_birthday
		p @age + 1
	end

	def get_mad_at(reindeer_name)
		#get index of reindeer name
		switch_index = @reindeer_ranking.index(reindeer_name)
		#delete the reindeer from the array
		@reindeer_ranking.delete_at(switch_index)
		#reassign reindeer to the end
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
		end

end

#empty array for new santas
santas = []
#arrays for random choosing
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["Swedish", "black", "Iranian", "Korean-American", "white", "Norwegian", "N/A"]

i = 0
while i < 100
	santas << Santa.new(genders.sample, ethnicities.sample)
	#choose random age for the new Santa
	santas[i].age = rand(140)
	#set to variables
	santa_age = santas[i].age
	santa_ethnicity = santas[i].ethnicity
	santa_gender = santas[i].gender
	#print out attributes
	puts "Age: #{santa_age}"
	puts "Ethnicity: #{santa_ethnicity}"
	puts "Gender: #{santa_gender}"
	#add a count to the loop
	i += 1
end

#TEST CODE

# Nick = Santa.new("male", "Latino")

# Nick.celebrate_birthday
# Nick.get_mad_at("Comet")
# Nick.gender = "female"
# p Nick
# p Nick.age
# p Nick.ethnicity







