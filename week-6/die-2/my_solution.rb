# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: An instance of the class Die which returns one of the strings from the input array at random.
# Steps:
=begin
  1. Initialize by defining the argument array as an instance variable.
  2. Determine the number of elements in the array in method sides using methods such as .size or .length
  3. Define method roll. Select and return the string of a random index from the array.
=end



# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Empty Array Supplied!")
    else
      @array = labels
    end
  end

  def sides
    @array.length
  end

  def roll
    @array.fetch(rand(@array.length))
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @array = labels
    raise ArgumentError.new("Empty Array Supplied!") if labels.empty?
  end

  def sides
    @array.length
  end

  def roll
    @array.fetch(rand(@array.length))
  end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of
implementation? Did you need to change much logic to get this to work?
  The main difference is that instead of an integer, this class takes array of strings as arguement. The logic remains fairly similar but the number of sides needed to be determined by finding out the size of the array.

What does this exercise teach you about making code that is easily changeable or modifiable?
  It shows that one can modify the processing functionality of a class without changing the structure of the class.
What new methods did you learn when working on this challenge, if any?
  I used fetch and empty? for the first time.

What concepts about classes were you able to solidify in this challenge?
  How to pass instance variables within a class.

=end