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

#FIBONACCI SEQUENCE

def fibonacci(num)
  array = [0,1]

  if num == 0
    return []
  elsif num == 1
    return [0]
  end


  index_one = 0
  index_two = 1

  while array.length < num
    previous_one = array[index_one]
    previous_two = array[index_two]

    array.push(previous_one + previous_two)

    index_one += 1
    index_two += 1
  end

  array
end

## Automating fib(100) giant number test
# puts fibonacci(100).last == 218922995834555169026

## TESTING
# p fibonacci(0)
# p fibonacci(1)
# p fibonacci(6)