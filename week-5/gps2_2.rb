# Create a new list
# Creating an empty Hash
# Input: Name your shopping list
# Output: (list name) created
#
# Add an item with a quantity to the list
# Input: Item
# Input: Quanitity
# Output: You have added quantity of item
#
# Remove an item from the list
# Input: Which Item to be removed?
# Output: You have removed (item) from the list
#
# Update quantities for items in your list
# Input: Which item would you like to update?
# Input: What quantity?
# Output: You have added quantity of item
#
# Print the list (Consider how to make it look nice!)
# Input: Asking to print out the list
# Output: Print out list

def create_list
  list_name = {}
  return list_name
end

def add_list (list_name, item, quantity)
  list_name[item] = quantity
  puts "You have added #{quantity} #{item}"
end

def remove_list (list_name, item)
  list_name.delete(item)
  puts "You have removed #{item} from the list"

end

def update_list (list_name, item, quantity)
  list_name[item] = quantity
  puts "You have updated #{item} to #{quantity}"
end

def print_list (list_name)
  list_name.each do |item, quantity|
  puts "#{item}:#{quantity}"
  end
end

add_list(create_list, "Lemonade", "6")
add_list(create_list, "Tomatoes","3")
add_list(create_list, "Onions", "1")
add_list(create_list, "Ice Cream", "4")
remove_list(create_list, "Lemonade")
update_list(create_list, "Ice Cream", "1")
print_list(create_list)



=begin
What did you learn about pseudocode from working on this challenge?
  I learned about how to outline pseudocode by first breaking down the problem into small tasks. The to consider program's input and output and steps to solve each tasks.
What are the tradeoffs of using Arrays and Hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?




=end