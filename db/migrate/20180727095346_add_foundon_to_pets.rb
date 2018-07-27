class AddFoundonToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :found_on, :date
  end
end
