require "check_codeword"

RSpec.describe "check codeword method" do
  it "returns a wrong message when passed the wrong word" do
    expect(check_codeword("pig")).to eq "WRONG!"
  end
  it "returns a close message when passed in a word that starts with h and ends with e" do
    expect(check_codeword("hope")).to eq "Close, but nope."
  end
  it "returns a wrong message when passed in a word that starts with h" do
    expect(check_codeword("howdy")).to eq "WRONG!"
  end
  it "returns a correct message when passed in the right codeword" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
end