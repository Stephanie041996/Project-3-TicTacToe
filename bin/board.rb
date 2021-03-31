def validate
  move = []
  input = 0
  3.times do
    puts 'enter number'
    input = gets.chomp
    if move.include?(input)
      puts 'already there'
    else
      move << input
    end
  end
  move
end

puts validate
