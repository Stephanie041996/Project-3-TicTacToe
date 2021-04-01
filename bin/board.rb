# def validate
#   move = []
#   input = 0
#   3.times do
#     puts 'enter number'
#     input = gets.chomp
#     if move.include?(input)
#       puts 'already there'
#     else
#       move << input
#     end
#   end
#   move
# end

# puts validate

puts 'player 1 its your turn '

def play(input)
  moves = [10]

  if moves.include?(input)
    puts ' try again'
    false
  else

    moves << input
    true
  end
end

turn = false
while turn == false
  input = gets.chomp.to_i
  turn = play(input)

end
