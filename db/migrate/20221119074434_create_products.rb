class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_code
      t.integer :category_id
      t.integer :product_stock_id
      t.string :product_image
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
