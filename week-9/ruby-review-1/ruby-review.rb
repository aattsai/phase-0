# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [1] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   #creates an array stores individual charactor of the string passed as argument
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   #Use a hash to store the deciphered key for each character
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#  #Iterate through the array that contains all characters
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     #Iterate key of cipher
#     cipher.each_key do |y| # What is #each_key doing here?
#       #When both iteration return a identical value
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         #The key value is added to the solution array
#         decoded_sentence << cipher[y]
#         found_match = true
#         #Breaks out of iteration of cipher key
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     #If character from code is not part of the cipher key, it is added
#     #to the solution array as is.
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   #This joins all the elements of the array together and returns a string
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)

  decoder = [];
  coded_message.downcase.each_byte do |code|
    if code > 96 && code <123
      decoder << (((code-97)-4) %26 + 97).chr
    elsif code == 64|| code == 35 || code == 36 || code == 37|| code == 94 || code == 38|| code == 42
      decoder << " "
    else
      decoder << code.chr
    end
  end
  decoded_sentence = decoder.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review in this challenge?
#   I reviewed on iteration of string and using various Ruby methods.
# What is still confusing to you about Ruby?
#   I am still not very confident about Object Oriented Design.
# What are you going to study to get more prepared for Phase 1?
#   I will read the book on object oriented design and work on a few more ruby review challenges.