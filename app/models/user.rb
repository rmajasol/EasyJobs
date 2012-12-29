class User < ActiveRecord::Base
	acts_as_authentic
  attr_accessible :email, :name, :password, :password_confirmation


end
