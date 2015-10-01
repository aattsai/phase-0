# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ]. Chris Savage

# 0. total Pseudocode
# make sure all pseudocode is commented out!
#sum = 0. Then take the number from array, add each value to sum then return the sum.
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
def total (arr)
  sum = 0
  for i in 0...arr.length
    sum = sum + arr[i]
  end
  return sum
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
#Create a variable called sentence, define it as a string. Then set the variable to the element from the array from the first position and capitalize it. Then add a space to it. Add the next element on the array to it with a loop.Iterate till the second to last position of the array. Return sentence while adding the last element of the array plus a period.

# 5. sentence_maker initial solution

def sentence_maker (arr)
  sentence = ""
  arr[0] = arr[0].capitalize
  for i in 0...arr.length-1
    sentence = sentence + arr[i].to_s + " "
  end
  return sentence + arr[arr.length-1] + "."
end

# 6. sentence_maker refactored solution

def sentence_maker (arr)

  arr[0] = arr[0].capitalize
  sentence = arr.join(" ")

  return sentence +  "."
end
