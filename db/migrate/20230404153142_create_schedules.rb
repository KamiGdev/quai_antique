class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.time :lunch_starts_at
      t.time :lunch_ends_at
      t.time :dinner_starts_at
      t.time :dinner_ends_at

      t.timestamps
    end
  end
end
