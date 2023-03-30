class RenameFieldsInDishes < ActiveRecord::Migration[7.0]
  def change
    rename_column :dishes, :moment, :category
    rename_column :dishes, :name, :title
  end
end


