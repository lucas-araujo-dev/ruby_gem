module RubyGem
  module Problems
    module StringProblems
      class PangramAlgorithm
        def self.pangram?(line)
          ('a'..'z').all? { |word| line.downcase.include? (word) }
        end
      end
    end
  end
end