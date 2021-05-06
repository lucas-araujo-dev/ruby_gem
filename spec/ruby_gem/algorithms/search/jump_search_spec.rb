require 'ruby_gem'
require 'ruby_gem/algorithms/search/jump_search'

RSpec.describe RubyGem::Algorithms::Search::JumpSearch do
  it "Number present in the array" do

    array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    num = 55
    index = RubyGem::Algorithms::Search::JumpSearch.search(array, num)

    expect(index).to eq(10)
  end

  it "Number is not present in the array" do

    array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    num = 56
    index = RubyGem::Algorithms::Search::JumpSearch.search(array, num)

    expect(index).to eq(-1)
  end


end