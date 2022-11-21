class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :payment_customer_id
      t.integer :payment_gateway_id
      t.string :payment_desc
      t.string :payment_amount
      t.datetime :date

      t.timestamps
    end
  end
end
