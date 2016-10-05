class OfferSkill < ApplicationRecord
  belongs_to :offer_id
  belongs_to :skill_id
end
