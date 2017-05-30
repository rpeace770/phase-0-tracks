# Virus Predictor

# I worked on this challenge [with: Neal Peters].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
#require_relative pulls in information from a file due to its relative path. state_data.rb is in the same directory, so we can just write the title of the file.
#
require_relative 'state_data'

class VirusPredictor

  #defines new instance with variables from parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calling predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #calculating number_of_deaths for the state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #calculating how fast the virus will spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, pop_stats|
  report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  report.virus_effects
 end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  #One is a hash rocket and the other is a symbol. The hash rocket allows the key to be written as a string, while the symbol does not.
# What does require_relative do? How is it different from require?
  #require_relative pulls in information from a specific file and require pulls in information through the pathway to the file
# What are some ways to iterate through a hash?
  #You can iterate through a hash using the .each method and calling each key.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #The variables were instance variables that did not need to be passed in as parameters.
# What concept did you most solidify in this challenge?
  #I feel stronger about calling and iterating through a hash that has another hash as the value.









