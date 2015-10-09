#Pseudocode
=begin
-First I will create a method that receives an array that represents the roster of the entire class.
-Then I will shuffle the array
-Then I will group three people in an array within the origin outer array

=end


def acct_group (roster_array)

  ran_arr = roster_array.shuffle
  for i in 3..5
    if ran_arr.size % i == 0
      ran_arr.each_slice(i) {|x| p x}
    end
  end
end


Copperheads = ["Joshua Abrams",
"Syema Ailia",
"Kris Bies",
"Alexander Blair",
"Andrew Blum",
"Jacob Boer",
"Steven Broderick",
"Ovi Calvo",
"Danielle Cameron",
"Eran Chazan",
"Jonathan Chen",
"Un Choi",
"Kevin Corso",
"Eric Dell Aringa",
"Eunice Do",
"Ronny Ewanek",
"John Paul Chaufan Field",
"Eric Freeburg",
"Jeffrey George",
"Jamar Gibbs",
"Paul Gaston Gouron",
"Gabrielle Gustilo",
"Marie-France Han",
"Noah Heinrich",
"Jack Huang",
"Max Iniguez",
"Mark Janzer",
"Michael Jasinski",
"Lars Johnson",
"Joshua Kim",
"James Kirkpatrick",
"Christopher Lee",
"Isaac Lee",
"Joseph Marion",
"Kevin Mark",
"Bernadette Masciocchi",
"Bryan Munroe",
"Becca Nelson",
"Van Phan",
"John Polhill",
"Jeremy Powell",
"Jessie Richardson",
"David Roberts",
"Armani Saldana",
"Chris Savage",
"Parminder Singh",
"Kyle Smith",
"Aaron Tsai",
"Douglas Tsui",
"Deanna Warren",
"Peter Wiebe",
"Daniel Woznicki",
"Jay Yee",
"Nicole Yee",
"Bruno Zatta"]

acct_group(Copperheads)

=begin
Reflection
What was the most interesting and most difficult part of this challenge?
  The challenging part for me was to find a method that can subdivide the array in multiples. I was able to find each_slice that seems to work well.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  I think I am. Initially it was difficult to break down a problem into small steps before attempting at coding it. But in this challenge, I found that by breaking the problem down in pseudocode helped me a lot.
Was your approach for automating this task a good solution? What could have made it even better?
  I think it was a good solution.
What data structure did you decide to store the accountability groups in and why?
  I stored it in array. because I don't need to provide a name for each accountability group
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I used a few new Ruby methods in my initial solution such as shuffle and each_slice. I haven't had the chance to refactor it because I am not sure if I can finish all the assignments on time. Maybe I will come back to this.
=end