class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
		puts "Woof" * integer
	end

	def roll_over()
		puts "Roll over"
	end

	def dog_years(human_years)
		#convert human years to dog years
		p human_years / 7.0
	end

	def shake()
		puts "Shake"
	end

	def initialize()
		puts "Initializing new puppy instance..."
	end

end

#DRIVER CODE

#intialize instance of Puppy
#fetch a ball

Rufus = Puppy.new

Rufus.fetch("ball")

Rufus.speak(3)

Rufus.roll_over

Rufus.dog_years(30)

Rufus.shake

#BEER CLASS

class Beer

  def initialize()
   "crack open a brewski"
  end

  def brew(type)
    puts "your #{type} has brewed for three months"
  end

  def drink(number)
    count = 1
    until count == number
	   	puts "you drank #{count} beers"
	   	count += 1
    end
  end

end
#TEST CODE

# ipa = Beer.new

# p ipa.brew("Fist City")

# p ipa.drink(4)

drinks = []

count = 0
while count < 50
  ale = Beer.new
  drinks << ale
  count += 1
end

drinks.each do |pint|
	pint.brew("sour")
 	pint.drink(2)
end










