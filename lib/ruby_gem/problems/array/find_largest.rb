def print_largest(arr, arr_size)

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
end

# Driver code
arr = [12, 13, 1, 10, 34, 1]
n = arr.length

print_largest(arr, n)


# Input: arr[] = {10, 4, 3, 50, 23, 90}
# Output: 90, 50, 23

# Input: arr = [12, 13, 1, 10, 34, 1]
# Output: 34, 13, 12