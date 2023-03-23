class RemoveUserFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reservations, :user, null: false, foreign_key: true
  end
end
