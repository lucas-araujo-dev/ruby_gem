module RubyGem
  module Algorithms
    module Sort
      class CountingSort
        def self.sort (array, range)
          count_array = Array.new(range + 1, 0)

          array.each do |item|
            count_array[item] += 1
          end

          (1...count_array.size).each do |index|
            count_array[index] = count_array[index] + count_array[index - 1]
          end

          result = Array.new(array.size)
          for i in 0...array.size do
            count_array[array[i]] -= 1
            result[count_array[array[i]]] = array[i]
          end

          result
        end
      end
    end
  end
end

array_size = 12
range = 15
array = Array.new(array_size) { rand(1..range) }

#Input: [6, 14, 5, 12, 5, 4, 15, 14, 5, 11, 2, 10] => Output: [2, 4, 5, 5, 5, 6, 10, 11, 12, 14, 14, 15]
#Input: [15, 8, 1, 8, 6, 9, 6, 10, 3, 13, 11, 3] => Output: [1, 3, 3, 6, 6, 8, 8, 9, 10, 11, 13, 15]
#Input: [12, 8, 1, 6, 13, 13, 4, 6, 13, 11, 6, 6] => Output: [1, 4, 6, 6, 6, 6, 8, 11, 12, 13, 13, 13]
#Input: [10, 6, 2, 9, 14, 7, 5, 10, 9, 3, 5, 10] => Output: [2, 3, 5, 5, 6, 7, 9, 9, 10, 10, 10, 14]
#Input: [6, 10, 6, 8, 14, 4, 2, 7, 15, 9, 4, 12] => Output: [2, 4, 4, 6, 6, 7, 8, 9, 10, 12, 14, 15]
