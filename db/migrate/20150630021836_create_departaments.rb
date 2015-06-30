class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
