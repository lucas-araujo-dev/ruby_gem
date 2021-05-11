module RubyGem
  module Problems
    module StringProblems
      class CountString
        def self.count(str)

          upper = 0
          lower = 0
          number = 0
          special = 0
          (0..(str.size - 1)).each do |i|

            if str[i] >= 'A' && str[i] <= 'Z'
              upper += 1
            elsif str[i] >= 'a' && str[i] <= 'z'
              lower += 1
            elsif str[i] >= '0' && str[i] <= '9'
              number += 1
            else
              special += 1
            end
          end

          string_information = {}
          string_information[:upper_case_letters] = upper
          string_information[:lower_case_letters] = lower
          string_information[:number] = number
          string_information[:special_caracters] = special

          string_information
        end
      end
    end
  end
end

