class CreatePaymentGateways < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_gateways do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
