class User < ActiveRecord::Base
	acts_as_authentic
	attr_accessible :email, :name, :password, :password_confirmation
	has_many :jobs

	# Cuando se llame a @job.user en la vista se ejecutará este método
	def to_s
		name
	end
end
