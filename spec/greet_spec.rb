require 'greet'

RSpec.describe "greet method" do
    it "greets the name of the person passed into method" do
        expect(greet("Jason")).to eq "Hello, Jason!"
    end
    it "greets Nicole" do
        expect(greet("Nicole")).to eq "Hello, Nicole!"
    end
end