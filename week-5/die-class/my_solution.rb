# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: a positive integer representing number of sides on a die
# Output: call method sides to get the number of sides on the die. Method roll to get a random number less than the number of sides.
# Steps:
# I will first take the argument from initialize and store it as a instance variable.
#Then I will let method sides return the stored instance variable.
#Finally I will use a class method rand to return a number less than the number of sides specified.

# 1. Initial Solution


class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Positive number only!")
    end

    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(@sides) + 1
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
     raise ArgumentError.new("Positive number only!") unless sides > 0
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end


# 4. Reflection

#What is an ArgumentError and why would you use one?
# => ArgumentError is a warning raised when the arguments are wrong or not acceptable by the method
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I used method rand. One challenge I had was that method rand counts from 0. So I needed to add 1 to it to return 1-sides
#What is a Ruby class?
# => A Ruby class is a blue print from which individual objects are created.
#Why would you use a Ruby class?
# => To create an object with functionalities.
#What is the difference between a local variable and an instance variable?
# => A local variable can only be accessed locally within a method. While an instance variable can be accessed across methods in an instance or object.
#Where can an instance variable be used?
# => Anywhere within the same instance or object.