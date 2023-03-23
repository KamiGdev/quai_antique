class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :phone_number
      t.date :date
      t.time :time
      t.integer :people_number
      t.string :allergy

      t.timestamps
    end
  end
end
