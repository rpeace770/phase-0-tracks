#var to keep loop going
continue_loop = true

while continue_loop

#ask for first name and break if user types quit
puts "What is your first name? (or 'quit' to exit)"
first_name = gets.chomp.downcase
	if first_name == "quit"
		break
	end

puts "What is your last name?"
last_name = gets.chomp.downcase

# store first and last name in array to reverse each word and join them back together
full_name = [first_name, last_name]
reverse_name = full_name.reverse!.join(" ")

#variables for vowels and consonants to index through
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"
i = 0
alias_name = ""

while i < reverse_name.length
	if consonants.include?(reverse_name[i]) == true
		consonant_num = consonants.index(reverse_name[i])
		alias_name[i] = consonants[(consonant_num + 1) % 21]
	elsif vowels.include?(reverse_name[i]) == true
		vowel_num = vowels.index(reverse_name[i])
		alias_name[i] = vowels[(vowel_num + 1) % 5]
	else
		alias_name[i] = " "
	end
	i += 1
end

new_name = alias_name.split(" ", 2)
puts "\nYour alias name is: " + new_name[0].capitalize + " " + new_name[1].capitalize

end
