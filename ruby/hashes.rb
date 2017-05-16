# clients name, age, number of children, decor theme, etc
# need strings, integers, and boolean data
# keys should be symbols UNLESS a string is needed

#prompt user for all information

#convert user input to appropriate data type

#print hash to screen when all questions are answered

#give user opportunity to update a key, no loop, once is fine
#if designer says none, skip the update

#use string method to turn into a symbol

#no need for user errors

#print latest hash and exit

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
client[:pets] = gets.chomp

puts "Do you need a laundry room?"
client[:laundry] = gets.chomp

p client[:name]
p client[:age]
p client[:num_children]
p client[:decor_theme]
p client[:bedrooms]
p client[:pets]
p client[:laundry]










