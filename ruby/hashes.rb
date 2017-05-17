#METHODS

client = {
	name: "",
	age: "",
	num_children: "",
	decor_theme: "",
	bedrooms: "",
	pets: "",
	laundry: ""
}

#DRIVER CODE
# clients name, age, number of children, decor theme, etc
# need strings, integers, and boolean data
# keys should be symbols UNLESS a string is needed
# prompt user for all information
# convert user input to appropriate data type

puts "What is your full name?"
client[:name] = gets.chomp

puts "What is your age?"
client[:age] = gets.chomp.to_i

puts "How many children do you have?"
client[:num_children] = gets.chomp.to_i

puts "What is your preferred decor theme?"
client[:decor_theme] = gets.chomp

puts "How many bedrooms do you need?"
client[:bedrooms] = gets.chomp.to_i

puts "Do you have a pet(s)?"
	answer = gets.chomp.downcase
		if answer == "yes"
			client[:pets] = true
		end
		if answer == "no"
			client[:pets] = false
		end

puts "Do you need a laundry room?"
	answer2 = gets.chomp.downcase
		if answer2 == "yes"
			client[:laundry] = true
		end
		if answer2 == "no"
			client[:laundry] = false
		end

#print hash to screen when all questions are answered
puts client

#give user opportunity to update a key, no loop, once is fine
#if designer says none, skip the update

puts "Please enter a key to update or type 'none'."
	user_input = gets.chomp.to_sym
puts "What is your new answer?"
	new_input = gets.chomp
	# client[user_input] = new_input

case user_input
when :age, :num_children, :bedrooms
	client[user_input] = new_input.to_i
when :pets, :laundry
	if new_input == "yes"
		client[user_input] = true
	else
		client[user_input] = false
	end
else
	client[user_input] = new_input
end

# #print latest hash and exit
puts client





