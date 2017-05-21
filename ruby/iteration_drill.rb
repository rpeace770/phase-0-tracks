# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

# zombie_apocalypse_supplies.each { |item| print item + "*"}
# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

				new_array = []
				i = 0

				zombie_apocalypse_supplies.each do |item|

					if new_array == []
						new_array[0] = item.downcase
					elsif item > new_array[-1]
						new_array[-1] = item.downcase
					else
						new_array[i] = item.downcase
					end
					i += 1
				end

				p new_array

# sorted_supplies = []

# current_index = 0

# while current_index < 8
#   lowest = zombie_apocalypse_supplies[0]
#   current_index = 0
#   delete_index = 0

#   zombie_apocalypse_supplies.each do |supply|

#     if supply.downcase < lowest.downcase
#       lowest = supply
#       delete_index = current_index
#     end
#     current_index += 1
#   end

#   sorted_supplies << lowest
 
# end

# p sorted_supplies



# ----

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def search_array(array, item)
index = 0
packed = nil
array.each do |array_item|
	if item == array_item
		return packed = true
	else
		packed = false
	end
index += 1
end
packed
end


# puts search_array(zombie_apocalypse_supplies, "boots")
# puts search_array(zombie_apocalypse_supplies, "rations")
# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

new_array = []
i = 0

zombie_apocalypse_supplies.each do |item|
	if i < 5
		new_array[i] = item
		i += 1
	else
		nil
	end
end

# p new_array
# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

other_survivor_supplies.each { |new_item| zombie_apocalypse_supplies.push(new_item) }

updated_list = zombie_apocalypse_supplies.uniq
# puts updated_list

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each { |animal, year| print animal + "-" + year.to_s + "*"}

# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

extinct_animals.each do |animal, year|
	if year < 2000
		puts animal
	end
end

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals.each do |animal, year|
	extinct_animals[animal] = year - 3
end

p extinct_animals


# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

def search_hash(array, anim)
index = 0
extinct = nil
array.each do |animal, year|
	if anim == animal
		return extinct = true
	else
		extinct = false
	end
index += 1
end
extinct
end

puts search_hash(extinct_animals, "Andean Cat")
puts search_hash(extinct_animals, "Dodo")
puts search_hash(extinct_animals, "Saiga Antelope")

# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
extinct_animals.each do |animal, year|
		extinct_animals.shift
		if animal == "Pyrenean Ibex"
			p extinct_animals.shift
		end
end

# ----
