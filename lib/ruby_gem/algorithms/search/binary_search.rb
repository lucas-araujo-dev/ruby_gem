module RubyGem
  module Algorithms
    module Search
      class BinarySearch

        def self.search(array, value, first, last)

          if last < first
            return -1
          else
            mid = (first + last) / 2
            if value == array[mid]
              return mid
            else
              if array[mid] < value
                return search(array, value, mid + 1, last)
              else
                return search(array, value, first, mid - 1)
              end
            end
          end
        end
      end
    end
  end
end
