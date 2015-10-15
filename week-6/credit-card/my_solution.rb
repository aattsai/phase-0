# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Jack Huang].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: True/false
# Steps:
# 1. Split up integer and put each integer into a single array
# 2. Iterate through the array and double every other integer using a counter.
# 3. Break apart double digits for anything greater than 9, split and add, otherwise just add
# 4. check the sum to see if it is divisible by 10, if so then return true. Otherwise return false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize (num)
    @num = num
    raise ArgumentError if num.to_s.length != 16
  end

  def check_card
    num_array = []
    num_array = @num.to_s.split(//)
    counter = 2
    num_array.map! do |n|
      if counter % 2 == 0
        n = n.to_i * 2
      else
        n
     end
      counter += 1
      n
    end
    p num_array
    sum = 0
    num_array.map! do |num|
      if num.to_i < 10
        sum += num.to_i
      else
        over_9 = num.to_s.split(//)
        sum += (over_9[0].to_i + over_9[1].to_i)
      end
    end
    p num_array

    if sum % 10 == 0
      true
    else
      false
    end
  end

end

# Refactored Solution

class CreditCard

  def initialize (num)
    @num = num
    raise ArgumentError if num.to_s.length != 16
  end

  def check_card
    @num_array = @num.to_s.split(//)
    double_every_other
    split_over_10_then_add
    @sum % 10 == 0 ? true : false
  end

  def double_every_other
    counter = 2
    @num_array.map! { |n|
      n = n.to_i * 2 if (counter % 2 == 0)
      counter += 1
      n }
  end

  def split_over_10_then_add
    @sum = 0
    @num_array.map! do |num|
      if num.to_i < 10
        @sum += num.to_i
      else
        over_9 = num.to_s.split(//)
        @sum += (over_9[0].to_i + over_9[1].to_i)
      end
    end
  end
end


# Reflection

#What was the most difficult part of this challenge for you and your pair?
# => The most difficult part was to find where the bug was located. Once we were able to pinpoint the location of the bug, it was relatively easy to solve the rest.
#What new methods did you find to help you when you refactored?
# => We created new methods to organize the program better.
#What concepts or learnings were you able to solidify in this challenge?
#Modifying elements of an array while iterating through it.