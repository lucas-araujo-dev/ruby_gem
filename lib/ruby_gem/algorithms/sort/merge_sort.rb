# Ruby program for Merge Sort */

#Merges two subarrays of arr[].
# First subarray is arr[l..m]
# Second subarray is arr[m+1..r]
def merge(arr, l, m, r)

  # Find sizes of two subarrays to be merged
  n1 = m - l + 1
  n2 = r - m

  l_array = Array.new(n1)
  r_array = Array.new(n2)

  #Copy data to temp arrays
  #
  for i in 0..n1
    l_array[i] = arr[l + i]
  end

  for j in 0..n2
    r_array[j] = arr[m + 1 + j]
  end
  # Merge the temp arrays

  # Initial indexes of first and second subarrays
  i = 0
  j = 0

  # Initial index of merged subarry array
  k = l
  while (i < n1 && j < n2) do
    if (l_array[i] <= r_array[j])
      arr[k] = l_array[i]
      i += 1
    else
      arr[k] = r_array[j]
      j += 1
    end
    k += 1
  end

  # Copy remaining elements of l_array[] if any */
  while (i < n1) do
    arr[k] = l_array[i]
    i += 1
    k += 1
  end

  # Copy remaining elements of r_array[] if any */
  while (j < n2) do
    arr[k] = r_array[j]
    j += 1
    k += 1
  end
  arr
end

# Main function that sorts arr[l..r] using
# merge()
def sort(arr, l, r)

  if (l < r)
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

# Driver code

array_size = 12
range = 15
array = Array.new(array_size) { rand(1..range) }

p "#Array: #{array} "

result = sort(array, 0, array.length - 1)

p "#Array ordenado: #{result}"

#Array: [12, 9, 8, 5, 4, 11, 9, 12, 15, 7, 5, 7] => Array ordenado: [4, 5, 5, 7, 7, 8, 9, 9, 11, 12, 12, 15]
#Array: [13, 7, 5, 10, 5, 2, 11, 2, 3, 8, 10, 12] => Array ordenado: [2, 2, 3, 5, 5, 7, 8, 10, 10, 11, 12, 13]
#Array: [12, 12, 14, 7, 13, 14, 3, 3, 5, 9, 14, 5] => Array ordenado: [3, 3, 5, 5, 7, 9, 12, 12, 13, 14, 14, 14]