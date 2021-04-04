class Board
  def initialize
    @board = Array('1'..'9')
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
end
