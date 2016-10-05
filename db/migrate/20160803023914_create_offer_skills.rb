class CreateOfferSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_skills do |t|
      t.belongs_to :offer_id, foreign_key: true
      t.belongs_to :skill_id, foreign_key: true

      t.timestamps
    end
  end
end
