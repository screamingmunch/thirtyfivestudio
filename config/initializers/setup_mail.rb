# mail for development:
if Rails.env.development?
	ActionMailer::Base.smtp_settings = {
	  :address              => "smtp.gmail.com",
	  :port                 => 587,
	  :domain               => "localhost:3000",
	  :user_name            => "thrityfivestudio35",
	  :password             => "eatmenow",
	  :authentication       => "plain",
	  :enable_starttls_auto => true
	}

	ActionMailer::Base.delivery_method = :letter_opener
else
	# mail for once we deploy to heroku (also need to add mailgun addon)
	ActionMailer::Base.smtp_settings = {
	  :port           => ENV['MAILGUN_SMTP_PORT'], 
	  :address        => ENV['MAILGUN_SMTP_SERVER'],
	  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
	  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
	  :domain         => 'thirtyfivestudioapp.herokuapp.com',
	  :authentication => :plain
	}

	ActionMailer::Base.delivery_method = :smtp
end
