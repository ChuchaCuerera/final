class AddProfessionalTitleIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :professional_title, :string
  end
end
