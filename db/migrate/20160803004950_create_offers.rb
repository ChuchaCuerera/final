class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.string :salary

      t.belongs_to :user
      t.belongs_to :offer_type
      t.belongs_to :location
      

      t.timestamps
    end
  end
end
