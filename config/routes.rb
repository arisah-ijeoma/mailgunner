Rails.application.routes.draw do
  root 'mailings#index'
  get :send_mail, to: 'mailings#send_mail', as: :send_mail
  get :view_mails, to: 'mailings#view_mails', as: :view_mails
  match 'logs', to: 'stats#logs', via: :get
end
