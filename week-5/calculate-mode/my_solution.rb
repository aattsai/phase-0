# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Eric Freeburg]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin
0. Pseudocode
What is the input?
an array

What is the output? (i.e. What should the code return?)
an array (new_array)

What are the steps needed to solve the problem?

iterate thru the array (into a frequency)
  assign each element as key
  use counter to keep track of frequency
return hash with key value pairs. setting a variable as high_num. iterate through frequency and if the value equals or larger than high_num, high_num becomes that value. Then we iterate through the hash again and assign key to a new array for every value that equals to high_num.


=end

# 1. Initial Solution

def mode(array)
  frequency = Hash.new(0)
  new_array = []

  array.each do | x |
    frequency[x] += 1
  end

  high_num = 0
  frequency.each do | key, value |
    if value >= high_num
      high_num = value
    end
  end

  frequency.each do | key, value |
    if value == high_num
      new_array << key
    end
  end
  return new_array
end


# 3. Refactored Solution
def mode(array)
  frequency = Hash.new(0)
  new_array = []

  array.each { |x| frequency[x] += 1 }

  high_num = frequency.values.max

  frequency.each { |key, value|
    new_array << key if value == high_num }

  return new_array
end



# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
  We decided to use Hash because it allowed us to store frequency of appearance of each array element as its value.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  We were able to break this problem down and figure out what we needed to do to get the solution. However we both found it difficult to write pseudocode of solution before trying to code.
What issues/successes did you run into when translating your pseudocode to code?
  The issue was mostly the difficulty of writing out pseudocode before attempting at the program with actual code. I found that when I write code my head is already trying to adjust to the programming logic, so it becomes difficult to write pseudocode
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  We used .new to create a hash, .each to iterate through array. To refactor, we used .max and .value to find the value with highest frequency. It was a little difficult to implement in the beginning, but once it is working, it just looks so simple.
=end