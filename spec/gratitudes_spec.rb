require 'gratitudes'

describe Gratitudes do
  it "adds up gratitudes in a list of array, joins that array at the end of a prewritten format" do
    gtest = Gratitudes.new
    gtest.add("health")
    gtest.add("family")
    expect(gtest.format).to eq "Be grateful for: health, family"
  end
  it "adds up gratitudes in a list of array, joins that array at the end of a prewritten format" do
    gtest = Gratitudes.new
    gtest.add("London Overground")
    gtest.add("London Underground")
    expect(gtest.format).to eq "Be grateful for: London Overground, London Underground"
  end
end
