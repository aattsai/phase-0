#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1.5] hours on this challenge.

class NameData
  attr_accessor :name
  def initialize
    @name = "Aaron"
  end

end


class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello, #{@name.name}! How wonderful to see you today."
  end

end

greets = Greetings.new
greets.hello

# Reflection
#Release 1
#What are these methods doing?
# =>The methods take in new input and replace instance variable with the provided input
#How are they modifying or returning the value of instance variables?
# =>By assigning instance variables to the new arguments provided

#Release 2
#What changed between the last release and this release?
# => An attr_reader is added to replace method what_is_age.
#What was replaced?
# => method what_is_age.
#Is this code simpler than the last?
# => Yes, it is.

#Release 3
#What changed between the last release and this release?
# => An attr_writer is added to replace method change_my_age
#What was replaced?
# => change_my_age
#Is this code simpler than the last?
# => yes

#Release 6
#What is a reader method?
# => Reader method allows the value of variable to be access outside of class.
#What is a writer method?
# => Writer method allows the value of variable to be modified outside of class
#What do the attr methods do for you?
  # => It holds a variable to allow access across classes.
#Should you always use an accessor to cover your bases? Why or Why not?
# => Not always, because sometimes you don't want all your variables to be changeable. It could cause problems in debugging or could compromise the security of data.
#What is confusing to you about these methods?
# => These methods are not confusing.