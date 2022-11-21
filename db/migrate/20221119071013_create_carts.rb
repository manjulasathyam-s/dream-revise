class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.integer :total_items
      t.integer :sub_total
      t.integer :total_unique_items
      t.boolean :available_discounts
      t.string :currency
      t.integer :user_id

      t.timestamps
    end
  end
end
