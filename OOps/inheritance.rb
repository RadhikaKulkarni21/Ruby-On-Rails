class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

#method Override
class Lanes
  def initialize(name)
    @name = name
  end
  
  def fight
    return "4 different lanes"
  end
end

# Add your code below!
class botlane < Lanes
  def fight
    return "Gumayusi is the best ADC"
    end
end