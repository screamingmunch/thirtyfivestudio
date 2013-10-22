class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable 
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  before_create :check_admin, :authenticate_user!

  private
  def check_admin
  	if self.email == "thrityfivestudio@gmail.com" || self.email == "obertonejeremy@hotmail.com"
  		self.admin = true
  	else
  		self.admin = false
  	end
    true  #before commands cannot have its last return equal to false!
  end


end
