# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won(board)
  # compare the indices of combo at a time to the board - use position_taken helper method
  # if there's a match, check that values are equal (all X's or all O's)

  WIN_COMBINATIONS.detect |combination|
    position_taken?(board, combination[0]) && position_taken(board, combination[1]) &&
    position_taken(board, combination[2])

end
