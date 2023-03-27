class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
