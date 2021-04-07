class Board
  attr_accessor :board

  def initialize
    @board = Array.new(9)
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

game = Board.new

input = gets.chomp.to_i
arr = []
arr << input
game.board[input - 1] = 'x'
# game.board=(arr)
puts game.display
