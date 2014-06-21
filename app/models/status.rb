class Status < ActiveRecord::Base
	
	# Relationships
	belongs_to :user	

	# Validations
	validates :context, presence: true, 
							  length: { minimum: 2 }

	validates :user_id, presence: true
	
end
