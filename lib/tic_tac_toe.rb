WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1 
end

def move(board, index, character)
  return board[index] = character
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
   false
   elsif board[index] == "X" || board[index] == "O"
   true
 else
   false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
    elsif index.between?(0,8) 
    true
  end
end


def turn(board) 
  puts "Please make a move 1-9"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character)
    character = current_player
  else
    "Please try again"
    input = gets.strip
  end
    display_board(board)
end

def turn_count(board)
  count = 0 
  board.each do |moves|
    if moves == "X" || moves == "O"
    count += 1
  end
  end
  count
end

def current_player(board)
  if turn_count(board).even?
    return "X"
  else
    "O"
  end
end

