class AddAdressToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :adress, :string
  end
end
