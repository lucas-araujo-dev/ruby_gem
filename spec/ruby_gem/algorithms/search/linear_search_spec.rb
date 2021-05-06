require 'ruby_gem'
require 'ruby_gem/algorithms/search/linear_search'

RSpec.describe RubyGem::Algorithms::Search::LinearSearch do
  it "Number present in the array" do

    array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
    num = 110
    index = RubyGem::Algorithms::Search::LinearSearch.search(array, num)

    expect(index).to eq(6)
  end

  it "Number is not present in the array" do

    array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
    num = 175
    index = RubyGem::Algorithms::Search::LinearSearch.search(array, num)

    expect(index).to eq(-1)
  end


end