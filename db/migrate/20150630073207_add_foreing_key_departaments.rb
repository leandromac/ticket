class AddForeingKeyDepartaments < ActiveRecord::Migration
  def change
  	add_column :mytickets, :customers_id, :integer
  	add_column :mytickets, :departaments_id, :integer
  	add_column :mytickets, :categories_id, :integer
  end
end
