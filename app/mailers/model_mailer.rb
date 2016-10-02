class ModelMailer < ApplicationMailer
	default from: "gastontk@hotmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
