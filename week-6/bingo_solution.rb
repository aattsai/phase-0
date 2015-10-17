# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #1. Create an array that holds "b","i","n","g","o" and select a character randomly using method rand. Used method rand to generate a random number betwen 1-100

# Check the called column for the number called.
  #fill in the outline here
  #Use an if/else statement to check for the column called.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #1. Use a loop with a variable going from 0 to 4 to iterate through each rows
  #2. Compare the random number to the number in that column
  #3. If found, replace the position with a 'X'

# Display a column to the console
  #fill in the outline here


# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

=begin

rescue Exception => e

end
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def check

    column = calls.chr
    num = calls.slice(1..2)

    p column + num
    if column == 'b'

      for i in 0...5
        if @bingo_board[i][0].to_s == num
          @bingo_board[i][0] = "X"
        end
      end

    elsif column == 'i'
      for i in 0...5
        if @bingo_board[i][1].to_s == num
          @bingo_board[i][1] = "X"
        end
      end

    elsif column == 'n'
      for i in 0...5
        if @bingo_board[i][2].to_s == num
          @bingo_board[i][2] = "X"
        end
      end

    elsif column == 'g'
      for i in 0...5
        if @bingo_board[i][3].to_s == num
          @bingo_board[i][3] = "X"
        end
      end

    elsif column == 'o'
      for i in 0...5
        if @bingo_board[i][4].to_s == num
          @bingo_board[i][4] = "X"
        end
      end
    end

    for i in 0...5
      p @bingo_board[i]
    end

  end
end

=end
# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def check

    column = calls.chr
    num = calls.slice(1..2)

    p column + num
    case column
    when 'b'
      @bingo_board.each {|rows| if rows.to_s.include?(num)
          @bingo_board.map! {|rows, columns| columns = 'X'} }


    when 'i'
      for i in 0...5
        if @bingo_board[i][1].to_s.include?(num)
          @bingo_board[i][1] = 'X'
        end
      end

    when 'n'
      for i in 0...5
        if @bingo_board[i][2].to_s.include?(num)
          @bingo_board[i][2] = 'X'
        end
      end

    when'g'
      for i in 0...5
        if @bingo_board[i][3].to_s.include?(num)
          @bingo_board[i][3] ='X'
        end
      end

    when 'o'
      for i in 0...5
        if @bingo_board[i][4].to_s.include?(num)
          @bingo_board[i][4] = 'X'
        end
      end
    end

    @bingo_board.each {|rows| p rows}

  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

def calls
  letter = ['b','i','n','g','o']
  return letter[rand(4)] + rand(1-100).to_s
end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check

#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => The outline was already provided, so it was not difficult to break down the problem into small steps. However, I still find it easier to begin coding first before pseudocoding. I guess I need to work on my pseudocoding style more.
#What are the benefits of using a class for this challenge?
# => It allows variables to be passed around different methods.
#How can you access coordinates in a nested array?
# =>You use multiple brackets to access elements in a nested array.
#What methods did you use to access and modify the array?
# =>I used .include? to access the array in my refactored version
#How did you determine what should be an instance variable versus a local variable?
# => If I need to use the variable across methods, then a instance variable is needed.
#What do you feel is most improved in your refactored solution?
# => I don't feel that my refactored solution is an improvement. Maybe I will work on a different version when I have time.