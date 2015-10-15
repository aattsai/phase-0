# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#p number_array.flatten.map {|x| x.to_i + 5 }

number_array.map! {|element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5 }
  else
    element + 5
  end }
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|element|
  if element.kind_of?(Array)
    element.map! {|inner|
      if inner.kind_of?(Array)
        inner.map! {|final| final + "ly"}
      else
        inner + "ly"
      end }
  else
    element + "ly"
  end }

p startup_names

#Reflection
#What are some general rules you can apply to nested arrays?
# => Use multiple brackets to access to multiple layers of arrays.
#What are some ways you can iterate over nested arrays?
# => using an if else statement to check. or use method flatten.
#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => Both. We started by using flatten but since it destroys the structure, in the end we used if else statements to iterate deeper into the arrays.

