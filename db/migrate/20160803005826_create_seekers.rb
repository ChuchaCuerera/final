class CreateSeekers < ActiveRecord::Migration[5.0]
  def change
    create_table :seekers do |t|

    	t.belongs_to :user
    	t.belongs_to :offer
    	t.belongs_to :status

      t.timestamps
    end
  end
end
