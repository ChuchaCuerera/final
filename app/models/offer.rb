class Offer < ApplicationRecord
	belongs_to :user
	belongs_to :offer_type
	belongs_to :category
	belongs_to :location
	has_many :skills, through: :offer_skills
	has_many :offer_skills


end
