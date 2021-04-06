require_relative '../lib/board'
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
          puts 'player one wins this round'
          break
        elsif @game.tie?(board_status)
          puts "It's a Tie , no one wins"
          break
        end

      else
        puts two_outout
        if @game.win?(board_status)
          puts 'player two wins this round'
          break
        elsif @game.tie?(board_status)
          puts "It's a Tie , no one wins"
          break
        end
      end
      turn += 1
    end
  end
end
