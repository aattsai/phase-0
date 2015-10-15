#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

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
    puts "Hello, #{@name}! How wonderful to see you today."
  end

end

greetings = Greetings.new
greetings.hello.name

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
