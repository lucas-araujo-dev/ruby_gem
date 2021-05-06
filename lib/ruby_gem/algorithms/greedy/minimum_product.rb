class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

module RubyGem
  module Algorithms
    module Greedy
      class MinimumProduct
        # Function to find maximum
        # product of a subset
        def self.minProductSubset(array, size)

          if size == 1
            return array[0]
          end
          # Find count of negative numbers,
          # count of zeros, maximum valued
          # negative number, minimum valued
          # positive number and product
          # of non-zero numbers
          max_neg = Integer::MIN
          min_pos = Integer::MAX
          count_neg = 0
          count_zero = 0
          prod = 1
          (0..size - 1).each do |i|

            # If number is 0, we don't
            # multiply it with product.
            if array[i] == 0
              count_zero += 1
            end

            # Count negatives and keep
            # track of maximum valued
            # negative.
            if array[i] < 0

              count_neg += 1
              max_neg = [max_neg, array[i]].max
            end

            # Track minimum positive
            # number of array
            if array[i] > 0
              min_pos = [min_pos, array[i]].min
            end

            prod = prod * array[i]
          end

          # If there are all zeros
          # or no negative number
          # present
          if count_zero == size || (count_neg == 0 && count_zero > 0)
            return 0
          end
          # If there are all positive
          if count_neg == 0
            return min_pos
          end
          # If there are even number of
          # negative numbers and count_neg
          # not 0
          if !(count_neg & 1) && count_neg != 0

            # Otherwise result is product of
            # all non-zeros divided by maximum
            # valued negative.
            prod = prod / max_neg
          end

          return prod
        end

      end
    end
  end
end

