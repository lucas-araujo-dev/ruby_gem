require 'ruby_gem'
require 'ruby_gem/algorithms/greedy/minimum_product'

RSpec.describe RubyGem::Algorithms::Greedy::MinimumProduct do
  it "normal array" do

    array = [-1, -1, -2, 4, 3]
    size = array.size

    index = RubyGem::Algorithms::Greedy::MinimumProduct.minProductSubset(array, size)

    expect(index).to eq(-24)
  end
end