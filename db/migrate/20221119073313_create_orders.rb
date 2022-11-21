class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :total
      t.integer :cart_id
      t.integer :payment_id
      t.integer :quantity

      t.timestamps
    end
  end
end
