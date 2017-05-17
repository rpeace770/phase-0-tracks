# def make_red
#     puts "Red is the only color for cars"
#     yield("corvette","lamburgini")
#     puts "All the cars red!"
# end

# make_red { |car1, car2| puts "#{car1} is now red! #{car2} is also red!"}

#declare array and hash

# fruits = ["apple", "banana", "pear", "grape", "orange"]

# best_pie = {
# 	apple: "american",
# 	pumpkin: "best",
# 	cherry: "gross",
# 	buttermilk: "sweet"
# }

# #iterate through array and hash

# fruits.each { |fruit| puts "I'm holding a #{fruit}!" }

# best_pie.each { |pie, feeling| puts "I feel like #{pie} pie is #{feeling}." }

# #iterate with map!
# p fruits

# fruits.map! do |fruit|
# 	fruit += " pie"
# end

# p fruits

numbers = [1, 2, 3, 4, 5]
p numbers
numbers.delete_if { |number| number < 3 }
p numbers

num_word = {
	one: 1,
	two: 2,
	three: 3, 
	four: 4,
	five: 5
}

p num_word

num_word.delete_if { |name, num| num < 3 }

p num_word






























