class FixMyTicketTable < ActiveRecord::Migration
  def change
  	rename_column :mytickets, :departaments_id, :departament_id
  	rename_column :mytickets, :categories_id, :category_id
  	rename_column :mytickets, :customers_id, :customer_id
  end
end
