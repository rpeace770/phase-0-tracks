# user input for name
# swap first and last name
# change all vowels to next vowel (aeiou)
# change all consonants to next consonant

#METHODS

#reverse name

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

full_name = [first_name, last_name]
reverse_name = full_name.reverse!.join(" ")
puts reverse_name

# next vowel

vowels = ["a", "e", "i", "o", "u"]
index = 0

while index < reverse_name.length
		new_vowel_index = vowels.index(user_vowel) + 1
		new_vowel = vowels[new_vowel_index]
end
puts new_vowel

# #put in e
# #add one to index
# #get next vowel in return