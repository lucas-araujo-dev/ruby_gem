def jump_search (array, num)
  size = array.length
  step = Math.sqrt(size).floor

  prev = 0

  while array[([step,size].min)-1] < num do
    prev = step

    step += Math.sqrt(size).floor

    return -1 if prev >= size
  end

  while array[prev] < num do
    prev += 1

    return -1 if prev == [step, size].min
  end

  if array[prev] == num
    return prev.to_i
  end

  return -1
end

array = Array.new(10) { rand(1..20) }.sort
num = rand(1..20)


puts "Array => #{array}"
puts "Numero: #{num}"

result = jump_search(array, num)

unless result == -1
  puts "O index do numero escolhido eh: #{result}"
else
  puts "O numero nao esta presente no array"
end