array = [24, 4, 6, 89, 2]


def search_array(array, num)

index = 0

array.each do |array_num|

if num == array_num
	puts "We found #{array_num} at #{index}!"
else
	puts "We didn't find your number at #{index}."
end

index += 1

end
end

search_array(array, 89)

# use length or each


# if num == array_num
# 	puts "We found #{array_num} at #{index}!"
# 	break
# end
# 	puts "nil"
# end