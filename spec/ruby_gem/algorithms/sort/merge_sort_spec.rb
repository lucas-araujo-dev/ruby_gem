require 'ruby_gem'
require 'ruby_gem/algorithms/sort/merge_sort'

RSpec.describe RubyGem::Algorithms::Sort::MergeSort do
  it "Array to be sorted" do

    array = [64, 34, 25, 12, 22, 11, 90]
    l = 0
    r = array.length - 1
    sorted_array = [11, 12, 22, 25, 34, 64, 90]

    result = RubyGem::Algorithms::Sort::MergeSort.sort(array, l, r)

    expect(result).to eq(sorted_array)
  end
end