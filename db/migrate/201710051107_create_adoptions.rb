class CreateAdoptions < ActiveRecord::Migration[5.0]
  def change
    create_table :adoptions do |t|
      t.references :owner_id, null: false
      t.references :pet_id, null: false
      t.date :adotion_date
      t.integer :cost
      t.timestamps
    end
  end
end
