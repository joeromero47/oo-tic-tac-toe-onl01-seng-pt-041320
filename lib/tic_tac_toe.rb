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
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input) #this method is taking a string(input) and converting it to interger(.to_i) then it deducts 1 so it corredsponds to array index
    index = input.to_i - 1
  end
  
  def move(index, token="X") #puts players token (x or o) at array (@board) index. Default is X
    @board[index] = token
  end
  
  def position_taken?(index) #checks if position on board is taken based on argument passed(index)
    !(@board[index].nil? || @board[index] == " " )
  end
  
  def valid_move?(position) #checks if the position within game bounds (btw 0 and 8) and position is empty
    position.between?(0,8) && @board[position] == " " ? true : false
  end
  
  def turn_count #determines number of turns based on how many fields on the board are occupied (each turn 1 field occupied)
   turn = 0
    @board.each do |index|
    if index == "X" || index == "O"
      turn += 1
    end
    end
  return turn
end
  end
  
  def current_player #based on turn count and the fact that X is always odd and 0 is even determines whose turn it is
    player = turn_count
    player %2 == 0 ? player = "X" : player = "O"
  end
  
  def turn #makes a turn by getting a user input and making a turn and displaying a board or running this method again if the turn is not valid
    puts "Please choose a number 1-0: "
    user_input = gets.chomp
    index = input_to_index(user_input)
    if valid_move?(index)
      player_token = current_player
      move(index, player_token)
      display_board
    else
      turn
    end
  end
  def won? #this is messed up ???
    WIN_COMBINATIONS.each do |combo|
      index_0 = combo[0]
      index_1 = combo[1]
      index_2 = combo[2]
      
      position_1 = @board[index_0]
      position_2 = @board[index_1]
      position_3 = @board[index_2]
      
      if position_1 == "X" && position_2 == "X" && position_3 = "X"
      
      
end