class AddForeingKeyCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :departaments_id, :integer
	add_column :categories, :categories_id, :integer
  end
end
