class CreateProfessionalTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
