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


def separate_comma (num)
    rev_num = num.to_s.reverse
    count = rev_num.length/3.1
    for i in 1..count
      num = rev_num.insert(4*i-1, ",").reverse
    end
    num
end

# 2. Refactored Solution

def separate_comma(num)
  num.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
# => Initially I wanted to add comma to num based on the length of the string num using if else. But I would have to create infinite number of elsif to cover infinite length of num. So I thought it was a bad idea.
#Was your pseudocode effective in helping you build a successful initial solution?
# => In this instance it was not effective. I had to try it a few times with code to figure out the solution.
#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# => I used .scan and regular expression to group the string in 3's and whatever remains. I found it difficult to implement at first because Ruby doc does not specify how to use regular expression. But I was able to find out how it works through nearly one hour of research. It significant'y reduce the length of my code.
#How did you initially iterate through the data structure?
# => I used a for loop
#Do you feel your refactored solution is more readable than your initial solution? Why?
# => It is much more readable if one understands how regular expression and each method works. I would say now that I get it, it is a lot more readable.