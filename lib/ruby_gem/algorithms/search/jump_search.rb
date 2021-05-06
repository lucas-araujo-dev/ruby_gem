module RubyGem
  module Algorithms
    module Search
      class JumpSearch

        def self.search (array, num)
          size = array.length
          step = Math.sqrt(size).floor

          prev = 0

          while array[([step, size].min) - 1] < num do
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
      end
    end
  end
end
