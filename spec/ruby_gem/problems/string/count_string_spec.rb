require 'ruby_gem'
require 'ruby_gem/problems/string_problems/count_string'

RSpec.describe RubyGem::Problems::StringProblems::CountString do
  it "Given an array, right rotate it by k elements" do

    str = '#GeeKs01fOr@gEEks07'

    result = RubyGem::Problems::StringProblems::CountString.count(str)

    expect(result[:upper_case_letters]).to eq(5)
    expect(result[:lower_case_letters]).to eq(8)
    expect(result[:number]).to eq(4)
    expect(result[:special_caracters]).to eq(2)
  end
end

