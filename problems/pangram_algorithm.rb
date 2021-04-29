def pangram?(line)
  ('a'..'z').all? { |word| line.downcase.include? (word) }
end

phrase = "The quick brown fox jumps over the lazy dog"
if pangram?(phrase)
  p "#{phrase}  is a pangram"
else
  p "#{phrase}   is not a Pangram"
end