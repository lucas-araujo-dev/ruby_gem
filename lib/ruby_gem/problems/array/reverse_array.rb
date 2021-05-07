module RubyGem
  module Problems
    module Array
      class ReverseArray
        def self.reverse_array(arr, start, last)
          while (start < last) do
            temp = arr[start]
            arr[start] = arr[last]
            arr[last] = temp
            start += 1
            last -= 1
          end
          return arr
        end

        def self.right_rotate(arr, d, n)
          arr = self.reverse_array(arr, 0, n - 1)
          arr = self.reverse_array(arr, 0, d - 1)
          arr = self.reverse_array(arr, d, n - 1)
          return arr
        end
      end
    end
  end
end


