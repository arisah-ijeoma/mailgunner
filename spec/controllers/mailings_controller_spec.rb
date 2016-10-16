require 'rails_helper'

describe MailingsController, type: :controller do
  describe "redirect" do
    it "redirects correctly after sending the mail" do
      get :send_mail
      expect(response).to redirect_to(root_path)
    end
  end
end
