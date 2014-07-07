class Story < ActiveRecord::Base
	has_many :users
	has_many :activities
end
