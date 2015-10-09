# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Input is a random integer
# What is the output? (i.e. What should the code return?) Output is a string
# What are the steps needed to solve the problem?
# First I plan to convert the argument num into a string then reverse it. I will set an integer variable to be the length of the string divide by 3. Then I will insert a comma into the string after every 3 characters using a loop. Finally I will revert the string back again and return it.


# 1. Initial Solution

=begin
def separate_comma (num)
    rev_num = num.to_s.reverse
    count = rev_num.length/3.1
    for i in 1..count
      num = rev_num.insert(4*i-1, ",").reverse
    end
    return num
end

=end
# 2. Refactored Solution

def separate_comma(num)
  puts num.to_s.reverse.
#  return num.to_s.reverse.chars.each_slice(3).map {|x| x.join}.join(',').reverse
end

separate_comma(100)
separate_comma(1000)
separate_comma(10000)
separate_comma(100000)
separate_comma(1000000)
separate_comma(10000000)
separate_comma(100000000)

# 3. Reflection
