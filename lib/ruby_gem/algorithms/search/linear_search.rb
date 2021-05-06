module RubyGem
  module Algorithms
    module Search
      class LinearSearch
        def self.search(array, num)
          puts "Array => #{array}"
          puts "Numero: #{num}"

          array.each_with_index do |item, index|
            return index if item == num
          end
          return -1
        end
      end
    end
  end
end
