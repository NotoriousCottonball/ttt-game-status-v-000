# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top_horizontal
  [3,4,5], #middle_horizontal
  [6,7,8], #bottom_horizontal
  [0,3,6], #left_vertical
  [1,4,7], #middle_veritcal
  [2,5,8], #right_vertical
  [0,4,8], #down_diagonal
  [6,4,2] #up_diagonal
  ]
  #Won Method
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  false
end
  
  #Full Method
  def full?(board)
    board.all?{|index| index == "X" || index == "O"}
  end
  #Draw Method
  def draw?(board)
    if !won?(board) && full?(board)
      true 
    else
      false 
    end
  end
  #Over Method
  def over?(board)
    if won?(board) || draw?(board)
      true
    end
  end
  #Winner Method
  def winner(board)
    if won?(board)
      board[won?(board)[2]]
    end
  end
  
    
      