class CreateOrders < ActiveRecord::Migration[4.2]
  def change
    create_table :orders do |t|
      t.references :book
      t.string :reference
      t.float :amount
      t.string :state
      t.string :customer_name
      t.string :customer_address

      t.timestamps null: false
    end
  end
end
