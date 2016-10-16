class MailingsController < ApplicationController
  def send_mail
    TestMailer.new_elite_notetaker_notification.deliver_now
    redirect_to root_path, notice: 'Mail successfully sent'
  end
end
