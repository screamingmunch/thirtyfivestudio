ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "thrityfivestudio.heroku.com",
  :user_name            => "thrityfivestudio35",
  :password             => "eatmenow",
  :authentication       => "plain",
  :enable_starttls_auto => true
}