class RemoveMenuFromDishes < ActiveRecord::Migration[7.0]
  def change
    remove_column :dishes, :menu_id
  end
end
