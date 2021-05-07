require 'ruby_gem'
require 'ruby_gem/problems/array/reverse_array'

RSpec.describe RubyGem::Problems::Array::ReverseArray do
  it "Given an array, right rotate it by k elements" do

    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    n = arr.length
    k = 3

    result = RubyGem::Problems::Array::ReverseArray.right_rotate(arr, k, n)

    expect(result).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])
  end
end