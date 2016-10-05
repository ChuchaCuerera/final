class User < ApplicationRecord
	before_create :add_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	belongs_to :role
	belongs_to :category
	has_many :offers
	belongs_to :location
	has_many :visits
	has_many :user_skills
	has_many :skills, through: :user_skills
	has_many :seekers


	mount_uploader :avatar, AvatarUploader
	mount_uploader :cv, CvUploader

	def add_role
		self.role=Role.first
	end

end
