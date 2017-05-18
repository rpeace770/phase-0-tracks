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
index = 0
alias_name = ""

while index < reverse_name.length
		if reverse_name[index].include?("a")
			new_vowel_index = vowels.index(reverse_name[index]) + 1
			alias_name[index] = vowels[new_vowel_index]
		else
			# new_consonant_index = consonants.index(reverse_name[index]) + 1
			# alias_name[index] = consonants[new_consonant_index]
			alias_name[index] = "n"
		end
		index += 1
end
puts alias_name

# #put in e
# #add one to index
# #get next vowel in return