WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom Row
  [0,3,6], # Left column
  [1,4,7], # Middle column 
  [2,5,8], # Right column
  [0,4,8], # Diagonal starting top left
  [6,4,2]  # Diagonal starting bottom left
]

# from display_board
b1 = @board[0]
b2 = @board[1]
b3 = @board[2]
b4 = @board[3]
b5 = @board[4]
b6 = @board[5]
b7 = @board[6]
b8 = @board[7]
# b9 = @board[8]

# notes
game = TicTacToe.new
game.display_board
game.turn_count

# gets - user input (position 1-9)

    # puts " X | X | X "
    # puts "-----------"
    # puts " X | X | X "
    # puts "-----------"
    # puts " X | X | X "
    # puts @board