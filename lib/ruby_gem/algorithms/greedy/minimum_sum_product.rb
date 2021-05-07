module RubyGem
  module Algorithms
    module Greedy
      class MinimumSumProduct
        def self.min_product(a, b, n, k)

          diff = 0
          res = 0
          temp = 0

          (0..(n - 1)).each do |i|

            # Find product of current elements
            # and update result.
            pro = a[i] * b[i]
            res += pro

            # If both product and b[i] are
            # negative, we must increase value
            # of a[i] to minimize result.
            if pro < 0 && b[i] < 0
              temp = (a[i] + 2 * k) * b[i]

              # If both product and a[i] are
              # negative, we must decrease value
              # of a[i] to minimize result.
            elsif pro < 0 && a[i] < 0
              temp = (a[i] - 2 * k) * b[i]

              # Similar to above two cases
              # for positive product.
            elsif pro > 0 && a[i] < 0
              temp = (a[i] + 2 * k) * b[i]
            elsif pro > 0 && a[i] > 0
              temp = (a[i] - 2 * k) * b[i]

              # Check if current difference
              # becomes higher than the maximum
              # difference so far.
              d = (pro - temp).abs
              diff = d if d > diff
            end

          end
          res - diff
        end
      end
    end
  end
end
