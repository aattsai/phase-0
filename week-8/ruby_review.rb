# I worked on this challenge [by myself].
# This challenge took me 1 hours.


# Pseudocode
# 1. Iterate through the input array.
# 2. Use an if/else statement to substitute number as "Fizz" when it is multiple of 3. Check it by using a modulus equation.
# 3. Use an if/else statement to substitute number as "Buzz" when it is multiple of 3. Check it by using a modulus equation.
# 4. 2. Use an if/else statement to substitute number as "FizzBuzz" when it is multiple of 3 and 5 by using a && and check by using a modulus equation.
# 5. Make sure the array is modified and return the modified array.


# Initial Solution

def super_fizzbuzz(array)
  buzz_array = []
  array.each do |x|
    if x % 3 == 0 && x % 5 != 0
      buzz_array.push("Fizz")
    elsif x % 3 != 0 && x % 5 == 0
      buzz_array.push("Buzz")
    elsif x % 3 == 0 && x % 5 == 0
      buzz_array.push("FizzBuzz")
    else
      buzz_array.push(x)
    end
  end
  p buzz_array
end

#super_fizzbuzz([30, 9, 11, 5, 2, 1, 15])

# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 3 == 0 && x % 5 != 0
      x = "Fizz"
    elsif x % 3 != 0 && x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0 && x % 5 == 0
      x = "FizzBuzz"
    else
      x
    end
  end
  p array
end

#super_fizzbuzz([30, 9, 11, 5, 2, 1, 15])




# Reflection

# What concepts did you review or learn in this challenge?
#   I reviewed on array iteration and replacing element within an array using
#   two methods, one with creating an alternative array to store informaiton,
#   the other by using map! method.
# What is still confusing to you about Ruby?
#   Not really confused Ruby. But it took me sometime to remember how to do
#   certain things such as different applying methods.
# What are you going to study to get more prepared for Phase 1?
#   I will work on more challenges when I have time. Also I plan to consolidate
#   and review for concepts as I make my cheat sheet.