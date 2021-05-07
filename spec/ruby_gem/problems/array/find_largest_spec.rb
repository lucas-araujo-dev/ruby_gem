require 'ruby_gem'
require 'ruby_gem/problems/array/find_largest'

RSpec.describe RubyGem::Problems::Array::FindLargest do
  it "Array with all distinct elements, find the largest three elements" do

    arr = [12, 13, 1, 10, 34, 1]
    n = arr.length

    result = RubyGem::Problems::Array::FindLargest.print_largest(arr, n)

    expect(result).to eq([34, 13, 12])
  end
end