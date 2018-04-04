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
    WIN_COMBINATIONS.each do |win_combo|
      if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
        win_combo
      elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
        return win_combo
      end
    end
    false
  end
      