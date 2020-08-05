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

def turn(board, input) 
  puts "Please make a move 1-9"
  input = gets.strip
  input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character)
  else
    "Please try again"
  end
    display_board
end