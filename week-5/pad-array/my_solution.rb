# Pad an Array

# I worked on this challenge [by myself, with: Bruno Zatta]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, an integer value, if the value is given, it will be a string, or it will be just nil
# What is the output? (i.e. What should the code return?)an array with the size of the provided integer value.
# What are the steps needed to solve the problem?
#Finding out the difference between the size of array and the minimum size provided. Use an if/else statement to determine whether or not we need to add value to array. Then return the new array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size < array.size
    return array
  else
    (min_size - array.size).times do
      array.push(value)
    end
    return array
  end

end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  array.each do |n|
    new_array << n
  end

  if min_size < new_array.size
    return new_array
  else
    (min_size - new_array.size).times do
      new_array.push(value)
    end
    return new_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  min_size < array.size ? array : (min_size - array.size).times     {array.push(value)}
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|n| new_array << n }

  min_size < new_array.size ? new_array : (min_size - new_array.size).times {new_array.push(value)}
  new_array

end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#  Yes, we were able to organize our thoughts by breaking down the problem.
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#  The translation from pseudocode to our initial code was quite smooth. We did face some difficultites in the non-distructive method when we defined a new array variable.
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#  Initially we didn't pass the test for non-distructive method. It seems like by simply assigning a new array variable to the original array does not carry over the content the way we wanted. We had to use a .each method to put put the array content in after we define the variable array.
#When you refactored, did you find any existing methods in Ruby to clean up your code?
#  Not so much finding existing methods in Ruby but more so organizing in different ways to reduce the number of lines in our code.
#How readable is your solution? Did you and your pair choose descriptive variable names?
#  I think our solution is very readable. And yes, I think our variable names are descriptive.
#What is the difference between destructive and non-destructive methods in your own words?
#  destructive methods makes modification on the original object and changes it for good. Whereas non-destructive methods takes a copy of the object and make modification on the copy without directly affecting the original object.