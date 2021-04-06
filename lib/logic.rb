require_relative '../lib/board'


#   def display
#     " ---+---+---\n"\
#   "| #{@board[0]} | #{@board[1]} | #{@board[2]} |\n"\
#   " ---+---+---\n"\
#   "| #{@board[3]} | #{@board[4]} | #{@board[5]} |\n"\
#   " ---+---+---\n"\
#   "| #{@board[6]} | #{@board[7]} | #{@board[8]} |\n"\
#   ' ---+---+---'\
#   end

class UserInterface
  attr_accessor :player_one, :player_two
  

  def initialize
    @board = Board.new
    @game = Board.new
    @arr = []
    @player_one = ''
    @player_two = ''
    @cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def num_check(move)
    if @arr.include?(move)
      puts 'Enter a Valid number thats not already played'
      false
    elsif !(1..9).include? move
      puts 'Enter a number between 1 and 9'
      false
    else
      @arr << move
      true

    end
  end

  

  def one_output
    # puts @board.display
    puts " its #{@player_one} turn"

      select1 = false
      while select1 == false
      input = gets.chomp.to_i
      @game.board[input - 1] = 'x'
      
      
      select1 = num_check(input) 
      
    
  end
 
    puts @game.display
  end

  def two_outout
    # puts @board.display

    puts "its #{@player_two} turn"

    select1 = false
    while select1 == false
      input = gets.chomp.to_i
      @game.board[input - 1] = 'o'
      select1 = num_check(input)
    end
   
    puts @game.display
  end

  

  def players
    turn = 0
    board_status = @game.board
    while turn < 9
      if turn.even?
     
        puts one_output
        if @game.win?(board_status)
          puts "player one wins this round"
          break
        end
        # winner = @game.win?(@game.board)
        # if winner == true
        #   puts "PLAYER ONE IS winner winner "
        #   break
        # end



      else
        puts two_outout
        if @game.win?(board_status)
          puts "player two wins this round"
          break
        end
      end
      turn += 1
    end
  end
  # def win_check 
  # #  board = [3, 4, 5]
  #   if WINNING_COMBOS[0] == @game.board
  #     puts 'you win'
  #   else  WINNING_COMBOS[1] == @game.board
  #     puts 'i win'
  #   end
  
  # end
end



# WINNING_COMBOS = [
#     [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
#     [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
#   ].freeze
# end

# game = Board.new

# input = gets.chomp.to_i
# arr = []
# arr << input
# board[0, 1, 2] = 'x'
# game.board[0, 1, 2]
# puts game.win_check
