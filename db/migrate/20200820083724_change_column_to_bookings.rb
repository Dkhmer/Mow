class ChangeColumnToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :rating, :float
  end
end
