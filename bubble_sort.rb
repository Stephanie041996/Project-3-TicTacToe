bubble = [6, 5, 3, 1, 8, 7, 2, 4]

def bubble_sort(array)
  n = array.length

  loop do
    sorted = true

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    break if sorted
  end
  array
end

print bubble_sort(bubble)
