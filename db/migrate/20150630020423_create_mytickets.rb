class CreateMytickets < ActiveRecord::Migration
  def change
    create_table :mytickets do |t|
      t.string :id_customer
      t.string :subject
      t.string :departament
      t.string :category
      t.string :category
      t.text :mensage
      t.string :upload
      t.string :status
      t.date :date
      t.date :deadline

      t.timestamps null: false
    end
  end
end
