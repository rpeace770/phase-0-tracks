puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster on a scale from 1 to 10? (10 being the loudest)"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur = gets.chomp

puts "Can this hamster be adopted? (y/n)"
adoption = gets.chomp

puts "What is the hamster's estimated age?"
age = gets.chomp

	if age == ""
		age = nil
	else
		age = gets.chomp.to_i
	end 



# Print the information about our hamster
puts "Animal Identification:"
puts "Hamster's name: #{name}"
puts "Hamster's volume level is #{sound}"
puts "Hamster's fur color is #{color}"
puts "Hamster's estimated age is #{age}"

# Identify is this hamster can be adopted
if adoption == "y" || adoption == "yes"
	puts "#{name} can be adopted."
else
	puts "#{name} cannot be adopted." # Interpolation
end