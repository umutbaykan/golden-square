require 'string_builder'

describe StringBuilder do
  it "adds few words back to back, returns the length of the sentence including whitespace" do
    stest = StringBuilder.new
    stest.add("Hello. ")
    stest.add("You ok?")
    expect(stest.size).to eq 14
  end
  it "adds few words back to back, returns the sentence" do
    stest = StringBuilder.new
    stest.add("Hi there. ")
    stest.add("How can I help you?")
    expect(stest.output).to eq "Hi there. How can I help you?"
  end
end