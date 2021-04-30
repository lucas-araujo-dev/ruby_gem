def count(str)

  upper = 0
  lower = 0
  number = 0
  special = 0
  for i in 0..(str.size - 1)

    if (str[i] >= "A" && str[i] <= "Z")
      upper += 1
    elsif (str[i] >= "a" && str[i] <= "z")
      lower += 1
    elsif (str[i] >= "0" && str[i] <= "9")
      number += 1
    else
      special += 1
    end
  end
  p "Upper case letters: #{upper}"
  p "Lower case letters : #{lower}"
  p "Number : #{number}"
  p "Special characters : #{special}"
end

str = "#GeeKs01fOr@gEEks07"
count(str)

# Input : #GeeKs01fOr@gEEks07
# Output :
# Upper case letters : 5
# Lower case letters : 8
# Numbers : 4
# Special Characters : 2

# Input : *GeEkS4GeEkS*
# Output :
# Upper case letters : 6
# Lower case letters : 4
# Numbers : 1
# Special Characters : 2

