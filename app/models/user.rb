class User < ActiveRecord::Base
	belongs_to :story
	#validates :phone_number,  presence: true, length: { maximum: 10 }, numericality: { only_integer: true }
end
