
class Board
  attr_accessor :board, :win_sequence

  def initialize
    @board = Array.new(9)
    # @board = ['o','o','o',' ',' ',' ',' ',' ',' ']
    @win_sequence =[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    ]
  end

    def display
    " ---+---+---\n"\
  "| #{@board[0]} | #{@board[1]} | #{@board[2]} |\n"\
  " ---+---+---\n"\
  "| #{@board[3]} | #{@board[4]} | #{@board[5]} |\n"\
  " ---+---+---\n"\
  "| #{@board[6]} | #{@board[7]} | #{@board[8]} |\n"\
  ' ---+---+---'\
  end

  def tie?
    @board.all? { |e| e.is_a?(String) }
  end

  def win?(board)
    @win_sequence.any? do |combination|
      combination.all? { |idx| board[idx] == 'x' } || combination.all? { |idx| board[idx] == 'o' }
    end
    
  end


  def update_board(current_player, position, player1, player2)
    @board[position - 1] = current_player == player1 ? player1.symbol : player2.symbol
  end
end

# phone = Board.new

#  if @game.win? == true
#   puts "win"
#  else 
#   break
#  end