# interview program

puts "How many employees will be processed?"
process_num = gets.chomp.to_i
count = 0

#loop for multiple employee survery

while count < process_num
	count += 1
	status = nil

	puts "What is your name?"
	user_input = gets.chomp.downcase

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	answer = gets.chomp.downcase

		if answer == "y"
			garlic = true
		else
			garlic = false
		end

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	answer2 = gets.chomp.downcase

		if answer2 == "y"
			health = true
		else
			health = false
		end

# status decision
# LOOK HERE!!!!!!!!!!!!!! Keep the break, but start the loop over from the beginning for multiple employees

	if (2017 - year == age) && (garlic == true || health == true)
		status = "Probably not a vampire."
	end

	if (2017 - year != age) && (garlic == false || health == false)
		status = "Probably a vampire."
	end

	if (2017 - year != age) && (garlic == false && health == false)
		status = "Almost certainly a vampire."
	end

	if (user_input == "drake cula") || (user_input == "tu fang")
		status = "Definitely a vampire."
	end

	if status == nil
		status = "Results inconclusive"
	end

puts "Do you have any allergies?"

# loop for list of allergies

	var = true
	while var == true

		puts "Please list one allergy at a time. Write 'done' when finished."
		allergy = gets.chomp

			if allergy == "sunshine"
				status = "Probably a vampire"
				var = false
			elsif allergy == "done"
				var = false
			else
				puts "Any other allergies?"
			end
	end

puts ""
puts "#{status}"
puts ""

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


