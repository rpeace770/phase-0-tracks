array = [24, 4, 6, 89, 2]

def search_array(array, num)

index = 0
variable = nil

array.each do |array_num|

	if num == array_num
		variable = index
	end

index += 1
end

variable
end

puts search_array(array, 89)
puts search_array(array, 4)
puts search_array(array, 25)

# ran this line to make sure the value was nil
# puts search_array(array, 25).nil?
