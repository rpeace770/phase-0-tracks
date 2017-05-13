# def encrypt method
# loop through each letter and change to the next letter
# leave spaces as they are

#OUR DEFINED METHODS

def encrypt(lowercase_string)
  index = 0
  length = lowercase_string.length
  encrypted_string = ""

  while index < length
    if lowercase_string[index] == " "
      encrypted_string[index] = " "
    else
      encrypted_string[index] = lowercase_string[index].next
    end
    index += 1
  end
  encrypted_string
end

#def decrypt method
# reverse the encrypt method
# get a string
# go back one letter for each letter
# leave spaces as they are

def decrypt(lowercase_string)
	index = 0
	length = lowercase_string.length
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	decrypted_string = ""

	while index < length
		if lowercase_string[index] == " "
			decrypted_string[index] = " "
		else

			alpha_index = alphabet.index(lowercase_string[index]) - 1
			decrypted_string[index] = alphabet[alpha_index]

			# other option for method
			# prev_letter = alphabet[alphabet.index(lowercase_string[index]) - 1]
			# decrypted_string[index] = prev_letter

		end
		index += 1
	end
		decrypted_string
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# The nested method works because the encrypt method encrypts the string. Then, the new string is applied to the decrypt method and decrypts back to the original string.
# Works like PEMDAS, order of operations, but with methods

# OUR DRIVER CODE

puts "Would you like to encrypt or decrypt?"
decision = gets.chomp

puts "What is your password?"
password = gets.chomp

if decision == "encrypt"
	puts "Your encrypted password is #{encrypt(password)}."
elsif decision == "decrypt"
	puts "Your decrypted password is #{decrypt(password)}."
end
