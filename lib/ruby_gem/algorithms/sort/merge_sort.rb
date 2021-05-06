module RubyGem
  module Algorithms
    module Sort
      class MergeSort

        # Ruby program for Merge Sort */

        # Merges two subarrays of arr[].
        # First subarray is arr[l..m]
        # Second subarray is arr[m+1..r]
        def self.merge(arr, l, m, r)

          # Find sizes of two subarrays to be merged
          n1 = m - l + 1
          n2 = r - m

          l_array = Array.new(n1)
          r_array = Array.new(n2)

          # Copy data to temp arrays
          #
          (0..n1).each do |i|
            l_array[i] = arr[l + i]
          end

          (0..n2).each do |j|
            r_array[j] = arr[m + 1 + j]
          end
          # Merge the temp arrays

          # Initial indexes of first and second subarrays
          i = 0
          j = 0

          # Initial index of merged subarry array
          k = l
          while i < n1 && j < n2 do
            if l_array[i] <= r_array[j]
              arr[k] = l_array[i]
              i += 1
            else
              arr[k] = r_array[j]
              j += 1
            end
            k += 1
          end

          # Copy remaining elements of l_array[] if any */
          while i < n1 do
            arr[k] = l_array[i]
            i += 1
            k += 1
          end

          # Copy remaining elements of r_array[] if any */
          while j < n2 do
            arr[k] = r_array[j]
            j += 1
            k += 1
          end
          arr
        end

        # Main function that sorts arr[l..r] using
        # merge()
        def self.sort(arr, l, r)

          if l < r
            # Find the middle point
            m = l + (r - l) / 2

            # Sort first and second halves
            arr = sort(arr, l, m)
            arr = sort(arr, m + 1, r)

            # Merge the sorted halves
            arr = merge(arr, l, m, r)
          end
          arr
        end
      end
    end
  end
end