require 'ruby_gem'
require 'ruby_gem/algorithms/sort/bubble_sort'

RSpec.describe RubyGem::Algorithms::Sort::BubbleSort do
  it "Array to be sorted" do

    array = [64, 34, 25, 12, 22, 11, 90]
    sorted_array = [11, 12, 22, 25, 34, 64, 90]

    result = RubyGem::Algorithms::Sort::BubbleSort.sort(array)

    expect(result).to eq(sorted_array)
  end
end