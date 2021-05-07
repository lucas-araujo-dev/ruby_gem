module RubyGem
  module Problems
    module Array
      class FindLargest
        def self.print_largest(arr, arr_size)

          first = 0
          second = 0
          third = 0

          # There should be atleast three elements
          if arr_size < 3
            p " Invalid Input "
            return
          end

          third = first = second = -232131312
          (0..(arr.size - 1)).each do |i|

            # If current element is
            # greater than first
            if arr[i] > first

              third = second
              second = first
              first = arr[i]

              # If arr[i] is in between first
              # and second then update second
            elsif arr[i] > second

              third = second
              second = arr[i]

            elsif arr[i] > third
              third = arr[i]
            end
          end
          p "Three largest elements are: #{first}  #{second} #{third}"
          result = [first, second, third]
        end
      end
    end
  end
end