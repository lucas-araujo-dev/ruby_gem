require 'ruby_gem'
require 'ruby_gem/problems/string_problems/pangram_algorithm'

RSpec.describe RubyGem::Problems::StringProblems::PangramAlgorithm do
  it "Should return true" do

    phrase = "The quick brown fox jumps over the lazy dog"

    result = RubyGem::Problems::StringProblems::PangramAlgorithm.pangram?(phrase)

    expect(result).to eq(true)
  end
end
