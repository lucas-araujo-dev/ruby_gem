require 'ruby_gem'
require 'ruby_gem/algorithms/greedy/minimum_sum_product'

RSpec.describe RubyGem::Algorithms::Greedy::MinimumSumProduct do
  it "minimum sum of Products of two arrays of the same size" do

    a = [2, 3, 4, 5, 4]
    b = [3, 4, 2, 3, 2]
    n = 5
    k = 3

    result = RubyGem::Algorithms::Greedy::MinimumSumProduct.min_product(a, b, n, k)

    expect(result).to eq(25)
  end
end