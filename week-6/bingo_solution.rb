# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #1. Create an array that holds "b","i","n","g","o" and select a character randomly using method rand. Used method rand to generate a random number betwen 1-100

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

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
      @bingo_board.map! {|i|}
      for i in 0...5
        if @bingo_board[i][0].to_s == num
          @bingo_board[i][0] = "X"
        end
      end

    when 'i'
      for i in 0...5
        if @bingo_board[i][1].to_s == num
          @bingo_board[i][1] = "X"
        end
      end

    when 'n'
      for i in 0...5
        if @bingo_board[i][2].to_s == num
          @bingo_board[i][2] = "X"
        end
      end

    when'g'
      for i in 0...5
        if @bingo_board[i][3].to_s == num
          @bingo_board[i][3] = "X"
        end
      end

    when 'o'
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
