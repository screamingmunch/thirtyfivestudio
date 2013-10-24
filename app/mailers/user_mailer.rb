class UserMailer < ActionMailer::Base
  default from: "thirtyfivestudio35@gmail.com"


  def welcome_email(user)
  	@user = user
  	@url = "localhost:3000/login"
  	mail(:to => user.email, :subject => "Welcome to thrityfivestudio")
  end

  def form_confirmation(user, params)
    @user = user
    @params = params
    mail(:to => user.email, :subject => "Thank you for submitting your request.")
  end

  def admin_form_confirmation(user, params)
    @user = user
    @params = params
    mail(:to => "thirtyfivestudio35@gmail.com", :subject => "new request")
  end
end
