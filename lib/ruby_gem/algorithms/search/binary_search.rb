def binary_search(array, value, first, last)


  if last < first
    return -1
  else
    mid = (first + last) / 2
    if value == array[mid]
      return mid
    else
      if array[mid] < value
        return binary_search(array, value, mid + 1, last)
      else
        return binary_search(array, value, first, mid - 1)
      end
    end
  end
end

#Inputs
array = Array.new(10) { rand(1..20) }.sort
num = rand(1..20)
first = 0
last = array.length - 1

puts "Array => #{array}"
puts "Numero: #{num}"

result = binary_search(array, num, first, last)

unless result == -1
  puts "O index do numero escolhido eh: #{result}"
else
  puts "O numero nao esta presente no array"
end