# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer as answer
# Output: for method guess, the output is a symbol. for method solved, output is boolean.
# Steps:
# 1. set an instance variable for answer
# 2. set an instance variable for guess
# 3. compare guess and answer and return the appropriate symbols
# 4. Set symbol as an instance variable and pass it to method solved?.
# 5. Use a final if/else statement to determine if number was guess correctly by returning either true or false.


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess (guess)
    @guess = guess
    if @answer > @guess
      @solve = :low
    elsif @answer == guess
      @solve = :correct
    elsif @answer < @guess
      @solve = :high
    end
  end

  def solved?
    if @solve == :correct
      return true
    else
      return false
    end
  end

end
=end
# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess (guess)
    if @answer > guess
      @solve = :low
    elsif @answer == guess
      @solve = :correct
    elsif @answer < guess
      @solve = :high
    end
  end

  def solved?
    @solve == :correct ? true : false
  end

end





# Reflection

#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# =>
#When should you use instance variables? What do they do for you?
# => When I need to pass the variables across methods within a class instance.
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Use if/else statements plus object comparison to assign variables with appropriate symbols in this case. No I had no trouble using it in this challenge.
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => Symbols faster to process. Also symbols are easy to look at and clear at what they represent.
