require 'ruby_gem'
require 'ruby_gem/algorithms/sort/counting_sort'

RSpec.describe RubyGem::Algorithms::Sort::CountingSort do
  it "Array to be sorted" do

    array = [6, 14, 5, 12, 5, 4, 15, 14, 5, 11, 2, 10]
    range = 15

    sorted_array = [2, 4, 5, 5, 5, 6, 10, 11, 12, 14, 14, 15]

    result = RubyGem::Algorithms::Sort::CountingSort.sort(array, range)

    expect(result).to eq(sorted_array)
  end
end