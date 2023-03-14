require 'password_checker'

RSpec.describe PasswordChecker do
  it "fails with password shorter than 8" do
    pw = PasswordChecker.new
    expect{pw.check("short")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it "passes with a longer password" do
    pw = PasswordChecker.new
    expect(pw.check("longerpass")).to eq true
  end
end