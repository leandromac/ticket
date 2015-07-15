class AddDepartamentIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :departament_id, :string
    add_column :users, :integer, :string
  end
end
