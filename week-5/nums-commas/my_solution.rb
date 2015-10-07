# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#Define the separate_comma method that takes in an integer as parameter, num.
#First I will check the num as integer.
#Then I will convert num into a string. I will check the length of the string. If the length is less than 4 than I will return the string as is. If the length is greater than 4, I will insert a comma in the length minus 3 position


# 1. Initial Solution

def separate_comma (num)
  num_str = num.to_s
  if num_str.length < 4
    puts num_str
  elsif num_str.length < 7 && num_str.length > 3
    puts num_str.insert(-4, ",")
  elsif num_str.length < 11 && num_str.length > 6
    num_str = num_str.insert(-4, ",")
    puts num_str.insert(-8, ",")
  elsif num_str.length < 15 && num_str.length > 10
    num_str = num_str.insert(-4, ",")
    num_str = num_str.insert(-8, ",")
    puts num_str.insert(-12, ",")
  end
end



# 2. Refactored Solution




# 3. Reflection
