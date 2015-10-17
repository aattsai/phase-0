# Your Names
# 1)Aaron Tsai
# 2)

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #A hash indicating the number of orders required to make one item

#  error_counter = 3
  if library.has_key?(item_to_make)
#    if library[food] != library[item_to_make]
#      p error_counter += -1
#  if error_counter > 0
#    serving_size = order_quantity / library.values_at(item_to_make)[0]
    leftover = order_quantity % library.values_at(item_to_make)[0]

  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#  end
  #Check if item_to_make is one of the items in the library.


  serving_size = library.fetch(item_to_make)
#  serving_size_mod = order_quantity % serving_size
  #Check the serving size required for the the item requested from the input.
  #Use % to find leftover

  case leftover
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    if leftover < 5
      suggested = "cookie"
    else
      suggested = "cake"
    end
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items: #{suggested}"
  end
  #returns the number of order made and leftover ingredient.
end

p serving_size_calc("pie", 6)
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
# =>I leanred that a simple problem can be solved in very convoluted ways, which makes it extremely difficult to read.
#Did you learn any new methods? What did you learn about them?
# => I learned that values_at returns an array.
#What did you learn about accessing data in hashes?
# => That it can be done really simply by using .fetch
#What concepts were solidified when working through this challenge?
#Nothing much. Just more practice on using methods to access hashes and arrays.

