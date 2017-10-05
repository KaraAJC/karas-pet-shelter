class CreateAdoptions < ActiveRecord::Migration[5.0]
  def change
    create_table :adoptions do |t|
      t.belongs_to :owner
      t.belongs_to :pet
      t.date :adoption_date
      t.integer :cost
      t.timestamps
    end
  end
end
