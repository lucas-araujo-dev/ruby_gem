def maximumSum(arr, n, k)

  (1..k + 1).each do |i|
    min = +2147483647
    index = -1

    (0..n-1).each do |j|
      if (arr[j] < min)
        min = arr[j]
        index = j
      end
    end

    break if min == 0
    arr[index] = -arr[index]
  end

  sum = 0
  (0..n-1).each do |i|
    sum += arr[i]
  end

  sum
end

array = [-2, 0, 5, -1, 2]
k = 4
n = array.size

puts "Array => #{array}"
puts "k: #{k}"

result = maximumSum(array, n, k)


puts "Resultado: #{result}"

#Array => [-2, 0, 5, -1, 2]
#k: 4
#Resultado: 10
