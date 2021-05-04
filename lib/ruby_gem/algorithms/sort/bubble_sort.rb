def bubble_sort(array)
  size = array.size
  return array if size <= 1

  loop do
    swapped = false

    (size - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array = Array.new(10) { rand(1..20) }

puts "Array => #{array}"

result = bubble_sort(array)

puts "Sorted Array => #{result}"
