puts "What is your name?"
user_input = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

# need an array with all the answers?
interview = []
interview.push(user_input, age, year, garlic, insurance)
puts interview

# wolves_like_sunshine = true
# wolves_like_garlic = true
# vampires_like_sunshine = false
# vampires_like_garlic = false

# (ruby keyword for current year?)

# puts "How many employees will be processed?"
# process_num = gets.chomp.to_i
# count = 0

# loop for all employees
# while count < process_num

# case interview

# when (year - current_year == age) && (garlic == true || insurance == true)
# 	status = "Probably not a vampire."

# when (year - current_year != age) && (garlic == false || insurance == false)
# 	status = "Probably a vampire."

# when (year - current_year != age) && (garlic == false && insurance == false)
# 	status = "Almost certainly a vampire."

# when (name == "Drake Cula") || (name = "Tu Fang")
# 	status = "Definitely a vampire."

# #else statement????
# when 
# 	status = "Results inconclusive"

# end

# puts status

# end

