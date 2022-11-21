class CreateProductStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :product_stocks do |t|
      t.integer :total_stock
      t.integer :unit_price
      t.integer :total_price

      t.timestamps
    end
  end
end
