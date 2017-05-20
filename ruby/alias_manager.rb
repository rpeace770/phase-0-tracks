# user input for name
# swap first and last name
# change all vowels to next vowel (aeiou)
# change all consonants to next consonant

#METHODS

#reverse name

puts "What is your first name?"
first_name = gets.chomp.downcase

puts "What is your last name?"
last_name = gets.chomp.downcase

full_name = [first_name, last_name]
reverse_name = full_name.reverse!.join(" ")
puts reverse_name

# next vowel

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
p new_name[0].capitalize + " " + new_name[1].capitalize
# p alias_name.capitalize






