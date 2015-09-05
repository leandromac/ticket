class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :myticket
      t.references :user
      t.text :description
      t.string :upload
    end
  end
end
