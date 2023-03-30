class CreateDishesMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes_menus do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
