class FixCategoryTable < ActiveRecord::Migration
  def change
    remove_column :categories, :departament
    rename_column :categories, :departaments_id, :departament_id
    rename_column :categories, :categories_id, :category_id
  end
end
