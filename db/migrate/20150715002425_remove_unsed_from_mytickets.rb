class RemoveUnsedFromMytickets < ActiveRecord::Migration
  def change
    remove_column :mytickets, :category, :string
    remove_column :mytickets, :departament, :string
  end
end
