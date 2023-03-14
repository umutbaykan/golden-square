require 'report_length'

describe "report_length method" do
  it "returns the length of the given string input, including whitespaces" do
    expect(report_length("this will be good")).to eq "This string was 17 characters long."
  end
  it "returns the length of the given string input, including special characters" do
    expect(report_length("oneliners!")).to eq "This string was 10 characters long."
  end
  it "fails you pass in an integer instead of a string" do
    expect{report_length(16)}.to raise_error(NoMethodError)
  end
end