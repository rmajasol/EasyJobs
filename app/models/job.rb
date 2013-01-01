class Job < ActiveRecord::Base
  attr_accessible :company_name, :description, :details_link, :title
  belongs_to :user
end
