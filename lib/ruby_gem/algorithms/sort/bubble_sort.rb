module RubyGem
  module Algorithms
    module Sort
      class BubbleSort
        def self.sort(array)
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
      end
    end
  end
end

