class AddColumnsToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :email, :string
    add_column :reservations, :lastname, :string
  end
end
