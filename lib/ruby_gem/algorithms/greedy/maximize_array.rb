module RubyGem
  module Algorithms
    module Greedy
      class MaximizeArray

        def self.maximumSum(a, k)
          arr = a.sort
          sum = 0
          i = 0

          while k > 0
            if arr[i] >= 0
              k = 0
            else
              arr[i] = (-1) * arr[i]
              k -= 1
            end
            i += 1
          end

          (0..arr.length - 1).each do |j|
            sum += arr[j]
          end

          sum
        end
      end
    end
  end
end

