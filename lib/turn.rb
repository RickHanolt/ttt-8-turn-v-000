def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, input_to_index(user_input))
  if (board[index] == "" || board[index] == " " || board[index] == "  " || board[index] == "   " || board[index] == nil) && index.between?(0,8)
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  else
    false
  end
end

def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  if valid_move?(board, input_to_index(user_input))
    move(board, input, character = "X")
    display_board
  else
    puts "Invalid move."
    turn(board)
  end
end
