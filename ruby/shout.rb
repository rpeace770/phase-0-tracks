#SHOUT MODULE

# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		"HA HA HA, " + words + "!!!"
# 	end
# end

module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yelling_happily(words)
		puts "HA HA HA, " + words + "!!!"
	end
end

class Cheerleader
	include Shout
end

class DrillSergeant
	include Shout
end

#DRIVER CODE

# Shout.yell_angrily("NOOOOO")
# Shout.yelling_happily("I'm soooo happy!")

cheerleader = Cheerleader.new
cheerleader.yelling_happily("Go Team")
cheerleader.yell_angrily("We lost")

drill = DrillSergeant.new
drill.yelling_happily("Move")
drill.yell_angrily("Move")







