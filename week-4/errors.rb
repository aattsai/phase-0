# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpeted end-of-input
# 5. Where is the error in the code?
# => At the end of line 170 where the period is.
# 6. Why did the interpreter give you this error?
# => It is missing an end at the end of this method.

# --- error -------------------------------------------------------

def south_park
end

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => Undefined local varioable or method
# 3. What additional information does the interpreter provide about this type of error?
# => name error
# 4. Where is the error in the code?
# => line 36
# 5. Why did the interpreter give you this error?
# => It has not been defined as a method nor a variable

# --- error -------------------------------------------------------

def cartman()
end


# 1. What is the line number where the error occurs?
# => 52
# 2. What is the type of error message?
# => Undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => no method error
# 4. Where is the error in the code?
# => line 52
# 5. Why did the interpreter give you this error?
# => It has not been defined as a method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# => 69
# 2. What is the type of error message?
# => Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 0 argument)
# 4. Where is the error in the code?
# => line 73
# 5. Why did the interpreter give you this error?
# => The method is not looking for an argument, but it was provided on line 73.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("hello")

# 1. What is the line number where the error occurs?
# => line 88
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1)
# 4. Where is the error in the code?
# => line 92
# 5. Why did the interpreter give you this error?
# => It is missing an argument on line 92.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Adam")

# 1. What is the line number where the error occurs?
# => 109
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2)
# 4. Where is the error in the code?
# => 113
# 5. Why did the interpreter give you this error?
# => It is looking for 2 arguments, but only 1 was provided on line 113.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 128
# 2. What is the type of error message?
# => Type error
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coered into Fixnum
# 4. Where is the error in the code?
# => line 128
# 5. Why did the interpreter give you this error?
# => * is method for Fixnum, but a string was given.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5


# 1. What is the line number where the error occurs?
# => 143
# 2. What is the type of error message?
# => Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => 143
# 5. Why did the interpreter give you this error?
# => you can't divide a number by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#159
# 2. What is the type of error message?
#Load error
# 3. What additional information does the interpreter provide about this type of error?
#Cannot load such file
# 4. Where is the error in the code?
#159
# 5. Why did the interpreter give you this error?
#Thie method cannot load a .md file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
/
Which error was the most difficult to read?
  The ones provided in this example are all relatively easy to spot. The most confusing one, to me, would e Fixnum errors.
How did you figure out what the issue with the error was?
  Just by looking at the code and figure out what seems to be missing.
Were you able to determine why each error message happened based on the code?
  Yes. For the most part.
When you encounter errors in your future code, what process will you follow to help you debug?
  To located it with the line number on the command, then analyze the code knowing what the error is about and try to find the bug.