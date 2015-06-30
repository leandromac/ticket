class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :emails
      t.string :phone
      t.string :address
      t.string :cpf_cnpj
      t.string :logo
      t.string :website
      t.string :facebook
      t.string :customer_since

      t.timestamps null: false
    end
  end
end
