require 'add_five'

RSpec.describe "add_five method" do
    it 'adds 3 to 5 and returns 8' do
        result = add_five(3)
        expect(result).to eq 8
    end
end