require 'present.rb'

RSpec.describe Present do
  it "wraps the value that is passed in and returns once unwrapped" do
    present = Present.new
    present.wrap([6,9])
    expect(present.unwrap).to eq [6,9]
  end

  context "if there are no presents wrapped" do
    it "returns an error message" do
      present = Present.new
      expect{present.unwrap}.to raise_error "No contents have been wrapped."
    end
  end

  context "if you are trying to double wrap presents" do
    it "returns a contents are already wrapped error" do
      present = Present.new
      present.wrap(10)
      expect{present.wrap(10)}.to raise_error "A contents has already been wrapped."
    end
  end
end