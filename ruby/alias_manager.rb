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
#empty string to store alias
alias_name = ""

#index through vowels or consonants depending on where the letter is located
#use modulo operator to get remainders so that last letter goes to the first letter
#new letter is assigned to alias_name variable
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

#split alias_name string into two words to capitalize each word
split_name = alias_name.split(" ", 2)
new_name = split_name[0].capitalize + " " + split_name[1].capitalize
puts "\nYour alias name is " + new_name + ".\n"

end
