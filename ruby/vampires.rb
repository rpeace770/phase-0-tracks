puts "How many employees will be processed?"
process_num = gets.chomp.to_i
count = 0

while count < process_num
	count += 1

	puts "What is your name?"
	user_input = gets.chomp

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

# need an array with all the answers?
# interview = []
# interview.push(user_input, age, year, garlic, insurance)
# puts interview


	if (2017 - year == age) && (garlic == true || health == true)
		status = "Probably not a vampire."
	end

	if (2017 - year != age) && (garlic == false || health == false)
		status = "Probably a vampire."
	end

	if (2017 - year != age) && (garlic == false && health == false)
		status = "Almost certainly a vampire."
	end

	if (user_input == "Drake Cula") || (user_input == "Tu Fang")
		status = "Definitely a vampire."
	end

	if status == nil
		status = "Results inconclusive"
	end

puts "#{status}"
puts ""

end
