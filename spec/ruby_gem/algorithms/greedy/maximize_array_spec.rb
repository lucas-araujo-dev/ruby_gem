require 'ruby_gem'
require 'ruby_gem/algorithms/greedy/maximize_array'

RSpec.describe RubyGem::Algorithms::Greedy::MaximizeArray do
  it "4 negations" do

    array = [-2, 0, 5, -1, 2]
    k = 4
    num = array.size

    index = RubyGem::Algorithms::Greedy::MaximizeArray.maximumSum(array, k)

    expect(index).to eq(10)
  end

  it "3 negations" do

    array = [-3, -2, -1, 5, 6].sort
    k = 3
    num = array.size

    index = RubyGem::Algorithms::Greedy::MaximizeArray.maximumSum(array, k)

    expect(index).to eq(17)
  end

end