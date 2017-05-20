#SEARCH METHOD

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

# puts search_array(array, 89)
# puts search_array(array, 4)
# puts search_array(array, 25)

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

#INSERTION SORT

#take last two numbers of an array
#order them in new array
#take first number from original array
#puts in correct order in new array
#continue until all original numbers are in new array

original_array = [108, 13, 12, 7, 22, 96, 83]

def death_sort(array)
new_array = []
	
	last = array.pop
	secondlast = array.pop

	if last > secondlast
		new_array += [secondlast, last]
	else
		new_array += [last, secondlast]
	end

until array.length == 0
	sort_num = array[0]
	array.delete_at(0)
	i = 0
	lower = true

	while lower
		if sort_num > new_array[-1]
			new_array.insert(-1, sort_num)
			lower = false
		elsif sort_num > new_array[i]
			i += 1
		else
			new_array.insert(i, sort_num)
			lower = false
		end
	end
end
new_array

end

p death_sort(original_array)
























