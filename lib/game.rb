class UserInterface
  attr_accessor :player_one, :player_two, :game

  def initialize
    @arr = []
    @game = Board.new
    @player_one = ''
    @player_two = ''
  end

  def num_check(move)
    if @game.board.include?(move)
      'Enter a Valid number thats not already played'
      false
    elsif !(1..9).include? move
      'Enter a number between 1 and 9'
      false
    else
      @game.board[move - 1] = 'x'

      @game.board << move
      true

    end
  end

  def num_check2(move)
    if @game.board.include?(move)
      'Enter a Valid number thats not already played'
      false
    elsif !(1..9).include? move
      'Enter a number between 1 and 9'
      false
    else
      @game.board[move - 1] = 'o'

      @game.board << move
      true

    end
  end

  def one_output
    puts " It's #{@player_one} turn"

    select1 = false
    while select1 == false
      input = gets.chomp.to_i
      @game.board[input - 1] = 'x'

      select1 = num_check(input)

    end

    puts @game.display
  end

  def two_outout
    puts "It's #{@player_two} turn"

    select1 = false
    while select1 == false
      input = gets.chomp.to_i
      @game.board[input - 1] = 'o'
      select1 = num_check2(input)

    end

    puts @game.display
  end

  def status
    @game.board
  end
end
