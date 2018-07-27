class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :address
      t.boolean :claimed, null: false, default: false

      t.timestamps
    end
  end
end
