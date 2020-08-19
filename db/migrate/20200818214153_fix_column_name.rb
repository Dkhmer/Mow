class FixColumnName < ActiveRecord::Migration[6.0]
  def change
     rename_column :animals, :adress, :address
  end
end
