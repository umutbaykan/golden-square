require 'reminder'

describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  it "remind the user to do another task" do
    reminder = Reminder.new("Jason")
    reminder.remind_me_to("Do the laundry")
    expect(reminder.remind()).to eq "Do the laundry, Jason!"
  end

  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
  
end