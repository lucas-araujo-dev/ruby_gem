#Inputs

def linear_search(array, num)
  puts "Array => #{array}"
  puts "Numero: #{num}"

  array.each_with_index do |item, index|
    return index if item == num
  end
  return -1
end

puts `clear`

#Inputs
array = Array.new(10) { rand(1..20) }
num = rand(1..20)

result = linear_search(array, num)

unless result == -1
  puts "O index do numero escolhido eh: #{result}"
else
  puts "O numero nao esta presente no array"
end