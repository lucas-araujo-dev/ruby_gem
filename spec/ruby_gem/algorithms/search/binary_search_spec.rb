require 'ruby_gem'
require 'ruby_gem/algorithms/search/binary_search'

RSpec.describe RubyGem::Algorithms::Search::BinarySearch do
  it "Number present in the array" do

    array = [2, 3, 4, 10, 40]
    num = 4
    first = 0
    last = array.length - 1
    index = RubyGem::Algorithms::Search::BinarySearch.search(array, num, first, last)

    expect(index).to eq(2)
  end

  it "Number is not present in the array" do

    array = [2, 3, 4, 10, 40]
    num = 5
    first = 0
    last = array.length - 1
    index = RubyGem::Algorithms::Search::BinarySearch.search(array, num, first, last)

    expect(index).to eq(-1)
  end


end