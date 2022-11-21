require 'pry'

class TicTacToe

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

  def display_board
    puts " #{@board[0]
    } | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(position, str)
    # input_to_index(position) # not doing anything, throwing off turn method
    # @turns += 1
    @board[position] = str
  end

  def position_taken?(index)
    @board[index] != " "
  end

  def valid_move?(position)
    (position >= 0 && position <= 8) && !position_taken?(position)
  end

  def turn_count
    @board.count { |sq| sq != " " }
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
    puts "Please enter a number between 1 and 9!"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      x = current_player
      move(index, x)
      display_board
    else
      turn # recursion - method calling itself inside itself
    end
  end

end
