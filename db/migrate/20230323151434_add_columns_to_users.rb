class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :allergy, :string
    add_column :users, :people_number, :integer
  end
end
