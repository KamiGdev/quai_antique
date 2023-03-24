class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :time
      t.references :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
