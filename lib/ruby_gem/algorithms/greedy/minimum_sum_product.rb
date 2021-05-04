def minproduct(a, b, n, k)

  diff = 0
  res = 0
  temp = 0

  for i in 0..(n - 1)

    # Find product of current elements
    # and update result.
    pro = a[i] * b[i]
    res = res + pro

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
    elsif (pro > 0 && a[i] > 0)
      temp = (a[i] - 2 * k) * b[i]

      # Check if current difference
      # becomes higher than the maximum
      # difference so far.
      d = (pro - temp).abs
      if d > diff
        diff = d
      end
    end

  end
  return res - diff
end

# Driver code
a = [2, 3, 4, 5, 4]
b = [3, 4, 2, 3, 2]
n = 5
k = 3
result = minproduct(a, b, n, k)

p "A: #{a}"
p "B: #{b}"
p "N: #{n}"
p "K: #{k}"
puts "Resultado #{result}"

#A: [2, 3, 4, 5, 4]
#B: [3, 4, 2, 3, 2]
#N: 5
#K: 3
#Resultado 25