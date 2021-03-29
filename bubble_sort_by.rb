def bubble_sort_by(array)
  n = array.length

  loop do
    sorted = true

    (n - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    break if sorted
  end
  array
end

bubble = [6, 5, 3, 1, 8, 7, 2, 4]

print bubble_sort_by(bubble) { |left, right| left - right }

