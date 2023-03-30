class ChangePricesTypesToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :dishes, :price, :decimal
    change_column :menus, :price, :decimal
  end
end
