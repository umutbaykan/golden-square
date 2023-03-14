require 'counter'

describe Counter do
  it "adds 10, 5, 8 and returns the result 23" do
    ctest = Counter.new
    ctest.add(10)
    ctest.add(5)
    ctest.add(8)
    expect(ctest.report).to eq "Counted to 23 so far."
  end
  it "adds multiple integers from an array and returns sum" do
    ctest = Counter.new
    array = [4,2,7,11]
    array.each {|x| ctest.add(x)}
    expect(ctest.report).to eq "Counted to 24 so far."
  end
end