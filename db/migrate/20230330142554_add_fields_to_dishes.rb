class AddFieldsToDishes < ActiveRecord::Migration[7.0]
  def change
    add_column :dishes, :subtitle, :string
    add_column :dishes, :description, :text
    add_column :dishes, :price, :integer
    add_column :dishes, :bestoff, :boolean
  end
end
