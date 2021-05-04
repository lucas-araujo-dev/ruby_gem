def reverseArray(arr, start, last)
  while (start < last) do
    temp = arr[start]
    arr[start] = arr[last]
    arr[last] = temp
    start += 1
    last -= 1
  end
  return arr;
end

# Function to right rotate arr[]
# of size n by d

def rightRotate(arr, d, n)
  arr = reverseArray(arr, 0, n - 1)
  arr = reverseArray(arr, 0, d - 1)
  arr = reverseArray(arr, d, n - 1)
  return arr
end

# driver code
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

 n = arr.length;
 k = 3;

arr = rightRotate(arr, k, n);

p "Array: #{arr}"


#Input: arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
#k = 3
#Output: 8 9 10 1 2 3 4 5 6 7

#Input: arr[] = {121, 232, 33, 43 ,5}
#k = 2
#Output: 43 5 121 232 333