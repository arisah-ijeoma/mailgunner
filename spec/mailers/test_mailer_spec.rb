require 'rails_helper'

describe TestMailer, type: :mailer do
  let(:mail) { TestMailer.new_elite_notetaker_notification }

  describe "mail" do
    it "sends a mail" do
      expect { mail.deliver_now }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end

    it "has the correct content" do
      expect(mail.body).to include("Here is a copy of your email")
    end

    it "has the correct subject" do
      expect(mail.subject).to include("Welcome to StudySoup")
    end
  end
end
