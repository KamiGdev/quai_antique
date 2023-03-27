class AddBestoffToMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :bestoff, :boolean
  end
end
