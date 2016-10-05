class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
   
		
  	  t.belongs_to :role
  	  t.belongs_to :category
  	  t.belongs_to :location  

      t.timestamps
    end
  end
end
