class TicTacToe
  
  WIN_COMBINATIONS = [ #these are winning combinations
    [0, 1, 2]
    [3, 4, 5]
    [6, 7, 8]
    [0, 4, 8]
    [2, 4, 6]
    [0, 3, 6]
    [1, 4, 7]
    [2, 5, 8]
    ]

  def initialize
    @board = Array.new(9, " ") #starting a new board each time class is instanced
  end
  
  def display_board #drawing a board
    puts " #{@board[0]} |"
end