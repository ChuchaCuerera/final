class Skill < ApplicationRecord
	has_many :user_skills
	has_many :users, through: :user_skills
	has_many :offers, through: :offer_skills
	has_many :offer_skills
end
