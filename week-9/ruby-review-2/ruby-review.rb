
# Create a Car Class from User Stories


# I worked on this challenge [with: Daniel Woznicki].


# 2. Pseudocode
# Create car class with multiple methods
# Define initialize
#   Pass in 2 arguments, model and color as instance variables
#   Output: model and color
# Define method drive
#   Takes argument target_distance, a float
#   Output: target_distance
# Define method change_speed
#   Takes argument speed_limit, an integer
#   IF speed_limit == 0
#     Output: stop
#   End
#   Output: speed_limit
# Define method turn
#   Takes argument left or right
#   Output: turned left/right
# Define method total_distance
#   Output: sum of target_distances



# 3. Initial Solution
class Car
  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @compartment = []
  end

  def drive (target_distance)
    @target_distance = target_distance
    puts "Drive #{target_distance} miles (speed limit is #{@speed_limit} mph)"
    @total_distance += target_distance
  end

  def speed_limit(number)
    @speed_limit = number
  end

  def change_speed(speed_limit)
    puts "You are driving at #{speed_limit} mph"
  end

  def check_speed
    puts "You are driving at #{@speed_limit} mph"
  end

  def turn (direction)
    @direction = direction
    if @direction == "left" || @direction == "right"
      puts "At the stop sign, turn #{@direction}"
    end
  end

  def pizza (type)
    @compartment.push(type)
  end

  def destination
    puts "Arrived! You have travelled #{@total_distance} miles. Deliever #{@compartment[0]}"
    @compartment.shift
  end

end

class Pizza

  def initialize(type, size)
    @type = type
    @size = size
  end

  def add_ingredient(ingredient)
    @ingredient = ingredient
  end

  def special(request)
    @request = request
  end

  def print
    puts "You ordered a #{@size} inch #{@type} pizza with #{@ingredient}. #{@request}"
  end

end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
new_car = Car.new("Infiniti", "black")
new_car.pizza("pepperoni")
new_car.pizza("cheese")
new_car.pizza("meat lover")
new_car.speed_limit(25)
new_car.drive(0.25)
new_car.turn("right")
new_car.check_speed
new_car.change_speed(15)
new_car.speed_limit(15)
new_car.drive(0.25)
new_car.turn("left")
new_car.speed_limit(35)
new_car.drive(1.4)
new_car.destination

new_pizza = Pizza.new("meat lover", 8)
new_pizza.add_ingredient("mushrooms")
new_pizza.special("Extra meat")
new_pizza.print


# # 5. Reflection
# What concepts did you review in this challenge?
#   How to create a class and methods within the class based on the user stoeis given.
# What is still confusing to you about Ruby?
#   Not sure how to make two classes interact with each other yet
# What are you going to study to get more prepared for Phase 1?
#   Composition. And I will work on the rest of Ruby challenges.