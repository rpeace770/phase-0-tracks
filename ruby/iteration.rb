def make_red
    puts "Red is the only color for cars"
    yield("corvette","lamburgini")
    puts "All the cars red!"
end

make_red { |car1, car2| puts "#{car1} is now red! #{car2} is also red!"}

#declare array and hash

fruits = ["apple", "banana", "pear", "grape", "orange"]

best_pie = {
	apple: "american",
	pumpkin: "best",
	cherry: "gross",
	buttermilk: "sweet"
}

# #iterate through array and hash

fruits.each { |fruit| puts "I'm holding a #{fruit}!" }

best_pie.each { |pie, feeling| puts "I feel like #{pie} pie is #{feeling}." }

# #iterate with map!
p fruits

fruits.map! do |fruit|
	fruit += " pie"
end

p fruits

#delete_if method

numbers = [1, 2, 3, 4, 5, 2]
p numbers
numbers.delete_if { |number| number < 3 }
p numbers

num_word = {
	one: 1,
	two: 2,
	three: 3, 
	four: 4,
	five: 5,
	zero: 0
}
p num_word
num_word.delete_if { |name, num| num < 3 }
p num_word

#keep_if method

p numbers
numbers.keep_if { |number| number < 3 }
p numbers

p num_word
num_word.keep_if { |name, num| num < 3 }
p num_word

#select! method

p numbers
numbers.select! { |number| number.even? }
p numbers

p num_word
num_word.select! { |name, num| num.even? }
p num_word

#drop_while method on hash

p num_word
new_array = num_word.to_a
new_hash = new_array.drop_while { |word, number| number < 3 }
final_hash = new_hash.to_h
p final_hash


#drop while method
p numbers
new_numbers = numbers.drop_while { |number| number < 4 }
p new_numbers




















