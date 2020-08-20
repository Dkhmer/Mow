class AddCityToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :city, :string
  end
end
