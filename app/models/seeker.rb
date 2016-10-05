class Seeker < ApplicationRecord
	belongs_to :user
	belongs_to :offer
	belongs_to :status
end
