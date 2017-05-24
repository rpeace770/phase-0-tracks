#SHOUT MODULE

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		"HA HA HA, " + words + "!!!"
	end
end

#DRIVER CODE

Shout.yell_angrily("NOOOOO")
Shout.yelling_happily("I'm soooo happy!")