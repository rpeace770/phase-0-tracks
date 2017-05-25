# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a blank hash
  # use split method into individual strings
  # add each word as the key
  # set default quantity as the value
  # print the list to the console
  # use print method here
# output: hash of items with quantities
def create_list(list)
  grocery_list = {}
  list.split(" ").each do |item|
    grocery_list[item] = 1
  end
  p grocery_list #will later add the last method to this line
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  #list will be hash used from previous method
  #item names will be hash keys
  #quantities will be hash values as integers
# output: updated hash
def add_item(list,item,quantity=1)
  list[item] = quantity
end

# Method to remove an item from the list
# input: list, item
# steps:
  #delete item
# output: updated hash

def delete_item(list,item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
  #find the item in the list
  #assign a new value to the item
# output: updated hash

def update_item(list,item,quantity)
  list[item] = quantity
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # Loop through the hash
  # Print out each key and value in a statement
# output: Statement about each key and value

def pretty_list(list)
  list.each do |item,quantity|
    p "#{item}! You have #{quantity}."
  end
end

=begin
grocery_list = create_list("apples oranges pears olives")
p grocery_list
add_item(grocery_list,"grapes")
p grocery_list
add_item(grocery_list,"banana-tequila",3)
p grocery_list
delete_item(grocery_list,"banana-tequila")
p grocery_list
update_item(grocery_list,"grapes",40)
p grocery_list
pretty_list(grocery_list)
p grocery_list
=end

new_list = create_list("Limeade Syrup Crest")
p new_list
add_item(new_list, "Lemonade",2)
add_item(new_list, "Tomatoes",3)
add_item(new_list, "Onions")
add_item(new_list, "Ice Cream",4)
p new_list
delete_item(new_list, "Lemonade")
p new_list
update_item(new_list, "Ice Cream",1)
p new_list
pretty_list(new_list)

#REFLECTION
=begin
What did you learn about pseudocode from working on this challenge?
	I learned that it makes it so much easier to write code if you have a detailed plan in place. I have not been planning entire blocks of code and instead writing step by step in psuedocode. I will definitely be writing more psuedocode!
What are the tradeoffs of using arrays and hashes for this challenge?
	I like working with hashes if you have two different values to work with. Arrays are excellent for listing the same type of items. Arrays are easier to iterate through because you can use index numbers and you can easily switch items around. Hashes are easier if your data needs to be labeled and accessed that way.
What does a method return?
	A method returns the last evaluated expression in the code.
What kind of things can you pass into methods as arguments?
	You can pass strings, integers, arrays, and hashes as arguments.
How can you pass information between methods?
	You can take the return value from one method and pass it to the next method.
What concepts were solidified in this challenge, and what concepts are still confusing?
	My concepts on creating methods and using methods for arrays and hashes were solidified. I definitely have a better understanding of return values and "puts" now. I am still putting together all the concepts that I learned last week with the concepts I learned this week. Sometimes, it takes me a second to truly understand the task at hand and what I need to do to accomplish that task.
=end




