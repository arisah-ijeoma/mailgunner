class TestMailer < ApplicationMailer
  default from: "jay@studysoup.com"

  $emails = []

  def new_elite_notetaker_notification(user='ijeomarisah@gmail.com')
    # the default user is for testing purposes and can be changed to any working email

    @user = user

    headers['X-Mailgun-Campaign-Id'] = "u0os1"
    email = mail(to: @user, subject: "Welcome to StudySoup")

    all_emails = {}

    all_emails[:owner] = @user
    all_emails[:subject] = email.subject
    all_emails[:body] = email.body.encoded

    $emails << all_emails
  end
end
