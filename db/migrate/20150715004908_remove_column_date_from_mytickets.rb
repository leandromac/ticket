class RemoveColumnDateFromMytickets < ActiveRecord::Migration
  def change
    remove_column :mytickets, :date
  end
end
