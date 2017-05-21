def alias_game()
	total_names = Hash.new
	play = true
while play
	puts "What is your full name?"
	original_name = gets.chomp
		break if original_name == "quit"

#variables for vowels and consonants to index through
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"
i = 0
#empty string to store alias
alias_name = ""

full_name = original_name.downcase

#index through vowels or consonants depending on where the letter is located
#use modulo operator to get remainders so that last letter goes to the first letter
#new letter is assigned to alias_name variable
while i < full_name.length
	if consonants.include?(full_name[i]) == true
		consonant_num = consonants.index(full_name[i])
		alias_name[i] = consonants[(consonant_num + 1) % 21]
	elsif vowels.include?(full_name[i]) == true
		vowel_num = vowels.index(full_name[i])
		alias_name[i] = vowels[(vowel_num + 1) % 5]
	else
		alias_name[i] = " "
	end
	i += 1
end
final_name = alias_name.split(" ").reverse
final_name.each { |word| word.capitalize!}
capitalized_name = final_name.join(" ")
puts capitalized_name

total_names[original_name] = capitalized_name

end

total_names.each do |ori_name, cap_name|
	puts "#{ori_name} is actually #{cap_name}."
end

end

alias_game()