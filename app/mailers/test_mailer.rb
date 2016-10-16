class TestMailer < ApplicationMailer
  default from: "jay@studysoup.com"

  $emails = []

  def new_elite_notetaker_notification(user='ijeomarisah@gmail.com')
    @user = user

    headers['X-Mailgun-Campaign-Id'] = "u0os1"
    email = mail(to: @user,
                 subject: "Your campaign is complete",
            )

    all_emails = {}

    all_emails[:owner] = @user
    all_emails[:subject] = email.subject
    all_emails[:body] = email.body.encoded

    $emails << all_emails
  end
end
