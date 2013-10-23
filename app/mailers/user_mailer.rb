class UserMailer < ActionMailer::Base
  default from: "thirtyfivestudio@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "localhost:3000/login"
  	mail(:to => user.email, :subject => "Welcome to thrityfivestudio")
  end

  def submit_confirmation(user)
  end

  def admin_request_submitted(user)
  end
end
