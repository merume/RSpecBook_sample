require 'spec_helper'

describe User do
  describe "#send_message" do
    context "when the user is under their subscription limit" do
      it "sends a message to another user" do
        zach = User.create!
        david = User.create!
        msg = zach.send_message(
          :title => "Book Update",
          :text => "Beta ll includes great stuff!",
          :recipient => david
        )
        msg.title.should == "Book Update"
        msg.text.should == "Beta ll includes great stuff!"
      end

      it "adds the message to the sender's sent message" do
        zach = User.create!
        david = User.create!
        msg = zach.send_message(
          :title => "Book Update",
          :text => "Beta ll includes great stuff!",
          :recipient => david
        )
        zach.sent_messages.should == [msg]
      end
    end
  end
end
