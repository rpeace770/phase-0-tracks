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